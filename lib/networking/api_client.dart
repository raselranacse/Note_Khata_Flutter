import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:note_khata/utils/AppConstant.dart';


enum Method { POST, GET, PUT, DELETE, PATCH }

class ApiClient {
  static var header = {'token': 'token value'};

  static Future getFormDataWithHeader({@required String url}) async {
    loadingIndicator();
    var uri = Uri.parse(url);
    var headers = header;
    var request = http.Request('GET', uri);

    request.headers.addAll(headers);

    http.StreamedResponse streamedResponse = await request.send();
    final response = await http.Response.fromStream(streamedResponse);
    Get.back();
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      showData(url: url, method: Method.GET, response: response.body.toString());
      if (responseData.containsKey("error")) {
        errorSnackbar(responseData["error"]);
        return null;
      } else {
        return response.body;
      }
    } else {
      errorSnackbar("internal_server_error".tr);
      return null;
    }
  }

  static Future postFormData({
    @required String url,
    Map<String, String> body,
    Method method = Method.POST,
    bool enableHeader = false,
  }) async {

    loadingIndicator();
    var uri = Uri.parse(url);
    var request;

    try {
      if (enableHeader) {
        request = new http.MultipartRequest("POST", uri)
          ..headers.addAll(header)
          ..fields.addAll(body);
      } else {
        request = new http.MultipartRequest("POST", uri)..fields.addAll(body);
      }
      final streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);
      Get.back();
      final Map<String, dynamic> responseData = json.decode(response.body);
      showData(url: url, body: body, method: method, response: response.body.toString());
      if (response.statusCode == 200) {
        if (responseData.containsKey(AppConstant.error_key)) {
          Get.back();
          errorSnackbar(responseData[AppConstant.error_key]);
          return null;
        } else {
          return response.body;
        }
      } else {
        errorSnackbar("internal_server_error".tr);
        return null;
      }
    } catch (e) {
      errorSnackbar("something_wrong".tr);
      return null;
    }
  }

  static void showData({String url, var body, String response, Method method}) {
    if (!kReleaseMode) {
      print("URL = $url");
      print("Body = $body");
      print("Method = $method");
      print("Response = $response");
    }
  }
}
