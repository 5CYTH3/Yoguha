import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
		final cream = Color(0xFFF7F3F0);

    return Container(
      width: maxWidth,
      decoration: BoxDecoration(color: Theme.of(context).accentColor),
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
                  icon: Image.asset("assets/burger.png"),
									iconSize: 30,
                ),   
                IconButton(
                  onPressed: () {}, 
                  icon: Image.asset("assets/faviconNoGlow.png"),
									iconSize: 50,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.perm_identity, color: Colors.white, size: 30,)
                )
              ],
            ),
						Container(
							margin: EdgeInsets.only(top: 20),
						  child: Column(
						  	crossAxisAlignment: CrossAxisAlignment.start,
						  	children: [
						  		Text("Welcome back, User!", style: GoogleFonts.alegreya(color: Colors.white, fontSize: 30)),
						  		Text("How are you feeling today?", style: GoogleFonts.alegreyaSans(color: gray, fontSize: 22))
						  	],
						  ),
						),
						Row(
							mainAxisAlignment: MainAxisAlignment.spaceBetween,
							children: [
								Column(
									children: [
										Container(
											margin: EdgeInsets.only(top: 30, bottom: 7),
											decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)), width: 65, height: 65,
											child: IconButton(onPressed: () {}, icon: Image.asset("assets/icons/calm.png")),
										),
										Text("Calm", style: TextStyle(color: Colors.white),)
									],
								),
								Column(
									children: [
										Container(
											margin: EdgeInsets.only(top: 30, bottom: 7),
											decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)), width: 65, height: 65,
											child: IconButton(onPressed: () {}, icon: Image.asset("assets/icons/relax.png")),
										),
										Text("Relax", style: TextStyle(color: Colors.white),)
									],
								),
								Column(
									children: [
										Container(
											margin: EdgeInsets.only(top: 30, bottom: 7),
											decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)), width: 65, height: 65,
											child: IconButton(onPressed: () {}, icon: Image.asset("assets/icons/focus.png")),
										),
										Text("Focus", style: TextStyle(color: Colors.white),)
									],
								),
								Column(
									children: [
										Container(
											margin: EdgeInsets.only(top: 30, bottom: 7),
											decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)), width: 65, height: 65,
											child: IconButton(onPressed: () {}, icon: Image.asset("assets/icons/calm.png")),
										),
										Text("Anxious", style: TextStyle(color: Colors.white),)
									],
								),
							],
						)
          ],
        ),
      )
    );
  }
}