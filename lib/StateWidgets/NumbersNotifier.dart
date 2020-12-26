import 'package:flutter_riverpod/all.dart';

final indexProvider = StateNotifierProvider((ref)=>IndexNotifier());

class IndexNotifier extends StateNotifier<int>{
  IndexNotifier() : super(0);
  setIndex(value)=>state=value;
}