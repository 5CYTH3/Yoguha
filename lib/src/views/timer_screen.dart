import 'package:dribbly/src/components/OwnAppBar.dart';
import 'package:flutter/material.dart';
class TimerScreen extends StatelessWidget {
  const TimerScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OwnAppBar(),
      body: TimerScreenBody(),
    );
  }
}

class TimerScreenBody extends StatelessWidget {
  const TimerScreenBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("This is a timer"),
      ),
    );
  }
}