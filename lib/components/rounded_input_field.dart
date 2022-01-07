import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_field_container.dart';
import 'package:flutter_auth/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(

      child:  TextFormField(
        validator: (value){
          if(value.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)){
            return "Enter Correct Email Address";
          }else{
            return null;
          }
        },
        keyboardType: TextInputType.emailAddress,
        textCapitalization: TextCapitalization.words,
        autocorrect: false,

        //controller: firstNameTextController,
        //validator: _validateFirstName,
        maxLength: 128,
        style: TextStyle(
          color: Colors.black54,
          //fontFamily: ScreensFontFamlty.FONT_FAMILTY
        ),

        decoration: InputDecoration(
          counterText: "",
          prefixIcon: Icon(
            Icons.person,
            size: 22,
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
          hintText: "Email",
          hintStyle:
          TextStyle(color: Color(0xFF72868a), fontWeight: FontWeight.w500
            //fontFamily: ScreensFontFamlty.FONT_FAMILTY
          ),
          filled: true,
          fillColor: Colors.white,
          // errorStyle: AppTypoGraphy.errorHintStyle
        ),

      ),
    );
  }
}



// mixin InputValidationMixin {
//   bool isPasswordValid(String password) => password.length == 6;
//
//   bool isEmailValid(String email) {
//     Pattern pattern =
//         r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
//     RegExp regex = new RegExp(pattern);
//     return regex.hasMatch(email);
//   }
// }