import 'package:flutter/material.dart';

import 'components/body.dart';

class SectionScreen extends StatelessWidget {
  static String routeName = "/section";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Body(),
    );
  }
}
