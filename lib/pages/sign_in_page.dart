import 'package:flutter/material.dart';
import 'package:health_care_system/constants/constants.dart';
import 'package:health_care_system/pages/registration_page.dart';

import '../widgets/custom_text_field.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController? userNameTxtCtl;
  TextEditingController? passwordTxtCtl;

  @override
  void initState() {
    super.initState();
    userNameTxtCtl = TextEditingController();
    passwordTxtCtl = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: Text(Constants.appName),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Sign in text
          const Text("Sign in",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),

          //Username Text field
          CustomTextField(
            textEditingController: userNameTxtCtl,
            hintText: "Username",
          ),

          //Password Text field
          CustomTextField(
            textEditingController: passwordTxtCtl,
            hintText: "Password",
          ),

          //Sign in button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                minimumSize: const MaterialStatePropertyAll(
                  Size(double.infinity, 50),
                ),
              ),
              child: const Text("Sign In"),
            ),
          ),
          const SizedBox(height: 7,),

          //New User?
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account?"),
              const SizedBox(
                width: 5,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> RegistrationPage(),),);
                },
                child: const Text(
                  "Register",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
