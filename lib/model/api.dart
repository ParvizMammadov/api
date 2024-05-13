import 'package:api/model/user_model.dart';
import 'package:dio/dio.dart';

class GetApi {
  Future<List<UserModel>> getApi() async {
    var url = 'https://api.npoint.io/fe11db382054cf4efc32';

    try {
      final response = await Dio().get(url);
      if (response.statusCode == 200) {
        return response.data
            .map<UserModel>((e) => UserModel.fromJson(e))
            .toList();
      }
    } catch (e) {
      ('error');
    }
    return [];
  }
}
