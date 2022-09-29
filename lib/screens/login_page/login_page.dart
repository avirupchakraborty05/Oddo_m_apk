import 'package:flutter/material.dart';

import '../components/donthaveacc.dart';
import '../components/mybutton.dart';
import '../components/mytextfield.dart';
import '../components/social_icon.dart';
import '../home_screen/home.dart';

class LogInPage extends StatefulWidget {
  LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  var isChecked = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: ListView(
        children: [
          const PageHeading(
            name: 'LogIn',
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Expanded(
                flex: 2,
                child: Column(
                  children: [
                    const MyTextFormField(
                      icon: Icons.mail_outline,
                      name: "Email",
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    const MyTextFormField(
                      icon: Icons.lock_open_outlined,
                      name: "Password",
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "Forgot Passowrd?",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Checkbox(
                    checkColor: Colors.white,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    }),
                const Text(
                  "Remember me",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          MyButtonLogin(
            name: 'LogIn',
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => HomePage()));
            },
          ),
          BottumTextSignIn(
            subName: 'SignUp',
            name: "Don't have account?\t\t",
            onPressed: () {},
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SocialIcon(
                image: 'images/google.png',
                ontap: () {},
              ),
              SocialIcon(image: 'images/facebook.png', ontap: () {}),
              SocialIcon(image: 'images/twitter.png', ontap: () {}),
              SocialIcon(image: 'images/instagram.png', ontap: () {}),
            ]),
          )
        ],
      ),
    );
  }
}

class PageHeading extends StatelessWidget {
  final String name;
  const PageHeading({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100, left: 40),
      child: Expanded(
          child: Container(
        child: Text(
          name,
          style: TextStyle(
              fontSize: 45, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      )),
    );
  }
}
