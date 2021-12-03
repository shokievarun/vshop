import 'package:flutter/material.dart';
import 'package:flybuy/components/no_account_text.dart';

import '../../../constants.dart';
import '../sign_up_screen.dart';
import './sign_up_form.dart';
import '../../../size_config.dart';
import '../../../components/social_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.0),
                Text(
                  "Register",
                  style: TextStyle(color:Colors.green,fontSize: 30,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,

                ),
                SizedBox(height: SizeConfig.screenHeight * 0.06),
                SignUpForm(),
                SizedBox(height: getProportionateScreenHeight(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already a user?"),
                TextButton(
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.bold,fontSize: 16),
                  ),
                  onPressed: () => Navigator.pop(context)
                ),
              ],
            ),             ],
            ),
          ),
        ),
      ),
    );
  }
}
