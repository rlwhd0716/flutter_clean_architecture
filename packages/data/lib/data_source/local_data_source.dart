import 'package:data/data.dart';

abstract class LocalDataSource {
  Future<List<CodeResponse>> getCodeSido();
}
