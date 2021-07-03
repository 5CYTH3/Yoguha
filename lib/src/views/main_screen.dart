import 'package:dribbly/src/views/playlist_screen.dart';
import 'package:dribbly/src/views/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final gray = Color(0xFFBEC2C2);

		int _selectedIndex = 0;
		List<Widget> _widgetOptions = <Widget>[
			MainScreenBody(),
			PlaylistScreenBody(),
			ProfileScreenBody()

		];
		void _onItemTap(int index) {
			setState(() {
			  _selectedIndex = index;
			});
		}

		return Scaffold(
      appBar: null,
      body: _widgetOptions.elementAt(_selectedIndex),
			bottomNavigationBar: BottomNavigationBar(
				showSelectedLabels: false,
				showUnselectedLabels: false,
				backgroundColor: Theme.of(context).accentColor,
				items: [
					BottomNavigationBarItem(icon: Image.asset("assets/bottom/home.png"), label: " ", activeIcon: Image.asset("assets/faviconNoGlow.png", width: 30,)),
					BottomNavigationBarItem(icon: Image.asset("assets/bottom/sounds.png"), label: " "),
					BottomNavigationBarItem(icon: Icon(Icons.perm_identity_rounded, color: gray), label: " ", activeIcon: Icon(Icons.perm_identity_rounded, color: Colors.white,))
				],
				currentIndex: _selectedIndex,
				onTap: _onItemTap,
			),
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
			height: MediaQuery.of(context).size.height,
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
						),
						Container(
							margin: EdgeInsets.only(top: 30),
							alignment: Alignment.centerLeft,
							height: 140,
							decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)), color: cream),
							child: Padding(
							  padding: const EdgeInsets.all(12.0),
							  child: Row(
							  	mainAxisAlignment: MainAxisAlignment.spaceBetween,
							  	children: [
							  		Column(
							  			crossAxisAlignment: CrossAxisAlignment.start,
							  			children: [
							  				Text("Meditation 101", style: GoogleFonts.alegreya(fontWeight: FontWeight.w600, color: Theme.of(context).accentColor, fontSize: 18)),
							  				Text("Techniques, Benefits,\nand a Beginner’s How-To"),
							  				Container(
													margin: EdgeInsets.only(top: 5),
							  				  child: ElevatedButton(onPressed: () {},
							  				  	style: ButtonStyle(
							  				  		minimumSize: MaterialStateProperty.all(Size(140, 40)), 
							  				  		backgroundColor: MaterialStateProperty.all(Theme.of(context).accentColor), 
							  				  		shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))))
							  				  	),
							  				  	child: Row(
							  				  		mainAxisAlignment: MainAxisAlignment.spaceBetween,
							  				  		children: [
							  				  			Icon(Icons.play_circle),
							  				  			Text("Watch Now")
							  				  		],
							  				  	),
							  				  ),
							  				)
							  			],
							  		),
							  		Image.asset("assets/meditationIllu.png", scale: 1.2,)
							  	],
							  ),
							)
						),
						Container(
							margin: EdgeInsets.only(top: 30),
							height: 140,
							alignment: Alignment.centerLeft,
							decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)), color: cream),
							child: Padding(
							  padding: const EdgeInsets.all(12.0),
							  child: Row(
							  	mainAxisAlignment: MainAxisAlignment.spaceBetween,
							  	children: [
							  		Column(
							  			crossAxisAlignment: CrossAxisAlignment.start,
							  			children: [
							  				Text("Cardio Meditation", style: GoogleFonts.alegreya(fontWeight: FontWeight.w600, color: Theme.of(context).accentColor, fontSize: 18)),
							  				Text("Basics of Yoga for Beginners\nor Experienced Professionals"),
							  				Container(
													margin: EdgeInsets.only(top: 5),
							  				  child: ElevatedButton(onPressed: () {},
							  				  	style: ButtonStyle(
							  				  		minimumSize: MaterialStateProperty.all(Size(140, 40)), 
							  				  		backgroundColor: MaterialStateProperty.all(Theme.of(context).accentColor), 
							  				  		shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))))
							  				  	),
							  				  	child: Row(
							  				  		mainAxisAlignment: MainAxisAlignment.spaceBetween,
							  				  		children: [
							  				  			Icon(Icons.play_circle),
							  				  			Text("Watch Now")
							  				  		],
							  				  	),
							  				  	
							  				  ),
							  				)
							  			],
							  		),
							  		Image.asset("assets/cardioMeditation.png",)
							  	],
							  ),
							)
						),
          ],
        ),
      )
    );
  }
}

class MainScreenBottomBar extends StatefulWidget {
	const MainScreenBottomBar({ Key? key }) : super(key: key);

  @override
  _MainScreenBottomBarState createState() => _MainScreenBottomBarState();
}

class _MainScreenBottomBarState extends State<MainScreenBottomBar> {
	@override
	Widget build(BuildContext context) {
		final gray = Color(0xFFBEC2C2);

		int _selectedIndex = 0;
		List<Widget> _widgetOptions = <Widget>[

		];
		void _onItemTap(int index) {
			setState(() {
			  _selectedIndex = index;
			});
		}

		return BottomNavigationBar(
			showSelectedLabels: false,
			showUnselectedLabels: false,
			backgroundColor: Theme.of(context).accentColor,
			items: [
				BottomNavigationBarItem(icon: Image.asset("assets/faviconNoGlow.png", width: 30,), label: " "),
				BottomNavigationBarItem(icon: Image.asset("assets/bottom/sounds.png"), label: " "),
				BottomNavigationBarItem(icon: Icon(Icons.perm_identity_rounded, color: gray), label: " ")
			],
			currentIndex: _selectedIndex,
			onTap: _onItemTap,
		);
	}
}