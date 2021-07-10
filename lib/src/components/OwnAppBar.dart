import 'package:dribbly/src/views/main_screen.dart';
import 'package:flutter/material.dart';

class OwnAppBar extends StatefulWidget implements PreferredSizeWidget {
  
  OwnAppBar({ Key? key }) : preferredSize = Size.fromHeight(100), super(key: key);

  @override
  final Size preferredSize;

  @override
  _OwnAppBarState createState() => _OwnAppBarState();
}

class _OwnAppBarState extends State<OwnAppBar> {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      actions: [
        IconButton(
          onPressed: () {
            
          },
          icon: Icon(Icons.perm_identity, color: Colors.white, size: 30,)
        )
      ],
      leading: IconButton(
        onPressed: () {
            Scaffold.of(context).openDrawer();
        }, 
        icon: Image.asset("assets/burger.png"),
        iconSize: 30,
      ),
      title: IconButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainScreen()));
        }, 
        icon: Image.asset("assets/faviconNoGlow.png"),
        iconSize: 50,
      ),
      centerTitle: true,
      backgroundColor: Theme.of(context).accentColor,
      toolbarHeight: 100,
      elevation: 0,
    );
  }
}