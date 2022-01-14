import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/utils/colors.dart';
import 'package:instagram/widgets/text_field_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            //svg Image
            SvgPicture.asset("assets/images/logo.svg",color: primaryColor, height: 64,),
            //text input for email
            TextFieldInput(textEditingController: _emailController, hintText: "Enter Your Email", isPassword: false, textInputType: TextInputType.emailAddress),
            //text input for password
            TextFieldInput(textEditingController: _passwordController, hintText: "Enter Your Password", isPassword: true, textInputType: TextInputType.visiblePassword),
            //login button

            //go to signup

          ],),
        ),
      )
    );
  }
}