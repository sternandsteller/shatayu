import 'package:flutter/material.dart';
import 'package:shatayu/constants/routes.dart';
import 'package:shatayu/ui/views/contact_us/contact_us_laptop.dart';
import 'package:shatayu/ui/views/treatement/treatement_laptop.dart';
import 'package:shatayu/ui/views/treatement/treatement_mobile.dart';
import 'services/service_locator.dart';
import 'ui/views/contact_us/contact_us_mobile.dart';
import 'ui/views/home/home_view.dart';
import 'ui/views/panchakarma/panchakarma_mobile.dart';

void main() {
  setupLocator();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    double height = media.size.height;
    double width = media.size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
      routes: {
        treatmentsRoute: (context) =>
            TreatementMobile(height: height, width: width),
        contactUsRoute: (context) =>
            PanchakarmaMobile(height: height, width: width),
        panchakarmaRoute: (context) =>
            ContactUsMobile(height: height, width: width),
      },
    );
  }
}
