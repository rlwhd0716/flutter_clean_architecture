import 'package:drift/drift.dart';

@DataClassName('CodeEntry')  // DB 모델과 Dart 모델 이름을 분리
class Codes extends Table {
  TextColumn get code => text().withLength(min: 1, max: 20)();
  TextColumn get codeDescriptor => text().withLength(min: 1, max: 255)();
  TextColumn get codeName => text().withLength(min: 1, max: 255)();
  TextColumn get upperCode => text().withLength(min: 1, max: 20)();

  @override
  Set<Column> get primaryKey => {code};
}
