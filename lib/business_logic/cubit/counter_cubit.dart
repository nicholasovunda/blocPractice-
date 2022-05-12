import 'package:bloc/bloc.dart';
import 'package:bloc_practice/business_logic/cubit/internet_cubit.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  final InternetCubit internetCubit;
  CounterCubit({required this.InternetCubit})
      : super(CounterState(
          counterValue: 0,
        ));

  void increment() => emit(
      CounterState(counterValue: state.counterValue + 1, wasIncremented: true));

  void decrement() => emit(CounterState(
      counterValue: state.counterValue - 1, wasIncremented: false));
}
