import 'package:cached_network_image/cached_network_image.dart';
import 'package:ditonton/common/constants.dart';
import 'package:ditonton/domain/entities/genre.dart';
import 'package:ditonton/domain/entities/tvseries_detail.dart';
import 'package:ditonton/presentation/bloc/tvseries/tvseries_detail/series_detail_bloc.dart';
import 'package:ditonton/presentation/bloc/tvseries/tvseries_recommendation/series_recommendation_bloc.dart';
import 'package:ditonton/presentation/bloc/tvseries/tvseries_watchlist/series_watchlist_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TvSeriesDetailPage extends StatefulWidget {
  static const ROUTE_NAME = '/tvseries-detail';

  final int id;
  TvSeriesDetailPage({required this.id});

  @override
  _TvSeriesDetailPageState createState() => _TvSeriesDetailPageState();
}

class _TvSeriesDetailPageState extends State<TvSeriesDetailPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () {
        context.read<SeriesDetailBloc>().add(FetchSeriesDetail(widget.id));
        context
            .read<SeriesRecommendationBloc>()
            .add(FetchSeriesRecommendation(widget.id));
        context
            .read<SeriesWatchlistBloc>()
            .add(LoadWatchlistStatusSeries(widget.id));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final isAddedWatchlist = context.select<SeriesWatchlistBloc, bool>(
      (value) {
        if (value.state is InsertSeriesWatchlist) {
          return (value.state as InsertSeriesWatchlist).status;
        }
        return false;
      },
    );

    return Scaffold(
      body: BlocBuilder<SeriesDetailBloc, SeriesDetailState>(
        builder: (context, state) {
          if (state is SeriesDetailLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is SeriesDetailHasData) {
            return SafeArea(
              child: DetailContent(state.result, isAddedWatchlist),
            );
          } else if (state is SeriesDetailError) {
            return Text(state.msg);
          } else {
            return Container();
          }
        },
      ),
    );
  }
}

class DetailContent extends StatefulWidget {
  final TvSeriesDetail detail;
  late bool isAddedWatchlist;

  DetailContent(this.detail, this.isAddedWatchlist);

  @override
  State<DetailContent> createState() => _DetailContentState();
}

class _DetailContentState extends State<DetailContent> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        CachedNetworkImage(
          imageUrl:
              'https://image.tmdb.org/t/p/w500${widget.detail.posterPath}',
          width: screenWidth,
          placeholder: (context, url) => Center(
            child: CircularProgressIndicator(),
          ),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
        Container(
          margin: const EdgeInsets.only(top: 48 + 8),
          child: DraggableScrollableSheet(
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: kRichBlack,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                ),
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 16,
                  right: 16,
                ),
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      child: SingleChildScrollView(
                        controller: scrollController,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.detail.name,
                              style: kHeading5,
                            ),
                            ElevatedButton(
                              onPressed: () async {
                                if (!widget.isAddedWatchlist) {
                                  context.read<SeriesWatchlistBloc>().add(
                                      InsertWatchlistSeries(widget.detail));
                                } else {
                                  context.read<SeriesWatchlistBloc>().add(
                                      DeleteWatchlistSeries(widget.detail));
                                }

                                String msg = '';
                                String insertMsg = 'Added to Watchlist';
                                String removeMsg = 'Removed from Watchlist';

                                final state =
                                    BlocProvider.of<SeriesWatchlistBloc>(
                                            context)
                                        .state;

                                if (state is InsertSeriesWatchlist) {
                                  if (state.status == false) {
                                    msg = insertMsg;
                                  } else {
                                    msg = removeMsg;
                                  }
                                } else {
                                  if (!widget.isAddedWatchlist) {
                                    msg = insertMsg;
                                  } else {
                                    msg = removeMsg;
                                  }
                                }

                                if (msg == insertMsg || msg == removeMsg) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text(msg)));
                                } else {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        content: Text(msg),
                                      );
                                    },
                                  );
                                }

                                setState(
                                  () {
                                    widget.isAddedWatchlist =
                                        !widget.isAddedWatchlist;
                                  },
                                );
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  widget.isAddedWatchlist
                                      ? Icon(Icons.check)
                                      : Icon(Icons.add),
                                  Text('Watchlist'),
                                ],
                              ),
                            ),
                            Text(
                              _showGenres(widget.detail.genres),
                            ),
                            Text(
                              _showDuration(widget.detail.episodeRunTime[0]),
                            ),
                            Row(
                              children: [
                                RatingBarIndicator(
                                  rating: widget.detail.voteAverage / 2,
                                  itemCount: 5,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: kMikadoYellow,
                                  ),
                                  itemSize: 24,
                                ),
                                Text('${widget.detail.voteAverage}')
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text(
                                    '${widget.detail.numberOfSeasons} Seasons'),
                                Text(
                                    '${widget.detail.numberOfEpisodes} Total Episodes')
                              ],
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Overview',
                              style: kHeading6,
                            ),
                            Text(
                              widget.detail.overview,
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Recommendations',
                              style: kHeading6,
                            ),
                            BlocBuilder<SeriesRecommendationBloc,
                                SeriesRecommendationState>(
                              builder: (context, state) {
                                if (state is SeriesRecommendationLoading) {
                                  return Center(
                                    child: CircularProgressIndicator(),
                                  );
                                } else if (state is SeriesRecommendationError) {
                                  return Text(state.msg);
                                } else if (state
                                    is SeriesRecommendationHasData) {
                                  return Container(
                                    height: 150,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        final series = state.result[index];
                                        return Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.pushReplacementNamed(
                                                context,
                                                TvSeriesDetailPage.ROUTE_NAME,
                                                arguments: series.id,
                                              );
                                            },
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(8),
                                              ),
                                              child: CachedNetworkImage(
                                                imageUrl:
                                                    'https://image.tmdb.org/t/p/w500${series.posterPath}',
                                                placeholder: (context, url) =>
                                                    Center(
                                                  child:
                                                      CircularProgressIndicator(),
                                                ),
                                                errorWidget:
                                                    (context, url, error) =>
                                                        Icon(Icons.error),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                      itemCount: state.result.length,
                                    ),
                                  );
                                } else {
                                  return Container();
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        color: Colors.white,
                        height: 4,
                        width: 48,
                      ),
                    ),
                  ],
                ),
              );
            },
            // initialChildSize: 0.5,
            minChildSize: 0.25,
            // maxChildSize: 1.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: kRichBlack,
            foregroundColor: Colors.white,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        )
      ],
    );
  }

  String _showGenres(List<Genre> genres) {
    String result = '';
    for (var genre in genres) {
      result += genre.name + ', ';
    }

    if (result.isEmpty) {
      return result;
    }

    return result.substring(0, result.length - 2);
  }

  String _showDuration(int runtime) {
    final int hours = runtime ~/ 60;
    final int minutes = runtime % 60;

    if (hours > 0) {
      return '${hours}h ${minutes}m';
    } else {
      return '${minutes}m';
    }
  }
}
