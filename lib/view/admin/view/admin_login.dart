import 'package:flutter/material.dart';
import 'package:fyuge_task/utils/widgets/widget.dart';
import 'package:fyuge_task/view/admin/view/admin_home_screen.dart';
import 'package:get/get.dart';

class AdminLogin extends StatelessWidget {
  AdminLogin({super.key});

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
                          "Admin email",
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
                               Get.to(() => const AdminHome());
                            }
                          },
                        ),
                      ],
                    )),
              ),
              Expanded(
                flex: 2,
                child: Container(
                    // child: signUpOption(context),
                    ),
              )
            ])));
  }
}
