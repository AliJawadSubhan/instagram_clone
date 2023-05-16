import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/screens/login_screen.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/utils/components/sizebox_functions.dart';
import 'package:instagram_clone/utils/components/widgets/custom_textfield.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
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
              addHorizontalHeight(16),
              SvgPicture.asset(
                "assets/images/insta.svg",
                color: Colors.white,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/100'),
                    backgroundColor: Colors.transparent,
                  ),
                  Positioned(
                    bottom: -10,
                    right: -10,
                    child: RawMaterialButton(
                      onPressed: () {
                        // Implement your image picker logic here.
                      },
                      elevation: 2.0,
                      fillColor: Colors.white,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.photo_library,
                        size: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
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
                controller: passwordController,
                labelText: 'Passoword',
                prefixIcon: Icons.lock,
              ),
              addHorizontalHeight(24.0),
              CustomTextFeild(
                obscureText: false,
                controller: usernameController,
                labelText: 'username',
                prefixIcon: Icons.person,
              ),
              addHorizontalHeight(24.0),
              CustomTextFeild(
                obscureText: false,
                controller: bioController,
                labelText: 'write your Bio',
                prefixIcon: Icons.bookmark,
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(4)))),
                    child: const Text(
                      'Sign up!',
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
                      "Already have an account?",
                      style: TextStyle(),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (c) {
                        return LoginScreen();
                      }));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 0,
                      ),
                      child: Text(
                        " login",
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
        ),
      )),
    );
  }
}
