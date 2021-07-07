import 'package:flutter/material.dart';

class PlayingSound extends StatelessWidget {
  
  String url;
  String title;
  String subTitle;
  String imagePath;


  PlayingSound({ Key? key, required this.url, required this.title, required this.subTitle, required this.imagePath }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Theme.of(context).accentColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 250.0,
              width: 250.0,
              margin: EdgeInsets.symmetric(vertical: 15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(200)),
                image: DecorationImage(image: AssetImage(this.imagePath), fit: BoxFit.cover),
              ),
            ),
            Text(this.title),
            Text(this.subTitle),
            Container(
            
            ),
            Row(
              children: [
                IconButton(
                  icon: Image.asset("assets/icons/random.png"), 
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.fast_rewind_rounded),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.pause_circle_filled_rounded),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.fast_forward_rounded),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset("assets/icons/replay.png"),
                  onPressed: () {},
                )
              ],
            )
          ]
        ),
      ),
    );
  }
}