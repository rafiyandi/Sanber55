import 'package:dio/dio.dart';

import '../models/failure.dart';

class DioException implements Exception {
  late Failure failure;
  DioException.fromDioError(
      {required DioError dioError, bool isResponseFromAPI = false}) {
    switch (dioError.type) {
      case DioErrorType.connectTimeout:
        failure = Failure(
            status: dioError.response?.statusCode ?? 408,
            message: 'Connection Timeout.\nsilahkan coba lagi.');
        break;

      case DioErrorType.sendTimeout:
        failure = Failure(
            status: dioError.response?.statusCode ?? 408,
            message: 'Request send timeout.');
        break;
      case DioErrorType.receiveTimeout:
        // TODO: Handle this case.
        failure = Failure(
            status: dioError.response?.statusCode ?? 0,
            message: 'Receiving timeout occurred.\nSilahkan coba lagi.');
        break;
      case DioErrorType.response:
        failure = isResponseFromAPI
            ? _handleFromAPI(
                dioError: dioError, isResponseFromAPI: isResponseFromAPI)
            : Failure(
                status: dioError.response?.statusCode ?? 0,
                message: _handleStatusCode(
                  dioError: dioError,
                ));
        break;
      case DioErrorType.cancel:
        // TODO: Handle this case.
        failure = Failure(
            status: dioError.response?.statusCode ?? 0,
            message:
                'Request to the server was cancelled.\nsilahkan coba lagi.');
        break;
      case DioErrorType.other:
        if (dioError.message.contains('SocketException')) {
          failure = Failure(
              status: dioError.response?.statusCode ?? 0,
              message: 'No Internet.\nSilahkan coba lagi.');
          break;
        }
        failure = Failure(
            status: dioError.response?.statusCode ?? 0,
            message: 'Unexpected error occurred.\nsilahkan coba lagi.');
        break;
      default:
        failure = Failure(
            status: dioError.response?.statusCode ?? 0,
            message: 'Something went wrong.\nSilahkan coba lagi.');
    }
  }
  Failure _handleFromAPI(
      {required DioError dioError, required bool isResponseFromAPI}) {
    return Failure(
        status: dioError.response?.data['status_code'],
        message: dioError.response?.data['message']);
  }

  String _handleStatusCode({
    required DioError dioError,
  }) {
    switch (dioError.response!.statusCode) {
      case 400:
        return 'Bad request.\nSilahkan coba lagi.';
      case 401:
        return 'Authentication failed.\nSilahkan coba lagi.';

      case 403:
        return 'Silahkan coba lagi.';
      case 404:
        return 'Not Found.\nSilahkan coba lagi.';
      case 405:
        return 'Method not allowed. Please check the Allow header for the allowed HTTP methods.\nSilahkan coba lagi';
      case 415:
        return 'Unsupported media type. The requested content type or version number is invalid.\nSilahkan coba lagi';
      case 422:
        return 'Data validation failed. \nSilahkan coba lagi.';
      case 429:
        return 'Too many requests.\nSilahkan coba lagi.';
      case 500:
        return 'Internal server error.\nSilahkan coba lagi.';
      default:
        return 'Oops something went wrong! \nSilahkan coba lagi';
    }
  }

  @override
  String toString() => failure.message;
}
