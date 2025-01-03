import 'dart:async';

import '../data.dart';

/**
 * Restful API
 * Remote Data Source Implements
 * Created On 2025-01-03
 **/
class RemoteDataSourceImpl implements RemoteDataSource {
  final ApiService _apiService;

  RemoteDataSourceImpl(this._apiService);

  /// BaseResponse 를 사용하지 않고 바로 Body로 받아오는 경우 예시
  @override
  Future<List<Posts>> getPosts() async {
    final response = await _apiService.getPosts();
    return response.body ?? [];
  }

  /// BaseResponse 를 사용하는 경우 예시
  /* Future<List<UserData>> getUser(String id) async {
     List<UserData> list = [];
     final response = await _apiService.getUsers(id);
     if (response.body != null) {
       for (var result in response.body!.resultData!) {
         list.add(UserData.fromJson(result));
       }
     }
     return list;
   } */
}
