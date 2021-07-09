import 'package:dribbly/src/views/timer_screen.dart';
import 'package:dribbly/src/views/tools_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(color: Theme.of(context).accentColor),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: <Widget>[
              const SizedBox(height: 40.0),
              buildMenuItem(
                text: "Meditation Timer", 
                icon: Icons.alarm_rounded, 
                onClicked: () => selectedItem(context, 0),
              ),
              const SizedBox(height: 15.0),
              buildMenuItem(
                text: "Tools", 
                icon: Icons.self_improvement_rounded,
                onClicked: () => selectedItem(context, 1),
              ),
              const SizedBox(height: 20.0),
              Divider(
                color: Colors.white70,
              ),

            ]
          ),
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
      onTap: onClicked
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch(index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => TimerScreen()));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ToolsScreen()));
    }
  }
}