import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData prefixIconData;
  final IconData suffixIconData;
  final bool obscureText;
  final Function onChanged;

  TextFieldWidget({
    this.hintText,
    this.prefixIconData,
    this.suffixIconData,
    this.obscureText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeModel>(context);

    return TextField(
      onChanged: onChanged,
      obscureText: obscureText,
      cursorColor: Colors.blueAccent,
      style: TextStyle(
        color: Colors.blueAccent,
        fontSize: 14.0,
      ),
      decoration: InputDecoration(
        labelStyle: TextStyle(color: Colors.blueAccent),
        focusColor: Colors.blueAccent,
        filled: true,
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.blueAccent),
        ),
        labelText: hintText,
        prefixIcon: Icon(
          prefixIconData,
          size: 18,
          color: Colors.blueAccent,
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            model.isVisible = !model.isVisible;
          },
          child: Icon(
            suffixIconData,
            size: 18,
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}
