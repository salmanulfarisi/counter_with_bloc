import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState()) {
    on<Increament>((event, emit) {
      final currentStateValue = state.count;
      final incremenValue = currentStateValue + 1;
      return emit(CounterState(count: incremenValue));
    });
    on<Decrement>((event, emit) {
      final currentStateValue = state.count;
      final decrementValue = currentStateValue - 1;
      return emit(CounterState(count: decrementValue));
    });
  }
}
