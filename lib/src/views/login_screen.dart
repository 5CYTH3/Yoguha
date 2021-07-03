import 'package:dribbly/src/auth_service.dart';
import 'package:dribbly/src/views/register_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
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
  LoginScreenBody({Key? key}) : super(key: key);

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final gray = Color(0xFFBEC2C2);

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
                SizedBox(height: 60),
                TextField(
                  style: TextStyle(color: Colors.white),
                  scrollPhysics: BouncingScrollPhysics(),
                  controller: emailController, 
                  decoration: InputDecoration(
                    icon: Icon(Icons.mail, color: gray),
                    labelStyle: GoogleFonts.alegreyaSans(color: gray),
                    labelText: "Email Address", 
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: gray)
                    ),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))

                  ),
                ),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock, color: gray,),
                    labelText: "Password",
                    labelStyle: GoogleFonts.alegreyaSans(color: gray),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: gray)
                    ),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                    focusColor: Colors.white
                  ),
                  
                ),
                Container(
                  width: maxWidth,
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(top: 10, bottom: 40),
                  child: Text("Forgot password?", style: GoogleFonts.alegreyaSans(fontWeight: FontWeight.normal, color: gray)) 
                ),
                Container(
                  width: maxWidth,
                  margin: EdgeInsets.only(bottom: 30.0),
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<AuthService>().signIn(
                        email: emailController.text.trim(),
                        password: passwordController.text.trim()
                      );
                    }, 
                    child: Text("LOGIN", style: GoogleFonts.alegreyaSans(color: Colors.white),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
                      textStyle: MaterialStateProperty.all(GoogleFonts.alegreyaSans(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500)),
                      elevation: MaterialStateProperty.all(4),
                      fixedSize: MaterialStateProperty.all(Size(320, 60)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))))
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: TextButton(onPressed: () {
                    print("It does work.");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterScreen()
                      )
                    );
                  }, 
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(text: "Don’t have an account? "),
                        TextSpan(
                          text: "Sign Up",
                          style: TextStyle(fontWeight: FontWeight.bold)
                        )
                      ],
                    )
                  ),),
                )
              ],
            ),
          ],
        )
      ),
    );
  }
}
