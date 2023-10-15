part of 'counter_bloc.dart';

@immutable
sealed class CounterState extends Equatable {
  final int counter;

  const CounterState({required this.counter});

  @override
  List<Object?> get props => [counter];
}

final class CounterInitial extends CounterState {
  const CounterInitial({required super.counter});
}

final class IncrementCounter extends CounterState {
  const IncrementCounter({required super.counter});
}

final class DecrementCounter extends CounterState {
  const DecrementCounter({required super.counter});
}

final class ResetCounter extends CounterState {
  const ResetCounter() : super(counter: 0);
}
