import 'package:e_commerce/signin_page.dart';
import 'package:e_commerce/signup_page.dart';
import 'package:e_commerce/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class OnBoradingPage extends StatefulWidget {
  const OnBoradingPage({super.key});

  @override
  State<OnBoradingPage> createState() => _OnBoradingPageState();
}

class _OnBoradingPageState extends State<OnBoradingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.asset("assets/images/good-team-pana-1--1.png"),
            Text(
              textAlign: TextAlign.center,
              "Enterprise Team \nManagement",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              textAlign: TextAlign.center,
              "With an extentsive menu prepared by talented chefs, fresh quanlity food.",
              style: TextStyle(color: Color(0xffAEAEAE), fontSize: 17),
            ),
            SizedBox(
              height: 40,
            ),
            CustomButtonWidget(textButton: "Sign Up", onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
            }),
            SizedBox(
              height: 15,
            ),
            OutlinedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 70),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => SigninPage()));
                },
                child: Text(
                  "Already have an account",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ))
          ],
        ),
      ),
    );
  }
}
