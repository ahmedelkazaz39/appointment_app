import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'core/routing/app_route.dart';
import 'doc_doc_app.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) {
        return DocDocApp(
          appRouter: AppRouter(),
        );
      },
    ),
  );
}
