import 'package:flutter/material.dart';
import 'package:twitter_clone/screens/home.dart';
import 'package:twitter_clone/screens/roundedButton.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1B2939),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                  ),
                  Image.asset(
                    'assets/images/logo.jpeg',
                    height: 200,
                    width: 200,
                  ),
                  Text(
                    'See what’s happening in the world right now',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  RoundedButton(
                      btnText: 'LOG IN',
                      onBtnPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => (HomePage())));
                      }),
                  SizedBox(
                    height: 30,
                  ),
                  RoundedButton(btnText: 'Create account', onBtnPressed: () {}),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
