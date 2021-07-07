import 'package:dribbly/src/views/timer_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 48.0),
            buildMenuItem(
              text: "Yoga Timer", 
              icon: Icons.alarm_rounded, 
              onClicked: () => selectedItem(context, 0),
            )
          ]
        )
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon, 
    VoidCallback? onClicked
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(text, style: GoogleFonts.alegreyaSans(color: Colors.white)),
      onTap: () {},
    );
  }

  void selectedItem(BuildContext context, int index) {
    switch(index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => TimerScreen()));
        break;
    }
  }

}