import 'package:dribbly/src/components/OwnAppBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayingSound extends StatelessWidget {
  
  String url;
  String title;
  String subTitle;
  String imagePath;


  PlayingSound({ Key? key, required this.url, required this.title, required this.subTitle, required this.imagePath }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OwnAppBar(),
      body: Container(
        decoration: BoxDecoration(color: Theme.of(context).accentColor),
        child: Column(
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
            SizedBox(height: 20,),
            Text(
              this.title,
              style: GoogleFonts.alegreya(color: Colors.white, fontSize: 35),
            ),
            Text(
              this.subTitle,
              style: GoogleFonts.alegreyaSans(color: Colors.white70, fontSize: 25)
            ),
            Container(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset("assets/icons/random.png"), 
                  onPressed: () {},
                ),
                IconButton(
                  iconSize: 40,
                  color: Colors.white,
                  icon: Icon(Icons.fast_rewind_rounded),
                  onPressed: () {},
                ),
                IconButton(
                  iconSize: 70,
                  color: Colors.white,
                  icon: Icon(Icons.pause_circle_filled_rounded),
                  onPressed: () {

                  },
                ),
                IconButton(
                  iconSize: 40,
                  color: Colors.white,
                  icon: Icon(Icons.fast_forward_rounded),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset("assets/icons/replay.png"),
                  onPressed: () {
                    
                  },
                )
              ],
            )
          ]
        ),
      ),
    );
  }
}