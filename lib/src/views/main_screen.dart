import 'dart:html';

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: MainScreenBody(),
    );
  }
}

class MainScreenBody extends StatelessWidget {
  const MainScreenBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final gray = Color(0xFFBEC2C2);

    return Container(
      width: maxWidth,
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {}, 
                  icon: Image.asset("assets/LogofaviconLittle.png")
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}