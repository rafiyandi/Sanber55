import 'package:dio/dio.dart';
import 'package:sanberapp_55/models/user_model.dart';

class UserService {
  Dio dio = Dio();
  static const url = 'https://reqres.in/api/users';

  Future<List<UserModel>> fetchDataUser() async {
    try {
      final response = await dio.get(
        url,
        options: Options(
          headers: {
            'Accept': 'aplication/json',
          },
        ),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data['data'];
        List<UserModel> users =
            List<UserModel>.from(data.map((e) => UserModel.fromJson(e)));
        return users;
      }
      throw Exception();
    } catch (e) {
      rethrow;
    }
  }
}
