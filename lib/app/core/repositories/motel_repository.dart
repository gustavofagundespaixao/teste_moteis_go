import 'package:teste_moteis_go/app/core/client/app_client.dart';
import 'package:teste_moteis_go/app/core/models/motel_model.dart';
import 'package:teste_moteis_go/app/core/models/result_model.dart';

class MotelRepository {
  final AppClient _client = AppClient();

  Future<List<MotelModel>> get() async {
    try {
      final result = await _client.get('https://www.jsonkeeper.com/b/1IXK');

      var item = ResultModel.fromMap(result);

      return item.data?.moteis ?? [];
    } catch (e) {
      rethrow;
    }
  }
}
