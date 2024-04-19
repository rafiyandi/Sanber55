import 'package:get/get.dart';

import '../models/user_model.dart';
import '../service/user_service.dart';

class UserController extends GetxController {
  List<UserModel> users = [];

  @override
  void onInit() {
    super.onInit();

    fetchDataUsers();
  }

  Future<void> fetchDataUsers() async {
    print("hallo pak eko");

    users = await UserService().fetchDataUser();
    print('Data Users ${users.length}');
    update();
  }
}
