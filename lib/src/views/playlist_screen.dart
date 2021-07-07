import 'package:dribbly/src/models/PlaylistModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaylistScreenBody extends StatelessWidget {
  PlaylistScreenBody({ Key? key }) : super(key: key);

  List playList = [
    PlaylistModel("Painting Forest", "by: Painting with Passion", "assets/illustrations/amazonia.png", "20m"),
    PlaylistModel("Mountaineers", "by: Painting with Passion", "assets/illustrations/forest.png", "15m"),
    PlaylistModel("Lovely Desert", "by: Painting with Passion", "assets/illustrations/arizona.png", "39m"),
    PlaylistModel("The Hill Sides", "by: Painting with Passion", "assets/illustrations/desert.png", "50m")
  ];

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final gray = Color(0xFFBEC2C2);

    return Container(
      width: maxWidth,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(color: Theme.of(context).accentColor),
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 195,
              width: maxWidth,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/illustrations/amazonia.png")), borderRadius: BorderRadius.all(Radius.circular(32))),
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Relax Sounds", style: GoogleFonts.alegreya(fontSize: 27.0, fontWeight: FontWeight.w600, color: Colors.white)),
                    Text("Sometimes the most productive thing you can do is relax.", style: GoogleFonts.alegreyaSans(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w600)),
                    Container(
                      width: 138,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
                        ),
                        onPressed: () {}, 
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 2),
                              child: Text("play now", style: GoogleFonts.alegreyaSans(color: Colors.black))
                            ),
                            Icon(Icons.play_circle, color: Colors.black,)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: ListView.builder(
                  itemCount: playList.length,
                  itemExtent: 90,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        switch(playList[index]) {
                          case 0:
                            
                            break;

                        case 1:
                          break;

                        case 2:
                          break;

                        case 3:
                          break;

                        }
                      },
                      leading: Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(playList[index].path),
                            fit: BoxFit.cover
                          ), 
                          borderRadius: BorderRadius.all(Radius.circular(20.0))
                        ),
                      ),
                      title: Text(playList[index].title, style: GoogleFonts.alegreyaSans(color: Colors.white)),
                      subtitle: Text(playList[index].subTitle, style: GoogleFonts.alegreyaSans(color: gray)),
                      trailing: Text(playList[index].duration, style: GoogleFonts.alegreyaSans(color: gray))
                    );
                  }
                ),
                /*
                child: ListView(
                  itemExtent: 90,
                  physics: BouncingScrollPhysics(),
                  children: [
                    ListTile(
                      leading: Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/illustrations/amazonia.png"),
                            fit: BoxFit.cover
                          ), 
                          borderRadius: BorderRadius.all(Radius.circular(20.0))
                        ),
                      ),
                      title: Text("Painting Forest", style: GoogleFonts.alegreyaSans(color: Colors.white)),
                      subtitle: Text("by: Painting with passion", style: GoogleFonts.alegreyaSans(color: gray)),
                      trailing: Text("20m", style: GoogleFonts.alegreyaSans(color: gray)),
                    ),
                    ListTile(
                      leading: Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/illustrations/forest.png"), 
                            fit: BoxFit.cover
                          ), 
                          borderRadius: BorderRadius.all(Radius.circular(20.0))
                        ),
                      ),
                      title: Text("Mountaineers", style: GoogleFonts.alegreyaSans(color: Colors.white)),
                      subtitle: Text("by: Painting with passion", style: GoogleFonts.alegreyaSans(color: gray)),
                      trailing: Text("15m", style: GoogleFonts.alegreyaSans(color: gray)),
                    ),
                    ListTile(
                      leading: Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/illustrations/arizona.png"), 
                            fit: BoxFit.cover
                          ), 
                          borderRadius: BorderRadius.all(Radius.circular(20.0))
                        ),
                      ),
                      title: Text("Lovely Desert", style: GoogleFonts.alegreyaSans(color: Colors.white)),
                      subtitle: Text("by: Painting with passion", style: GoogleFonts.alegreyaSans(color: gray)),
                      trailing: Text("39m", style: GoogleFonts.alegreyaSans(color: gray)),
                    ),
                    ListTile(
                      leading: Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/illustrations/desert.png"), 
                            fit: BoxFit.cover
                          ), 
                          borderRadius: BorderRadius.all(Radius.circular(20.0))
                        ),
                      ),
                      title: Text("The Hill Sides", style: GoogleFonts.alegreyaSans(color: Colors.white)),
                      subtitle: Text("by: Painting with passion", style: GoogleFonts.alegreyaSans(color: gray)),
                      trailing: Text("50m", style: GoogleFonts.alegreyaSans(color: gray)),
                    ),
                  ]
                ),
                */
              ),
            )
          ],
        ),
      )
    );
  }
}

