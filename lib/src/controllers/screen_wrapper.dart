import 'package:dribbly/src/models/AppUser.dart';
import 'package:dribbly/src/views/home_screen.dart';
import 'package:dribbly/src/views/login_screen.dart';
import 'package:dribbly/src/views/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenWrapper extends StatelessWidget {
  const ScreenWrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<AppUser?>(context);
    if(user != null) {
      return MainScreen();
    } else {
      return LoginScreen();
    }
    
  }
}