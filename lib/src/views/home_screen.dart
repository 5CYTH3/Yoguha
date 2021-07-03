import 'package:dribbly/src/components/widgets.dart';
import 'package:dribbly/src/views/login_screen.dart';
import 'package:dribbly/src/views/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: HomeScreenBody(),
    );
  }
}

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background.png"), fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Image.asset("assets/faviconNoGlow.png")
						),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("Welcome",
                    style: GoogleFonts.alegreya(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.w700
                    )
                  ),
                  Text("Do meditation. Stay focused. Live a healthy life",
                    style: GoogleFonts.alegreyaSans(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),
                    textAlign: TextAlign.center
                  ),
                  SizedBox(height: 120),
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: ButtonFrequent(buttonText: "Login with Email", pageRoute: LoginScreen(),)
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: () {
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
                      )
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
