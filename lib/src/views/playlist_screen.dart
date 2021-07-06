import 'package:flutter/material.dart';

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
            ),
            Expanded(
              child: ListView(
                children: [ 
                  ListTile(
                    leading: Container(
                      height: 65.0,
                      width: 65.0,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/illustrations/amazonia.png"), fit: BoxFit.cover), borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    ),
                  )
                ]
              ),
            )
          ],
        ),
      )
    );
  }
}

