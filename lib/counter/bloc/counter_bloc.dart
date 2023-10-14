import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  static const int _counter = 0;

  CounterBloc() : super(const CounterInitial(counter: _counter)) {
    on<CounterEvent>((event, emit) {
      on<CounterStarted>(_onStarted);
      on<IncrementCounterPressed>(_onIncremented);
      on<DecrementCounterPressed>(_onDecremented);
      on<ResetCounterPressed>(_onReset);
    });
  }

  void _onStarted(CounterStarted event, Emitter<CounterState> emit) {
    emit(const CounterInitial(counter: _counter));
  }

  void _onIncremented(
      IncrementCounterPressed event, Emitter<CounterState> emit) {
    emit(IncrementCounter(counter: state.counter + 1));
  }

  void _onDecremented(
      DecrementCounterPressed event, Emitter<CounterState> emit) {
    emit(DecrementCounter(counter: state.counter - 1));
  }

  void _onReset(ResetCounterPressed event, Emitter<CounterState> emit) {
    emit(const ResetCounter(counter: _counter));
  }
}
