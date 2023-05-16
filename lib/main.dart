import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/firebase_options.dart';
import 'package:instagram_clone/responsive/layout_builder.dart';
import 'package:instagram_clone/responsive/mobile_screen.dart';
import 'package:instagram_clone/responsive/web_screen_layout.dart';
import 'package:instagram_clone/utils/colors.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const InstagramClone());
}

class InstagramClone extends StatelessWidget {
  const InstagramClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: ResponsiveLayout(
        mobileScreenLayout: MobileScreen(),
        webScreenLayout: WebScreen(),
      ),
    );
  }
}
