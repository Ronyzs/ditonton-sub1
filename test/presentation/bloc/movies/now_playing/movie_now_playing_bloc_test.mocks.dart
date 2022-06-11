// Mocks generated by Mockito 5.1.0 from annotations
// in ditonton/test/presentation/bloc/movies/now_playing/movie_now_playing_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i6;
import 'package:ditonton/common/failure.dart' as _i8;
import 'package:ditonton/domain/entities/movie.dart' as _i9;
import 'package:ditonton/domain/repositories/movie_repository.dart' as _i5;
import 'package:ditonton/domain/usecases/get_now_playing_movies.dart' as _i2;
import 'package:ditonton/presentation/bloc/movie/movie_list/movie_now_playing_bloc.dart'
    as _i3;
import 'package:flutter_bloc/flutter_bloc.dart' as _i7;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeGetNowPlayingMovies_0 extends _i1.Fake
    implements _i2.GetNowPlayingMovies {}

class _FakeMovieNowPlayingState_1 extends _i1.Fake
    implements _i3.MovieNowPlayingState {}

class _FakeStreamSubscription_2<T> extends _i1.Fake
    implements _i4.StreamSubscription<T> {}

class _FakeMovieRepository_3 extends _i1.Fake implements _i5.MovieRepository {}

class _FakeEither_4<L, R> extends _i1.Fake implements _i6.Either<L, R> {}

/// A class which mocks [MovieNowPlayingBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieNowPlayingBloc extends _i1.Mock
    implements _i3.MovieNowPlayingBloc {
  MockMovieNowPlayingBloc() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.GetNowPlayingMovies get getNowPlayingMovies => (super.noSuchMethod(
      Invocation.getter(#getNowPlayingMovies),
      returnValue: _FakeGetNowPlayingMovies_0()) as _i2.GetNowPlayingMovies);
  @override
  _i3.MovieNowPlayingState get state => (super.noSuchMethod(
      Invocation.getter(#state),
      returnValue: _FakeMovieNowPlayingState_1()) as _i3.MovieNowPlayingState);
  @override
  _i4.Stream<_i3.MovieNowPlayingState> get stream =>
      (super.noSuchMethod(Invocation.getter(#stream),
              returnValue: Stream<_i3.MovieNowPlayingState>.empty())
          as _i4.Stream<_i3.MovieNowPlayingState>);
  @override
  bool get isClosed =>
      (super.noSuchMethod(Invocation.getter(#isClosed), returnValue: false)
          as bool);
  @override
  void add(_i3.MovieNowPlayingEvent? event) =>
      super.noSuchMethod(Invocation.method(#add, [event]),
          returnValueForMissingStub: null);
  @override
  void onEvent(_i3.MovieNowPlayingEvent? event) =>
      super.noSuchMethod(Invocation.method(#onEvent, [event]),
          returnValueForMissingStub: null);
  @override
  _i4.Stream<_i7.Transition<_i3.MovieNowPlayingEvent, _i3.MovieNowPlayingState>>
      transformEvents(
              _i4.Stream<_i3.MovieNowPlayingEvent>? events,
              _i7.TransitionFunction<_i3.MovieNowPlayingEvent,
                      _i3.MovieNowPlayingState>?
                  transitionFn) =>
          (super.noSuchMethod(
              Invocation.method(#transformEvents, [events, transitionFn]),
              returnValue:
                  Stream<_i7.Transition<_i3.MovieNowPlayingEvent, _i3.MovieNowPlayingState>>.empty()) as _i4
              .Stream<_i7.Transition<_i3.MovieNowPlayingEvent, _i3.MovieNowPlayingState>>);
  @override
  void emit(_i3.MovieNowPlayingState? state) =>
      super.noSuchMethod(Invocation.method(#emit, [state]),
          returnValueForMissingStub: null);
  @override
  void on<E extends _i3.MovieNowPlayingEvent>(
          _i7.EventHandler<E, _i3.MovieNowPlayingState>? handler,
          {_i7.EventTransformer<E>? transformer}) =>
      super.noSuchMethod(
          Invocation.method(#on, [handler], {#transformer: transformer}),
          returnValueForMissingStub: null);
  @override
  _i4.Stream<_i3.MovieNowPlayingState> mapEventToState(
          _i3.MovieNowPlayingEvent? event) =>
      (super.noSuchMethod(Invocation.method(#mapEventToState, [event]),
              returnValue: Stream<_i3.MovieNowPlayingState>.empty())
          as _i4.Stream<_i3.MovieNowPlayingState>);
  @override
  void onTransition(
          _i7.Transition<_i3.MovieNowPlayingEvent, _i3.MovieNowPlayingState>?
              transition) =>
      super.noSuchMethod(Invocation.method(#onTransition, [transition]),
          returnValueForMissingStub: null);
  @override
  _i4.Stream<_i7.Transition<_i3.MovieNowPlayingEvent, _i3.MovieNowPlayingState>>
      transformTransitions(
              _i4.Stream<_i7.Transition<_i3.MovieNowPlayingEvent, _i3.MovieNowPlayingState>>?
                  transitions) =>
          (super.noSuchMethod(
                  Invocation.method(#transformTransitions, [transitions]),
                  returnValue:
                      Stream<_i7.Transition<_i3.MovieNowPlayingEvent, _i3.MovieNowPlayingState>>.empty())
              as _i4.Stream<
                  _i7.Transition<_i3.MovieNowPlayingEvent, _i3.MovieNowPlayingState>>);
  @override
  _i4.Future<void> close() => (super.noSuchMethod(Invocation.method(#close, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.StreamSubscription<_i3.MovieNowPlayingState> listen(
          void Function(_i3.MovieNowPlayingState)? onData,
          {Function? onError,
          void Function()? onDone,
          bool? cancelOnError}) =>
      (super.noSuchMethod(
              Invocation.method(#listen, [
                onData
              ], {
                #onError: onError,
                #onDone: onDone,
                #cancelOnError: cancelOnError
              }),
              returnValue:
                  _FakeStreamSubscription_2<_i3.MovieNowPlayingState>())
          as _i4.StreamSubscription<_i3.MovieNowPlayingState>);
  @override
  void onChange(_i7.Change<_i3.MovieNowPlayingState>? change) =>
      super.noSuchMethod(Invocation.method(#onChange, [change]),
          returnValueForMissingStub: null);
  @override
  void addError(Object? error, [StackTrace? stackTrace]) =>
      super.noSuchMethod(Invocation.method(#addError, [error, stackTrace]),
          returnValueForMissingStub: null);
  @override
  void onError(Object? error, StackTrace? stackTrace) =>
      super.noSuchMethod(Invocation.method(#onError, [error, stackTrace]),
          returnValueForMissingStub: null);
}

/// A class which mocks [GetNowPlayingMovies].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetNowPlayingMovies extends _i1.Mock
    implements _i2.GetNowPlayingMovies {
  MockGetNowPlayingMovies() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.MovieRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeMovieRepository_3()) as _i5.MovieRepository);
  @override
  _i4.Future<_i6.Either<_i8.Failure, List<_i9.Movie>>> execute() =>
      (super.noSuchMethod(Invocation.method(#execute, []),
          returnValue: Future<_i6.Either<_i8.Failure, List<_i9.Movie>>>.value(
              _FakeEither_4<_i8.Failure, List<_i9.Movie>>())) as _i4
          .Future<_i6.Either<_i8.Failure, List<_i9.Movie>>>);
}
