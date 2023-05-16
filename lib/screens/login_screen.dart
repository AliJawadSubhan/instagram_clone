import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/screens/sign_up_screen.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/utils/components/sizebox_functions.dart';
import 'package:instagram_clone/utils/components/widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController paswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
        ),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Container(),
              flex: 2,
            ),
            SvgPicture.asset(
              "assets/images/insta.svg",
              color: Colors.white,
            ),
            addHorizontalHeight(24),
            CustomTextFeild(
              obscureText: false,
              controller: emailController,
              labelText: 'Email',
              prefixIcon: Icons.email,
            ),
            addHorizontalHeight(24.0),
            CustomTextFeild(
              obscureText: true,
              controller: paswordController,
              labelText: 'Passoword',
              prefixIcon: Icons.lock,
            ),
            addHorizontalHeight(24.0),
            Material(
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 21,
                    vertical: 12,
                  ),
                  decoration: const ShapeDecoration(
                      color: blueColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)))),
                  child: const Text(
                    'Login in',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            addHorizontalHeight(12.0),
            Flexible(
              flex: 2,
              child: Container(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                  ),
                  child: const Text(
                    "Don't have an account?",
                    style: TextStyle(),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (c) {
                      return SignUp();
                    }));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 0,
                    ),
                    child: Text(
                      "Sign up!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
