import 'package:flutter/material.dart';
import 'package:flybuy/screens/complete_profile/complete_profile_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../components/default_button.dart';
import '../../../components/custom_suffix_icon.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email, password, confirmPassword;
  final List<String> errors = [];
  bool firstSubmit = false;
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildConfirmPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          mobilenumber(),
          SizedBox(height: getProportionateScreenHeight(20)),
          otp(),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }
              firstSubmit = true;
            },
          ),
        ],
      ),
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
        suffixIcon: Padding(
          padding: EdgeInsets.fromLTRB(
            0,
            getProportionateScreenWidth(20),
            getProportionateScreenWidth(20),
            getProportionateScreenWidth(20),
          ),
          child: Icon(
            Icons.account_circle,
          ),
        ),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newPassword) => this.password = newPassword,
      onChanged: (password) {
        if (firstSubmit) _formKey.currentState.validate();
        this.password = password;
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

  TextFormField mobilenumber() {
    return TextFormField(
      onSaved: (newPassword) => this.password = newPassword,
      onChanged: (password) {
        if (firstSubmit) _formKey.currentState.validate();
        this.password = password;
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
        hintText: "Mobile Number",
        suffix: Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orange),alignment:Alignment.center,width: 80,height: 40,child: Text('Get OTP',style:TextStyle(color:Colors.white)),)
    ),);
  }



  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      onSaved: (newPassword) => this.confirmPassword = newPassword,
      onChanged: (password) {
        if (firstSubmit) _formKey.currentState.validate();
      },
      validator: (password) {
        if (password != this.password) {
          return kMatchPassError;
        }

        return null;
      },
      decoration: InputDecoration(
        hintText: "Email",
        suffixIcon: CustomSuffixIcon(iconPath: "assets/icons/Mail.svg"),
      ),
      obscureText: true,
    );


    }  TextFormField otp() {
    return TextFormField(
      onSaved: (newPassword) => this.password = newPassword,
      onChanged: (password) {
        if (firstSubmit) _formKey.currentState.validate();
        this.password = password;
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
        hintText: "OTP",
          suffix: Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black38),alignment:Alignment.center,width: 80,height: 40,child: Text('Verify',style:TextStyle(color:Colors.white)),)
      ),
      obscureText: true,
    );
  }
  }

