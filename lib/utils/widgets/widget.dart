import 'package:flutter/material.dart';

TextFormField reusableTextF(String text, IconData icon, bool isPassword,
    TextEditingController controller,
    {String? Function(String?)? validator}) {
  return TextFormField(
    validator: validator,
    controller: controller,
    obscureText: isPassword,
    enableSuggestions: !isPassword,
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Colors.white70,
        ),
        labelText: text,
        labelStyle: const TextStyle(color: Colors.grey),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Colors.white.withOpacity(0.3),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(width: 0, style: BorderStyle.none))),
    keyboardType:
        isPassword ? TextInputType.visiblePassword : TextInputType.emailAddress,
  );
}

Container buttonLogin(BuildContext context, bool isLogin, Function onTap) {
  return Container(
    width: 130,
    height: 50,
    // margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.black26;
            }
            return Colors.white;
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))),
      child: Text(isLogin ? "LOG IN" : "SIGN UP"),
    ),
  );
}
