part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {
  const CounterEvent();
}

final class CounterStarted extends CounterEvent {
  const CounterStarted();
}

final class IncrementCounterPressed extends CounterEvent {
  const IncrementCounterPressed();
}

final class DecrementCounterPressed extends CounterEvent {
  const DecrementCounterPressed();
}

final class ResetCounterPressed extends CounterEvent {
  const ResetCounterPressed();
}
