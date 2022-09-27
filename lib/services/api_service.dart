import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:jobsgo/config.dart';
import 'package:jobsgo/models/login_request_model.dart';
import 'package:jobsgo/models/login_response_model.dart';
import 'package:jobsgo/models/register_request_model.dart';
import 'package:jobsgo/models/register_response_model.dart';
import 'package:jobsgo/models/user_model.dart';
import 'package:jobsgo/services/shared_service.dart';

class APIService {
  static var client = http.Client();

  static Uri getUri(content) {
    if (Config.isProductMode) {
      return Uri.https(Config.apiURL, content);
    }
    return Uri.http(Config.apiURL, content);
  }

  static Future<bool> login(LoginRequestModel model) async {
    Map<String, String> requestHeader = {
      'Content-Type': 'application/json',
    };

    var url = getUri(Config.loginAPI);

    var response = await client.post(url,
        headers: requestHeader, body: jsonEncode(model.toJson()));

    if (response.statusCode == 200) {
      await SharedService.setLoginDetails(
          loginResponseModelFromJson(response.body));
      return true;
    } else {
      return false;
    }
  }

  static Future<RegisterResponseModel> register(
      RegisterRequestModel model) async {
    Map<String, String> requestHeader = {
      'Content-Type': 'application/json',
    };

    var url = getUri(Config.registerAPI);

    var response = await client.post(url,
        headers: requestHeader, body: jsonEncode(model.toJson()));

    return registerResponseModelFromJson(response.body);
  }

  static Future<UserModel> getUserProfile() async {
    var loginDetails = await SharedService.loginDetails();

    Map<String, String> requestHeader = {
      'Content-Type': 'application/json',
      'token': 'Bearer ${loginDetails?.accessToken}',
    };

    var url = getUri(Config.profileAPI);

    var response = await client.get(url, headers: requestHeader);

    return userModelFromJson(response.body);
  }

  static Future<List<UserModel>> getListUserChated() async {
    List<UserModel> listUsers = [];

    listUsers.add(exampleUser(username: 'tanhnee'));
    listUsers.add(exampleUser(username: 'tanhne'));
    listUsers.add(exampleUser(username: 'tanhhh'));
    listUsers.add(exampleUser(username: 'tanhnee'));
    listUsers.add(exampleUser(username: 'tanhne'));
    listUsers.add(exampleUser(username: 'tanhhh'));
    listUsers.add(exampleUser(username: 'tanhnee'));
    listUsers.add(exampleUser(username: 'tanhne'));
    listUsers.add(exampleUser(username: 'tanhhh'));

    //test call api to get feel of waiting =))))))
    var loginDetails = await SharedService.loginDetails();

    Map<String, String> requestHeader = {
      'Content-Type': 'application/json',
      'token': 'Bearer ${loginDetails?.accessToken}',
    };

    var url = getUri(Config.profileAPI);

    await client.get(url, headers: requestHeader);

    return listUsers;
  }
}
