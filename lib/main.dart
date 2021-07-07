import 'package:dribbly/src/controllers/auth_service.dart';
import 'package:dribbly/src/views/main_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'src/views/home_screen.dart';
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
    return MultiProvider(
      providers: [
        Provider<AuthService>(create: (_) => AuthService(FirebaseAuth.instance)),
        StreamProvider(create: (context) => context.read()<AuthService>().authStateChanges, initialData: null,)
      ],
        child: MaterialApp(
        title: 'Yoguha',
        theme: ThemeData(
          primarySwatch: Colors.blue, 
          primaryColor: Color(0xFF7C9A92),
          accentColor: Color(0xFF253334)
        ),
        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

// Set this as home: and patch error of "object instead of dynamic".
class AuthWrapper extends StatelessWidget {
  const AuthWrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch()<User>();
    if (firebaseUser != null) {
      return MainScreen();
    }
    return HomeScreen();
  }
}