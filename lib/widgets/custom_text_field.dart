import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? textEditingController;
  const CustomTextField({required this.textEditingController,required this.hintText,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(2),
      child: TextFormField(
        controller: textEditingController,
        validator: (String? value) {
          if (value != null && value.trim().isNotEmpty) {
            return null;
          } else {
            return "Please Enter Valid Username";
          }
        },
        autofocus: false,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.black45),
          fillColor: Colors.grey.shade300,
          filled: true,
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.greenAccent,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(5),),
          ),
        ),
      ),
    );
  }
}
