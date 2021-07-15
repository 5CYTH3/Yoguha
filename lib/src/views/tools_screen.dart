import 'package:dribbly/src/components/OwnAppBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToolsScreen extends StatelessWidget {
  const ToolsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OwnAppBar(),
      body: ToolsScreenBody(),
    );
  }
}

class ToolsScreenBody extends StatelessWidget {
  const ToolsScreenBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Theme.of(context).accentColor),
      child: Column(
        children: [
          Text("Not available for now", style: GoogleFonts.alegreya(color: Colors.white, fontSize: 25), textAlign: TextAlign.center),
          Text("You can't access the tool page right now. Be patient, It will come later if I can implement it.", style: GoogleFonts.alegreyaSans(color: Colors.white70, fontSize: 20), textAlign: TextAlign.center)
        ],
      ),
    );
  }
}