import 'package:data/database/mapper/code_mapper.dart';
import 'package:data/responses/code/sido/code_response.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

import 'package:data/database/database.dart';

part 'code_dao.g.dart';

@injectable
@DriftAccessor(tables: [Codes])
class CodeDao extends DatabaseAccessor<AppDatabase> with _$CodeDaoMixin {
  final AppDatabase db;
  CodeDao(this.db) : super(db);

  Future<List<CodeResponse>> getAllCodes() async {
    final entries = await select(codes).get();
    return entries.map((e) => e.toResponse()).toList();
  }

  // Stream<List<CodeResponse>> watchCodes() {
  //   return select(codes).watch().map((entries) => entries.map((e) => e.toModel()).toList());
  // }
  //
  // Future<void> insertCode(CodeResponse code) {
  //   return into(codes).insert(code.toCompanion());
  // }
  //
  // Future<void> updateCode(CodeResponse code) {
  //   return update(codes).replace(code.toCompanion());
  // }
}
