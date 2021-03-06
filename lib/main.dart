import 'package:dribbly/src/controllers/auth_service.dart';
import 'package:dribbly/src/controllers/screen_wrapper.dart';
import 'package:dribbly/src/models/AppUser.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<AppUser?>.value(
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(
        title: 'Yoguha',
        theme: ThemeData(
          primaryColor: Color(0xFF7C9A92),
          accentColor: Color(0xFF253334)
        ),
        home: ScreenWrapper(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}