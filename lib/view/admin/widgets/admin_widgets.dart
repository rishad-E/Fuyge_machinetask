import 'package:flutter/material.dart';

Text primarytxt(String text, double size) {
  return Text(
    text,
    style: TextStyle(
        color: const Color.fromARGB(255, 196, 192, 192),
        fontSize: size,
        fontWeight: FontWeight.w800),
  );
}

Widget feedContainer({
  required BuildContext context,
  required String url,
}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 2),
        BoxShadow(
          color: Colors.white,
        ),
      ],
    ),
    height: MediaQuery.of(context).size.height * 0.25,
    child: Container(
      decoration: BoxDecoration(
        // color: kblack.withOpacity(0.3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image.asset(
        url,
        fit: BoxFit.fill,
      ),
    ),
  );
}

TextFormField salesmanaddTF(
    String text, bool isPassword, TextEditingController controller,
    {String? Function(String?)? validator}) {
  return TextFormField(
    validator: validator,
    controller: controller,
    obscureText: isPassword,
    enableSuggestions: !isPassword,
    cursorColor: Colors.black,
    style: TextStyle(color: Colors.black.withOpacity(0.9)),
    decoration: InputDecoration(
        // prefixIcon: Icon(
        //   icon,
        //   color: Colors.black54,
        // ),
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

Container addButton(BuildContext context, Function onTap) {
  return Container(
    width: 100,
    height: 50,
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
      child: const Text("Add"),
    ),
  );
}
