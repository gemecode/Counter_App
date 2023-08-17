import 'package:counter_app/controller/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>
{

  CounterCubit() : super(CounterInitialState());

  // to be easily when use this app_cubit in many place
  static CounterCubit get(context) => BlocProvider.of(context);
  int counter=1;

  void minus()
  {
    counter--;
    emit(CounterMinusState(counter));

  }

  void plus()
  {
    counter++;
    emit(CounterPlusState(counter));

  }


}