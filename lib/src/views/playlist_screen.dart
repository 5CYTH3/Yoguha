import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaylistScreenBody extends StatelessWidget {
  const PlaylistScreenBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final gray = Color(0xFFBEC2C2);
		final cream = Color(0xFFF7F3F0);

    List<AssetImage> imageList = [AssetImage(""), ];

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
              ),
            )
          ],
        ),
      )
    );
  }
}

