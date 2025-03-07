import 'package:data/data.dart';
import 'package:data/database/dao/code_dao.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: LocalDataSource)
class LocalDataSourceImpl implements LocalDataSource {
  final CodeDao _codeDao;

  LocalDataSourceImpl(this._codeDao);

  @override
  Future<List<CodeResponse>> getCodeSido() async => await _codeDao.getAllCodes();
}
