import 'package:dokan/component/custom_button.dart';
import 'package:dokan/component/custom_textfield.dart';
import 'package:dokan/component/social_button.dart';
import 'package:dokan/utils/app_color.dart';
import 'package:dokan/utils/icon_path.dart';
import 'package:dokan/utils/text_style.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {

  static const String path = "/SignInScreen";
  const SignInScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(AssetIcon.appLogo),
                SizedBox(height: 80,),
                Text("Sign in", style: kSignIn(),),
                SizedBox(height: 41,),
                CustomTextField(
                  hintText: "Email",
                  prefixIcon: Image.asset(AssetIcon.email),
                ),
                SizedBox(height: 19,),
                CustomTextField(
                  hintText: "Password",
                  prefixIcon: Image.asset(AssetIcon.lock),
                  suffixIcon: Icon(Icons.visibility_off),
                ), 
                 SizedBox(height: 19,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: (){}, 
                      child: Text("Forgot password?")
                    ),
                  ],
                ),
                SizedBox(height: 60,),

                  CustomButton(
                    onTap: (){},
                    color: AppColor.primaryColor,
                    buttonLevel: "Sign In",
                  ),
                  SizedBox(height: 32,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialButton(
                        icon: AssetIcon.facebook,
                        onPressed: (){},
                      ),
                      SizedBox(width: 14,),
                      SocialButton(
                        icon: AssetIcon.google,
                        onPressed: (){},
                      )
                    ],
                  ),
                  SizedBox(height: 45,),
                 Text("Create a new account", style: kAlreadyHaveAnAccount(),),
    
              ],
            ),
          ),
      ),
    );
  }

}