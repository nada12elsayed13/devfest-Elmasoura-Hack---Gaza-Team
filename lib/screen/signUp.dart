import 'package:dan/const/color.dart';
import 'package:dan/screen/homescreen.dart';
import 'package:dan/screen/login.dart';
import 'package:dan/widgets/customText.dart';
import 'package:flutter/material.dart';
import '../utils/helper.dart';


class SignUpScreen extends StatelessWidget {
  static const routeName = '/signUpScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: Helper.getScreenWidth(context),
      height: Helper.getScreenHeight(context),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            child: Column(
              children: [
                Text(
                  "Sign Up",
                  style: Helper.getTheme(context).headline6,
                ),
                Spacer(),
                Text(
                  "Add your details to sign up",
                ),
                Spacer(),
                CustomTextInput(hintText: "Name"),
                Spacer(),
                CustomTextInput(hintText: "Email"),
                Spacer(),
                CustomTextInput(hintText: "Mobile No"),
                Spacer(),
                CustomTextInput(hintText: "Address"),
                Spacer(),
                CustomTextInput(hintText: "Password"),
                Spacer(),
                CustomTextInput(hintText: "Confirm Password"),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(HomeScreen.routeName);
                    },
                    child: Text("Sign Up"),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(LoginScreen.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an Account?"),
                      Text(
                        "Login",
                        style: TextStyle(
                          color: AppColor.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
