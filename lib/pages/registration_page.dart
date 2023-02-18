import 'package:flutter/material.dart';
import 'package:health_care_system/widgets/custom_text_form_field.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController? userNameTxtCtl;
  TextEditingController? passwordTxtCtl;
  TextEditingController? emailTxtCtl;
  GlobalKey<FormState>? formKey;

  @override
  void initState() {
    super.initState();
    userNameTxtCtl = TextEditingController();
    passwordTxtCtl = TextEditingController();
    emailTxtCtl = TextEditingController();
    formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Register
                const Text(
                  "Register",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 10,),

                //Username
                CustomTextFormField(
                  hintText: "Username",
                  textEditingController: userNameTxtCtl,
                  validator: (value) {
                    return value;
                  },
                ),

                //Email
                CustomTextFormField(
                  hintText: "Email",
                  textEditingController: emailTxtCtl,
                  validator: (value) {
                    return value;
                  },
                ),

                //Password
                CustomTextFormField(
                  obscureText: true,
                  hintText: "Password",
                  textEditingController: passwordTxtCtl,
                  validator: (value) {
                    return value;
                  },
                ),

                const SizedBox(height: 10,),
                //Register button
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    minimumSize: const MaterialStatePropertyAll(
                      Size(double.infinity, 50),
                    ),
                  ),
                  child: const Text("Register"),
                ),

                const SizedBox(height: 10,),

                //Already registered?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already registered?"),
                    const SizedBox(
                      width: 7,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Sign in",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
