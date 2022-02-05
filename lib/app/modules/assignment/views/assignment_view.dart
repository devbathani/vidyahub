import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/assignment_controller.dart';

class AssignmentView extends GetView<AssignmentController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AssignmentView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AssignmentView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
