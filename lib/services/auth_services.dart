import 'dart:convert';

import 'package:nov23/api_client/api_client.dart';
import 'package:nov23/utils/api_constants.dart';

class AuthServices {
  final ApiClient _apiClient = ApiClient();
  signup() {
    final response = await _apiClient.sendData(
      method: Post,
      url: ApiConstants.login,
      headers: {

      },
      body: {

      },
    );
  }

  signin() {}

  signout() {}
}
