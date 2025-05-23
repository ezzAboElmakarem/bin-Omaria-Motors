// ignore_for_file: constant_identifier_names, unnecessary_string_interpolations, deprecated_member_use, no_leading_underscores_for_local_identifiers

import 'dart:io';

import 'package:bin_omaira_motors/app_config/app_config.dart';
import 'package:bin_omaira_motors/core/AppStorage.dart';
import 'package:dio/dio.dart';

import '../utility/utility.dart';
import 'mapper.dart';
import 'network_logger.dart';

enum ServerMethods { GET, POST, UPDATE, DELETE, PUT, PATCH }

class Network {
  static Network? _instance;
  static String? lang;
  static final Dio _dio = Dio();
  bool isActiveUser = true;
  Network._private();

  factory Network() {
    if (_instance == null) {
      _dio.options.connectTimeout = const Duration(seconds: 60);
      _dio.interceptors.add(NetworkLogger.logger);
      _instance = Network._private();
    }
    return _instance!;
  }

  Future<dynamic> request(
    String endpoint, {
    body,
    Mapper? model,
    Map<String, dynamic>? query,
    Map<String, dynamic>? header,
    ServerMethods method = ServerMethods.GET,
  }) async {
    String? _token = AppStorage.getToken;

    _dio.options.headers = {
      if (_token != null) 'Authorization': 'Bearer $_token',
      'Accept': 'application/json',
      "User-Agent": "Dart",
      "X-Requested-With": "XMLHttpRequest",
      'Accept-Language': lang,
    };
    if (header != null) {
      _dio.options.headers.addAll(header);
    }
    try {
      Response response = await _dio.request(
        AppConfig.BASE_URL + endpoint,
        data: body,
        queryParameters: query,
        options: Options(
          method: method.name,
        ),
      );
      isActiveUser = true;
      if (model == null) {
        return response;
      } else {
        return Mapper(model, response.data);
      }
    } on SocketException catch (e) {
      cprint(
        "SocketException: ${e.address}",
        errorIn: AppConfig.BASE_URL + endpoint,
        label: "SocketException",
      );
      cprint(
          "└------------------------------------------------------------------------------");
      cprint(
          "================================================================================");
      rethrow;
    } on DioError catch (e) {
      cprint(
        "| Error: ${e.error}: ${e.response?.toString()}",
        errorIn: "${AppConfig.BASE_URL + endpoint}",
        label: "DioError",
      );
      cprint(
          "└------------------------------------------------------------------------------");
      cprint(
          "================================================================================");
      if (model == null) {
        return e.response;
      } else {
        return Mapper(model, e.response?.data);
      }
    } catch (error) {
      cprint(
        "Unhandled Exception: $error",
        errorIn: AppConfig.BASE_URL + endpoint,
        label: "Unhandled Exception",
      );
      cprint(
          "└------------------------------------------------------------------------------");
      cprint(
          "================================================================================");
      rethrow;
    }
  }
}
