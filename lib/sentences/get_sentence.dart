import 'package:dio/dio.dart';

import '../models/characters.dart';

class SentenceRepository {
  final Dio dio = Dio();

  Future<List<Characters>> getList() async {
    final response =
        await dio.get('https://hp-api.herokuapp.com/api/characters');

    final data = List.from(response.data);

    final mapList = data.map((e) => Map<String, dynamic>.from(e)).toList();

    return mapList.map((e) => Characters.fromMap(e)).toList();
  }
}
