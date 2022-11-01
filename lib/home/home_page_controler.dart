import '../sentences/get_sentence.dart';

class SentenceController {
  final SentenceRepository repository;

  SentenceController({required this.repository});

  Future<List<dynamic>> getList() async {
    return await repository.getList();
  }
}
