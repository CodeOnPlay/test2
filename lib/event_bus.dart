import 'package:event_bus/event_bus.dart';

EventBus eventBus = new EventBus();

class Info{
  late String msg;
  Info(this.msg);
}