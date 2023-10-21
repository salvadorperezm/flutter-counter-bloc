part of 'counter_bloc.dart';

final class CounterState extends Equatable {
  final int counter;

  const CounterState({required this.counter});

  @override
  List<Object?> get props => [counter];
}
