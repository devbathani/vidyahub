import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/practise_controller.dart';

class PractiseView extends GetView<PractiseController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'PractiseView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
