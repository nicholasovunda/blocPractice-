import 'package:bloc_practice/business_logic/cubit/counter_cubit.dart';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterCubit', () {
    late CounterCubit counterCubit;
    setUp(() {
      counterCubit = CounterCubit();
    });
    tearDown(() {
      counterCubit.close();
    });

    test('the initial state for the cubit is CounterState(counterValue:0)', () {
      expect(counterCubit.state, CounterState(counterValue: 0));
    });

    blocTest(
        'the cubit should emit a CounterState(counterValue: 1, wasIncrement: true) when cubit.increment is called',
        build: () => counterCubit,
        act: (cubit) => counterCubit.increment(),
        expect: () => [CounterState(counterValue: 1, wasIncremented: true)]);
    blocTest(
        'the cubit should emit a CounterState(counterValue: -1, wasIncrement: false) when cubit.decrement is called',
        build: () => counterCubit,
        act: (cubit) => counterCubit.decrement(),
        expect: () => [CounterState(counterValue: -1, wasIncremented: false)]);
  });
}
