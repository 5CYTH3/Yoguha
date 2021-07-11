import 'package:dribbly/src/controllers/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreenBody extends StatelessWidget {
  ProfileScreenBody({ Key? key }) : super(key: key);
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(color: Theme.of(context).accentColor),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 60),
              Text(
                "Not available for now",
                style: GoogleFonts.alegreya(color: Colors.white, fontSize: 25)
              ),
              Text(
                "You can't actually see your profile. I will add this feature later. Be patient.",
                textAlign: TextAlign.center,
                style: GoogleFonts.alegreyaSans(color: Colors.white70, fontSize: 20),
              ),
              ElevatedButton(
                onPressed: () async {
                  await _auth.signOut();
                }, 
                child: Text("Log Out")
              )
            ],
          ),
        ),
      ),
    );
  }
}