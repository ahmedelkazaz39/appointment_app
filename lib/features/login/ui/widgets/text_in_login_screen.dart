import 'package:appointment_app/core/helper/spaces.dart';
import 'package:appointment_app/core/theme/styles.dart';
import 'package:flutter/material.dart';

class TextInLoginScreen extends StatelessWidget {
  const TextInLoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome Back',
          style: TextStyles.font24BoldBlue,
        ),
        verticalSpaces(8),
        Text(
          'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
          style: TextStyles.font14RegularLightGrey,
        ),
      ],
    );
  }
}
