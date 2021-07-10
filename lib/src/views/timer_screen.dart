import 'dart:async';

import 'package:dribbly/src/components/NavigationDrawerWidget.dart';
import 'package:dribbly/src/components/OwnAppBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OwnAppBar(),
      body: TimerScreenBody(),
      drawer: NavigationDrawerWidget(),
    );
  }
}

class TimerScreenBody extends StatefulWidget {
  TimerScreenBody({ Key? key }) : super(key: key);

  @override
  _TimerScreenBodyState createState() => _TimerScreenBodyState();
}

class _TimerScreenBodyState extends State<TimerScreenBody> {
  Duration _duration = Duration(minutes: 45);
  Duration _currentDuration = Duration();
  Timer? timer;

  @override
  void initState() {
    super.initState();
    
    // startTimer();
    reset();
  }

  void reset() {
    setState(() => _currentDuration = _duration);
  }

  void retrieveTime() {
    final retrieveSeconds = -1;

    setState(() {
    final seconds = _currentDuration.inSeconds + retrieveSeconds;

      if(seconds < 0) {
        timer?.cancel();
      } else {
        _currentDuration = Duration(seconds: seconds);
      }

    });

  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) => retrieveTime());
  }

  void stopTimer({bool resets = true}) {
    if(resets) {
      reset();
    }

    setState(() => timer?.cancel());

  }


  Widget buildTimer() {
    String twoDigits(int n) => n.toString().padLeft(2, '0'); 
    final minutes = twoDigits(_currentDuration.inMinutes.remainder(60));
    final seconds = twoDigits(_currentDuration.inSeconds.remainder(60));

    return Text(
      '$minutes:$seconds',
      style: GoogleFonts.alegreyaSans(fontSize: 38, color: Colors.white),
    );
  }

  Widget buildControlButtons() {
    final isRunning = timer == null ? false : timer!.isActive;

    return isRunning ? 
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            onPressed: () {
              if (isRunning) {
                stopTimer(resets: false);
              }
            }, 
            child: Text("Stop"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
              textStyle: MaterialStateProperty.all(GoogleFonts.alegreyaSans(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500)),
              elevation: MaterialStateProperty.all(4),
              fixedSize: MaterialStateProperty.all(Size(150, 60)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))))
            ),
          ),
          ElevatedButton(
            onPressed: stopTimer,
            child: Text("Cancel"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
              textStyle: MaterialStateProperty.all(GoogleFonts.alegreyaSans(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500)),
              elevation: MaterialStateProperty.all(4),
              fixedSize: MaterialStateProperty.all(Size(150, 60)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))))
            ),
          )
        ],
      ) :
      ElevatedButton(
        onPressed: () {
          startTimer();
        }, 
        child: Text("Start Now"),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
          textStyle: MaterialStateProperty.all(GoogleFonts.alegreyaSans(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500)),
          elevation: MaterialStateProperty.all(4),
          fixedSize: MaterialStateProperty.all(Size(220, 60)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))))
        ),
      ); 
      
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Theme.of(context).accentColor),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Meditation",
              style: GoogleFonts.alegreya(fontSize: 35, color: Colors.white),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Text(
                "Guided by a short introductory course, start trying meditation.", 
                textAlign: TextAlign.center,
                style: GoogleFonts.alegreyaSans(color: Colors.white70, fontSize: 20)
              )
            ),
            Image.asset("assets/inkTimer.png"),
            Container(
              padding: EdgeInsets.only(top: 45, bottom: 20),
              child: buildTimer()
            ),
            buildControlButtons()
          ],
        ),
      )
    );
  }
}