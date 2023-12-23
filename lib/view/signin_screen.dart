import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:fyuge_task/utils/widgets/widget.dart';
import 'package:fyuge_task/view/admin/view/admin_login.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});
  final GlobalKey<FormState> form = GlobalKey();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black87,
        body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(children: [
              Expanded(
                flex: 3,
                child: Container(),
              ),
              Expanded(
                flex: 3,
                child: Form(
                    key: form,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        reusableTextF(
                          "User Name",
                          Icons.person_2_outlined,
                          false,
                          emailController,
                        ),
                        reusableTextF(
                          "Password",
                          Icons.lock_outline,
                          true,
                          passwordController,
                        ),
                        buttonLogin(
                          context,
                          true,
                          () {
                            if (form.currentState!.validate()) {
                              log("message");
                            }
                          },
                        ),
                      ],
                    )),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: signInOption(context),
                ),
              )
            ])));
  }

  signInOption(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const Text(
            "Are you an Admin...?",
            style: TextStyle(color: Colors.white70),
          ),
          GestureDetector(
            onTap: () => Get.to(() => AdminLogin()),
            child: const Text(
              "Admin Login",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
         
        ],
      ),
    );
  }
}
  //     value.passwordController, validator: (String? val) {
                            //   if (val == null || val.isEmpty) {
                            //     return 'Please enter your password';
                            //   } else {
                            //     return null;
                            //   }
                            // },