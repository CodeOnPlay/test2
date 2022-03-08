import 'package:event_bus/event_bus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'event_bus.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late final stream;
 String msg = '';
@override
  void initState() {
  stream = eventBus.on<Info>().listen((event) {
    setState(() {
      msg = event.msg;
    });
  });
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
  stream.cancel();
  // TODO: implement dispose
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
           mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text('接收到的消息$msg'),
            TextButton(onPressed: (){
              eventBus.fire(Info('111111111111111'));
            }, child: Text('发送消息'))
          ],
        ),
      ),
    );
  }
}
