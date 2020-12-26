import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// generalizzare la dimensione dello schermo 
final dimensionNotifier = StateNotifierProvider((ref)=> DimensionNotifier());

class DimensionNotifier extends StateNotifier<Size>{
  DimensionNotifier() : super(null);
  void setValue(value) => state = value;
}
