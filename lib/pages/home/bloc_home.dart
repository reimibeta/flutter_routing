import 'package:flutter_routing/provider/bloc_provider.dart';
import 'package:rxdart/rxdart.dart';

class BlocHomePage extends BlocBase {
  final _selectIndex = new BehaviorSubject<int>();

  Stream<int> get selectIndex => _selectIndex.stream;

  Function(int) get sinkSelectIndex => _selectIndex.sink.add;

  int get getIndex => _selectIndex.value;

  @override
  void dispose() {
    _selectIndex.close();
  }
}
