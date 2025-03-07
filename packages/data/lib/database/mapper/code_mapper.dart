import 'package:data/database/app_database.dart';
import 'package:data/responses/code/sido/code_response.dart';
import 'package:drift/drift.dart';

extension CodeMapper on CodeEntry {
  CodeResponse toResponse() {
    return CodeResponse(
      code: code,
      codeDescriptor: codeDescriptor,
      codeName: codeName,
      upperCode: upperCode,
    );
  }
}

extension CodeEntityMapper on CodeResponse {
  CodesCompanion toCompanion() {
    return CodesCompanion(
      code: Value(code!),
      codeDescriptor: Value(codeDescriptor!),
      codeName: Value(codeName!),
      upperCode: Value(upperCode!),
    );
  }
}
