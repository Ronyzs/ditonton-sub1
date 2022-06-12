import 'package:ditonton/presentation/bloc/tvseries/tvseries_top_rated/series_top_rated_bloc.dart';
import 'package:ditonton/presentation/widgets/tvseries_card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopRatedTvSeriesPage extends StatefulWidget {
  static const ROUTE_NAME = '/top-rated-tv-series';

  @override
  _TopRatedTvSeriesPageState createState() => _TopRatedTvSeriesPageState();
}

class _TopRatedTvSeriesPageState extends State<TopRatedTvSeriesPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => context.read<SeriesTopRatedBloc>().add(FetchTopRatedSeriesList()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popular TV Series'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<SeriesTopRatedBloc, SeriesTopRatedState>(
          builder: (context, state) {
            if (state is SeriesTopRatedLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is SeriesTopRatedHasData) {
              final result = state.result;
              return ListView.builder(
                itemBuilder: (context, index) {
                  final series = result[index];
                  return TvSeriesCard(series);
                },
                itemCount: result.length,
              );
            } else if (state is SeriesTopRatedError) {
              return Center(
                key: Key('error_message'),
                child: Text(state.msg),
              );
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
