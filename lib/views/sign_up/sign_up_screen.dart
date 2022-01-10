import 'package:dokan/component/custom_button.dart';
import 'package:dokan/component/custom_textfield.dart';
import 'package:dokan/component/social_button.dart';
import 'package:dokan/utils/app_color.dart';
import 'package:dokan/utils/icon_path.dart';
import 'package:dokan/utils/text_style.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {

  static const String path = "/SignUpScreen";
  const SignUpScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       body: Padding(
         padding: const EdgeInsets.all(15.0),
         child: Column(
           children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      child: PhysicalShape(
                        color: Colors.white,
                        shadowColor: AppColor.primaryColor,
                        elevation: 10,
                        clipper: ShapeBorderClipper(shape: CircleBorder()),
                        child: Container(
                          height: 80,
                          width: 80,
                          child: Image.asset(AssetIcon.person),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(
                        45, 45
                      ),
                      child: ElevatedButton(
                          onPressed: () {
    
                          },
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: 18,
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(), 
                            primary: AppColor.primaryColor
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 52,),
              CustomTextField(
                hintText: "User Name",
                prefixIcon: Image.asset(AssetIcon.profile),
              ),
              SizedBox(height: 19,),
              CustomTextField(
                hintText: "Email",
                prefixIcon: Image.asset(AssetIcon.email),
              ),
              SizedBox(height: 19,),
              CustomTextField(
                hintText: "Password",
                prefixIcon: Image.asset(AssetIcon.lock),
              ),    
              SizedBox(height: 19,),
              CustomTextField(
                hintText: "Confrim Password",
                prefixIcon: Image.asset(AssetIcon.lock),
              ),
              SizedBox(height: 72,),

              CustomButton(
                onTap: (){},
                color: AppColor.primaryColor,
                buttonLevel: "Sign Up",
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
           SizedBox(height: 52,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an acccount?", style: kAlreadyHaveAnAccount(),),
                TextButton(
                  onPressed: (){}, 
                  child: Text("Login")
                )
              ],
            )
              
              
           ],
         ),
       ),
      ),
    );
  }


}

