import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanberapp_55/controller/user_controller.dart';
import 'package:sanberapp_55/models/user_model.dart';
import 'package:sanberapp_55/service/user_service.dart';

class UserPage extends StatelessWidget {
  var usersC = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Users Page'),
        ),
        body: GetBuilder(
          init: usersC,
          builder: (controller) => ListView.builder(
            itemCount: usersC.users.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                    '${usersC.users[index].firstName} ${usersC.users[index].lastName}'),
                leading: Image.network(usersC.users[index].avatar),
              ),
            ),
          ),
        ));
  }
}
