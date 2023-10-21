import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  static const int _counter = 0;

  CounterBloc() : super(const CounterState(counter: _counter)) {
    on<IncrementCounterPressed>(_onIncremented);
    on<DecrementCounterPressed>(_onDecremented);
    on<ResetCounterPressed>(_onReset);
  }

  void _onIncremented(
      IncrementCounterPressed event, Emitter<CounterState> emit) {
    emit(CounterState(counter: state.counter + 1));
  }

  void _onDecremented(
      DecrementCounterPressed event, Emitter<CounterState> emit) {
    emit(CounterState(counter: state.counter - 1));
  }

  void _onReset(ResetCounterPressed event, Emitter<CounterState> emit) {
    emit(const CounterState(counter: _counter));
  }
}
