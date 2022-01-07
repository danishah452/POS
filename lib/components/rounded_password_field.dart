import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_field_container.dart';
import 'package:flutter_auth/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(

        obscureText: true,
// cursorColor: Color.fromRGBO(64, 75, 96, .9),
        keyboardType: TextInputType.text,
        textCapitalization: TextCapitalization.words,
        autocorrect: false,
//controller: firstNameTextController,
//validator: _validateFirstName,
        maxLength: 128,
        style: TextStyle(
          color: Color.fromRGBO(64, 75, 96, .9),
        ),
        decoration: InputDecoration(
          counterText: "",
          prefixIcon: Icon(
            Icons.lock,
            size: 22,
            color: kPrimaryColor,
          ),

          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),

          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: const OutlineInputBorder(
              borderSide: const BorderSide(

// color: Color.fromARGB(255, 232, 232, 232),
                  color: Colors.white,
                  width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(25))),
          enabledBorder: const OutlineInputBorder(
              borderSide: const BorderSide(
// color: Color.fromARGB(255, 232, 232, 232),
                  color: Colors.white,
                  width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(25))),
          focusedBorder: const OutlineInputBorder(
              borderSide: const BorderSide(
// color: Color.fromARGB(255, 232, 232, 232),
                  color: Colors.white,
                  width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(25))),
          hintText: "Password",
          hintStyle:
          TextStyle(color: Color(0xFF72868a), fontWeight: FontWeight.w500
//fontFamily: ScreensFontFamlty.FONT_FAMILTY
          ),
          filled: true,
          fillColor: Colors.white,
// errorStyle: AppTypoGraphy.errorHintStyle
        ),
        validator: (String password) {
          if (password.isEmpty) {
            return "password";
          } else {
            return null;
          }
        },
      ),
    );
  }
}

