import 'package:appointment_app/core/widgets/app_text_formm_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helper/spaces.dart';
import '../../../core/theme/styles.dart';
import '../../../core/widgets/app_text_button.dart';
import 'widgets/terms_and_condition_text.dart';
import 'widgets/dont_have_an_account.dart';
import 'widgets/text_in_login_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObsecuretext = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: Column(
              children: [
                const TextInLoginScreen(),
                verticalSpaces(36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AppTextFormField(
                        hintText: 'Email',
                      ),
                      verticalSpaces(18),
                      AppTextFormField(
                        hintText: 'Password',
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObsecuretext = !isObsecuretext;
                            });
                          },
                          child: Icon(isObsecuretext
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                        isObscureText: isObsecuretext,
                      ),
                      verticalSpaces(24),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password',
                          style: TextStyles.font14RegularBlue,
                        ),
                      ),
                      verticalSpaces(40),
                      AppTextButton(
                        buttonText: 'Login',
                        onPressed: () {},
                        textStyle: TextStyles.font16SemiBoldWhite,
                      ),
                      verticalSpaces(16),
                      const TermsAndConditionsText(),
                      verticalSpaces(60),
                      const DontHaveAccountText(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
