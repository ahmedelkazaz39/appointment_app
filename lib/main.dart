import 'package:flutter/material.dart';

import 'core/routing/app_route.dart';
import 'doc_doc_app.dart';

void main() {
  runApp(
    DocDocApp(
      appRouter: AppRouter(),
    ),
  );
}
// void main() {
//   runApp(
//     DevicePreview(
//       builder: (context) {
//         return DocDocApp(
//           appRouter: AppRouter(),
//         );
//       },
//     ),
//   );
// }

