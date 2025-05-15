import 'package:bin_omaira_motors/app_config/app_end_points.dart';
import 'package:bin_omaira_motors/network/network_layer.dart';

abstract class VerificationRepository {
  static Future verify({required Map<String, dynamic> body}) async {
    return await Network().request(
      Endpoints.VERIFY_CODE,
      body: body,
      method: ServerMethods.POST,
    );
  }
}
