// Mocks generated by Mockito 5.1.0 from annotations
// in ditonton/test/presentation/bloc/movies/recommendation/movie_recommendation_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i6;
import 'package:ditonton/common/failure.dart' as _i8;
import 'package:ditonton/domain/entities/movie.dart' as _i9;
import 'package:ditonton/domain/repositories/movie_repository.dart' as _i5;
import 'package:ditonton/domain/usecases/get_movie_recommendations.dart' as _i2;
import 'package:ditonton/presentation/bloc/movie/movie_recommendation/movie_recommendation_bloc.dart'
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

class _FakeGetMovieRecommendations_0 extends _i1.Fake
    implements _i2.GetMovieRecommendations {}

class _FakeMovieRecommendationState_1 extends _i1.Fake
    implements _i3.MovieRecommendationState {}

class _FakeStreamSubscription_2<T> extends _i1.Fake
    implements _i4.StreamSubscription<T> {}

class _FakeMovieRepository_3 extends _i1.Fake implements _i5.MovieRepository {}

class _FakeEither_4<L, R> extends _i1.Fake implements _i6.Either<L, R> {}

/// A class which mocks [MovieRecommendationBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieRecommendationBloc extends _i1.Mock
    implements _i3.MovieRecommendationBloc {
  MockMovieRecommendationBloc() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.GetMovieRecommendations get getMovieRecommendations =>
      (super.noSuchMethod(Invocation.getter(#getMovieRecommendations),
              returnValue: _FakeGetMovieRecommendations_0())
          as _i2.GetMovieRecommendations);
  @override
  _i3.MovieRecommendationState get state =>
      (super.noSuchMethod(Invocation.getter(#state),
              returnValue: _FakeMovieRecommendationState_1())
          as _i3.MovieRecommendationState);
  @override
  _i4.Stream<_i3.MovieRecommendationState> get stream =>
      (super.noSuchMethod(Invocation.getter(#stream),
              returnValue: Stream<_i3.MovieRecommendationState>.empty())
          as _i4.Stream<_i3.MovieRecommendationState>);
  @override
  bool get isClosed =>
      (super.noSuchMethod(Invocation.getter(#isClosed), returnValue: false)
          as bool);
  @override
  void add(_i3.MovieRecommendationEvent? event) =>
      super.noSuchMethod(Invocation.method(#add, [event]),
          returnValueForMissingStub: null);
  @override
  void onEvent(_i3.MovieRecommendationEvent? event) =>
      super.noSuchMethod(Invocation.method(#onEvent, [event]),
          returnValueForMissingStub: null);
  @override
  _i4.Stream<_i7.Transition<_i3.MovieRecommendationEvent, _i3.MovieRecommendationState>>
      transformEvents(
              _i4.Stream<_i3.MovieRecommendationEvent>? events,
              _i7.TransitionFunction<_i3.MovieRecommendationEvent,
                      _i3.MovieRecommendationState>?
                  transitionFn) =>
          (super.noSuchMethod(
                  Invocation.method(#transformEvents, [events, transitionFn]),
                  returnValue:
                      Stream<_i7.Transition<_i3.MovieRecommendationEvent, _i3.MovieRecommendationState>>.empty())
              as _i4.Stream<_i7.Transition<_i3.MovieRecommendationEvent, _i3.MovieRecommendationState>>);
  @override
  void emit(_i3.MovieRecommendationState? state) =>
      super.noSuchMethod(Invocation.method(#emit, [state]),
          returnValueForMissingStub: null);
  @override
  void on<E extends _i3.MovieRecommendationEvent>(
          _i7.EventHandler<E, _i3.MovieRecommendationState>? handler,
          {_i7.EventTransformer<E>? transformer}) =>
      super.noSuchMethod(
          Invocation.method(#on, [handler], {#transformer: transformer}),
          returnValueForMissingStub: null);
  @override
  _i4.Stream<_i3.MovieRecommendationState> mapEventToState(
          _i3.MovieRecommendationEvent? event) =>
      (super.noSuchMethod(Invocation.method(#mapEventToState, [event]),
              returnValue: Stream<_i3.MovieRecommendationState>.empty())
          as _i4.Stream<_i3.MovieRecommendationState>);
  @override
  void onTransition(
          _i7.Transition<_i3.MovieRecommendationEvent,
                  _i3.MovieRecommendationState>?
              transition) =>
      super.noSuchMethod(Invocation.method(#onTransition, [transition]),
          returnValueForMissingStub: null);
  @override
  _i4.Stream<_i7.Transition<_i3.MovieRecommendationEvent, _i3.MovieRecommendationState>>
      transformTransitions(
              _i4.Stream<_i7.Transition<_i3.MovieRecommendationEvent, _i3.MovieRecommendationState>>?
                  transitions) =>
          (super.noSuchMethod(
                  Invocation.method(#transformTransitions, [transitions]),
                  returnValue:
                      Stream<_i7.Transition<_i3.MovieRecommendationEvent, _i3.MovieRecommendationState>>.empty())
              as _i4.Stream<
                  _i7.Transition<_i3.MovieRecommendationEvent, _i3.MovieRecommendationState>>);
  @override
  _i4.Future<void> close() => (super.noSuchMethod(Invocation.method(#close, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.StreamSubscription<_i3.MovieRecommendationState> listen(
          void Function(_i3.MovieRecommendationState)? onData,
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
                  _FakeStreamSubscription_2<_i3.MovieRecommendationState>())
          as _i4.StreamSubscription<_i3.MovieRecommendationState>);
  @override
  void onChange(_i7.Change<_i3.MovieRecommendationState>? change) =>
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

/// A class which mocks [GetMovieRecommendations].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetMovieRecommendations extends _i1.Mock
    implements _i2.GetMovieRecommendations {
  MockGetMovieRecommendations() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.MovieRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeMovieRepository_3()) as _i5.MovieRepository);
  @override
  _i4.Future<_i6.Either<_i8.Failure, List<_i9.Movie>>> execute(dynamic id) =>
      (super.noSuchMethod(Invocation.method(#execute, [id]),
          returnValue: Future<_i6.Either<_i8.Failure, List<_i9.Movie>>>.value(
              _FakeEither_4<_i8.Failure, List<_i9.Movie>>())) as _i4
          .Future<_i6.Either<_i8.Failure, List<_i9.Movie>>>);
}
