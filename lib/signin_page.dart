

import 'package:e_commerce/main_page.dart';
import 'package:e_commerce/widgets/custom_button_widget.dart';
import 'package:e_commerce/widgets/custom_outlined_button_widget.dart';
import 'package:e_commerce/widgets/custom_textfield_widget.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome Back.",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Let's sign in",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextFieldWidget(
              hintText: 'Email',
              prefixIcon: Icons.email,
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextFieldWidget(
              hintText: 'Password',
              prefixIcon: Icons.lock,
              suffixIcon: Icons.visibility,
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot Password",
                style: TextStyle(
                  color: Color(0xffE96E6E),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            CustomButtonWidget(textButton: "Sign In", onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => MainPage()));
            }),
            SizedBox(
              height: 30,
            ),
            Row(
              spacing: 10,
              children: [
                Expanded(
                    child: Divider(
                  thickness: 2,
                  color: Color(0xffCECECE),
                )),
                Text("or connect with"),
                Expanded(
                    child: Divider(
                  thickness: 2,
                  color: Color(0xffCECECE),
                )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            CustomOutlinedButtonWidget(iconPath: "google-icon.png", textButton: "Continue with Google"),
            SizedBox(height: 15,),
             CustomOutlinedButtonWidget(iconPath: "facebook-icon.png", textButton: "Continue with Facebook"),
             SizedBox(height: 25,),
             Row(
              spacing: 5,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),

                Text("Sign Up",style: TextStyle(
                   color: Color(0xffE96E6E),
                   fontWeight: FontWeight.w600
                ),)
              ],
             )
          ],
        ),
      ),
    );
  }
}
