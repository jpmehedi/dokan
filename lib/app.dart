import 'package:dokan/views/sign_in/sign_in_screen.dart';
import 'package:dokan/views/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dokan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Roboto"
      ),
      initialRoute: SignInScreen.path,
      routes: {
        SignInScreen.path: (ctx)=> SignInScreen(),
        SignUpScreen.path: (ctx)=> SignUpScreen(),
      },
    );
  }
}
