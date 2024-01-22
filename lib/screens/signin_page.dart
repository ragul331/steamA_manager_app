import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manager/screens/details_page.dart';
import 'package:manager/widgets/appbar.dart';
import 'package:manager/widgets/textfeild.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final userNameController = TextEditingController();
  final siteIdController = TextEditingController();
  final siteNameController = TextEditingController();
  final cpIdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const IrisAppBar(),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(242, 242, 242, 1),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    Text(
                      'Sign In',
                      style: GoogleFonts.aclonica(fontSize: 16),
                    ),
                    CustomTextFeild(
                      controller: userNameController,
                      text: 'Username',
                      maxLines: 1,
                    ),
                    CustomTextFeild(
                      controller: siteIdController,
                      text: 'Site ID',
                      maxLines: 1,
                    ),
                    CustomTextFeild(
                      controller: siteNameController,
                      text: 'Site Name',
                      maxLines: 1,
                    ),
                    CustomTextFeild(
                      controller: cpIdController,
                      text: 'CP ID',
                      maxLines: 1,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Details()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(255, 0, 11, 1),
                          minimumSize: Size(size.width, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          fontFamily: 'comic',
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
