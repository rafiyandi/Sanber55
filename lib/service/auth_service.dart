import 'package:dio/dio.dart';
import 'package:sanberapp_55/models/request/login_request_model.dart';
import 'package:sanberapp_55/storage/auth_storage.dart';

class AuthService {
  Dio dio = Dio();
  static const url = 'https://reqres.in/api/login';

  Future<String> signinWithEmailAndPassword(
      {required LoginRequestModel request}) async {
    try {
      final response = await dio.post(url,
          options: Options(
            headers: {
              'Accept': 'aplication/json',
            },
          ),
          data: request.toJson());

      if (response.statusCode == 200 || response.statusCode == 201) {
        String data = response.data['token'];
        AuthStorage().storeCredentialToLocal(data);

        return data;
      }
      throw Exception();
    } catch (e) {
      rethrow;
    }
  }
}
