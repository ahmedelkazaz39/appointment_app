import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/image_manage.dart';
import '../../../core/theme/styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Stack(
        children: [
          SvgPicture.asset(ImageManager.docDocLogoLowOpacty),
          Container(
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.white.withOpacity(0.0),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: const [.14, .4])),
            child: Image.asset(ImageManager.doctorImage),
          ),
          Positioned(
            bottom: 0.h,
            left: 0,
            right: 0,
            child: Text(
              'Best Doctor\nAppointment App',
              textAlign: TextAlign.center,
              style: TextStyles.font32BoldBlue.copyWith(
                  // height: 1.4.h,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
