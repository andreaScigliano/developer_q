import 'package:flutter_riverpod/flutter_riverpod.dart';

final myProgressProvider = StateNotifierProvider((ref)=>ProgressState());


class ProgressState extends StateNotifier<double> {

  ProgressState() : super(0);
  Stream<int> streaming = Stream<int>.periodic(Duration(milliseconds: 1),((int value)=>value++));

  Future<void> progress() async
  {
    // ignore: unused_local_variable
    await for (int i in streaming)
    {
      if(state>=1)
      {
        break;
      }
      print(state);
      state +=.001;
    }
  }
}