import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../components/default_button.dart';
import '../../../components/custom_suffix_icon.dart';
import '../../login_success/login_success_screen.dart';
import '../../forgot_password/forgot_password_screen.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  String email, password;

  bool firstSubmit = false;
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              SizedBox(width:110),
              TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgotPasswordScreen(),
                  ),
                ),
                child: Text(
                  "Forgot password?",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButton(
            text: "Login",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
              firstSubmit = true;
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newPassword) => this.password = newPassword,
      onChanged: (password) {
        if (firstSubmit) _formKey.currentState.validate();
      },
      validator: (password) {
        if (password.isEmpty) {
          return kPassNullError;
        } else if (password.isNotEmpty && password.length <= 7) {
          return kShortPassError;
        }

        return null;
      },
      decoration: InputDecoration(
        hintText: "Password",
        suffixIcon: CustomSuffixIcon(iconPath: "assets/icons/Lock.svg"),
      ),
      obscureText: true,
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      onSaved: (newEmail) => this.email = newEmail,
      onChanged: (email) {
        if (firstSubmit) _formKey.currentState.validate();
      },
      validator: (email) {
        if (email.isEmpty) {
          return kEmailNullError;
        } else if (email.isNotEmpty && !emailValidatorRegExp.hasMatch(email)) {
          return kInvalidEmailError;
        }

        return null;
      },
      decoration: InputDecoration(
        hintText: "Username",
        suffixIcon: CustomSuffixIcon(iconPath: "assets/icons/Mail.svg",),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }
}
