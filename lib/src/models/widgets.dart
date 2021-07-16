import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonFrequent extends StatelessWidget {

  final String buttonText;
  final Widget pageRoute;

  ButtonFrequent({ Key? key, required this.buttonText, required this.pageRoute });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(this.buttonText),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
        textStyle: MaterialStateProperty.all(GoogleFonts.alegreyaSans(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500)),
        elevation: MaterialStateProperty.all(4),
        fixedSize: MaterialStateProperty.all(Size(320, 60)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))))
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => this.pageRoute));
      },
    );
  }
}