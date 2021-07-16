import 'package:dribbly/src/controllers/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:form_field_validator/form_field_validator.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: null,
      body: AuthScreenBody(),
    );
  }
}

class AuthScreenBody extends StatefulWidget {
  AuthScreenBody({Key? key}) : super(key: key);

  @override
  State<AuthScreenBody> createState() => _AuthScreenBodyState();
}

class _AuthScreenBodyState extends State<AuthScreenBody> {
  final TextEditingController passwordController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final AuthService _auth = AuthService();

  bool showSignIn = false;


  void toggleView() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }
  
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();


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
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      showSignIn ? "Sign In" : "Sign Up", 
                      textAlign: TextAlign.start, 
                      style: GoogleFonts.alegreya(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500)
                    ),
                    margin: EdgeInsets.only(bottom: 10),
                  ),
                  Text(
                    showSignIn ? "Sign in now to acces your excercises and saved music." : "Sign up now for free and start meditating, and explore Medic.",
                    style: GoogleFonts.alegreyaSans(fontSize: 22, color: Color.fromRGBO(255, 255, 255, 70), fontWeight: FontWeight.w400)
                  ),
                  SizedBox(height: 60),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    scrollPhysics: BouncingScrollPhysics(),
                    controller: emailController,
                    validator: EmailValidator(errorText: "Please provide a valid email !"),
                    decoration: InputDecoration(
                      icon: Icon(Icons.mail, color: gray),
                      labelStyle: GoogleFonts.alegreyaSans(color: gray),
                      labelText: "Email Address", 
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: gray)
                      ),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      focusColor: Colors.white

                    ),
                  ),
                  TextFormField(
                    controller: passwordController,
                    style: TextStyle(color: Colors.white),
                    validator: MinLengthValidator(6, errorText: "Your password must be longer or equals to 6 characters."),
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
                    child: showSignIn ? Text("Forgot password?", style: GoogleFonts.alegreyaSans(fontWeight: FontWeight.normal, color: gray)) : null 
                  ),
                  Container(
                    width: maxWidth,
                    margin: EdgeInsets.only(bottom: 30.0),
                    child: ElevatedButton(
                      onPressed: () async {
                        if(_formKey.currentState!.validate()) {
                          var password = passwordController.value.text;
                          var email = emailController.value.text;

                          dynamic result = showSignIn ? await _auth.signInEmailPassword(email, password) : await _auth.registerEmailPassword(email, password);

                        }
                      },
                      child: Text(
                        showSignIn ? "LOGIN" : "SIGNUP", 
                        style: GoogleFonts.alegreyaSans(color: Colors.white),
                      ),
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
                    child: TextButton(onPressed: () => toggleView(), 
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.white, fontSize: 16),
                        children: <TextSpan>[
                          TextSpan(
                            text: showSignIn ? "Don’t have an account? " : "Already have an account "
                          ),
                          TextSpan(
                            text: showSignIn ? "Sign Up" : "Sign In",
                            style: TextStyle(fontWeight: FontWeight.bold)
                          )
                        ],
                      )
                    ),),
                  )
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
