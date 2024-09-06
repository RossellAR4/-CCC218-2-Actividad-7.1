import 'dart:async';
import 'package:listatareas_app/classes/tareas.dart';


class Streams {
  final _controler = StreamController<List<Tareas>>();

  Stream<List<Tareas>> get counterStream => _controler.stream;
  
   void startCounter(List<Tareas> x) {
    _controler.sink.add(x);
  }
  void dispose(){
    _controler.close();
  }
}