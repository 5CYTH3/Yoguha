import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: LoginScreenBody(),
    );
  }
}

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;

    return Container(
      width: maxWidth,
      decoration: BoxDecoration(color: Theme.of(context).accentColor, image: DecorationImage(alignment: Alignment.bottomCenter, image: AssetImage("assets/leaves.png"), fit: BoxFit.fitWidth)),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child:Image(image: AssetImage("assets/faviconNoGlow.png"), width: 49, height: 49),
              margin: EdgeInsets.only(bottom: 50),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text("Sign In", textAlign: TextAlign.start, style: GoogleFonts.alegreya(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500)),
                  margin: EdgeInsets.only(bottom: 10),
                ),
                Text("Sign in now to acces your excercises and saved music.", style: GoogleFonts.alegreyaSans(fontSize: 22, color: Color.fromRGBO(255, 255, 255, 70), fontWeight: FontWeight.w400)),
                SizedBox(height: 30),
                TextField(style: TextStyle(color: Colors.white),)

              ],
            ),
          ],
        )
      ),
    );
  }
}
