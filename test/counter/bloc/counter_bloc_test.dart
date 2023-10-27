import 'package:flutter_bloc_counter/counter/bloc/counter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('CounterBloc initial state is CounterState(counter: 0)', () {
    expect(CounterBloc().state, const CounterState(counter: 0));
  });
}