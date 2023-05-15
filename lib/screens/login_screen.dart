import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/utils/components/sizebox_functions.dart';
import 'package:instagram_clone/utils/components/widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  TextEditingController controller = TextEditingController();
  TextEditingController pcontroller = TextEditingController();
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
            SvgPicture.asset(
              "assets/images/insta.svg",
              color: Colors.white,
            ),
            addHorizontalHeight(24),
            CustomTextFeild(
              obscureText: false,
              controller: controller,
              labelText: 'Email',
              prefixIcon: Icons.email,
            ),
            addHorizontalHeight(24.0),
            CustomTextFeild(
              obscureText: true,
              controller: pcontroller,
              labelText: 'Passoword',
              prefixIcon: Icons.lock,
            ),
          ],
        ),
      )),
    );
  }
}
