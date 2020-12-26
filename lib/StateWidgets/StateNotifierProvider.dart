
import 'package:flutter_riverpod/flutter_riverpod.dart';

final numberNotifierProvider = StateNotifierProvider((ref)=> NumberNotifier());

class NumberNotifier extends StateNotifier<int>{
  
  NumberNotifier() : super(0);
  void increment()=>state++;
  void decrement()=>state--;
  void setValue(int newValue)=>state=newValue;

}
