part of 'counter_bloc.dart';

@immutable
sealed class CounterState {
  final int counter;

  const CounterState({required this.counter});
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
  const ResetCounter({required super.counter});
}
