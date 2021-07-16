import 'package:audioplayers/audioplayers.dart';
import 'package:dribbly/src/components/OwnAppBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayingSound extends StatefulWidget {
  
  final String url;
  final String title;
  final String subTitle;
  final String imagePath;


  PlayingSound({ Key? key, required this.url, required this.title, required this.subTitle, required this.imagePath }) : super(key: key);

  @override
  _PlayingSoundState createState() => _PlayingSoundState();
}

class _PlayingSoundState extends State<PlayingSound> {

  AudioPlayer _audioPlayer = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);

  bool isPlaying = false;

  String currentSong = "";

  void playMusic(String url) async {
    if(isPlaying && currentSong != url) {
      _audioPlayer.pause();
      int result = await _audioPlayer.play(url);
      if(result == 1) {
        setState(() {
          currentSong = url;
        });
      }
    } else if(!isPlaying) {
      int result = await _audioPlayer.play(url);
      if(result == 1) {
        setState(() {
          isPlaying = true;
        });
      }
    }
  }

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
                image: DecorationImage(image: AssetImage(this.widget.imagePath), fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 20,),
            Text(
              this.widget.title,
              style: GoogleFonts.alegreya(color: Colors.white, fontSize: 35),
            ),
            Text(
              this.widget.subTitle,
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
                  icon: isPlaying ? Icon(Icons.pause_circle_filled_rounded) : Icon(Icons.play_circle_fill_rounded),
                  onPressed: () {
                    // Play the music
                    playMusic(this.widget.url);

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