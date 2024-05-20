import 'package:bin_omaira_motors/app_config/app_end_points.dart';
import 'package:bin_omaira_motors/network/network_layer.dart';

abstract class RegisterRepository {
  static Future signUp({required Map<String, dynamic> body}) async {
    return await Network().request(
      Endpoints.REGISTER,
      body: body,
      method: ServerMethods.POST,
    );
  }
}
