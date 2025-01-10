/// Model
/// Data에서 받아온 데이터를 기반으로 화면단에서 사용할 수 있도록 정의해놓은 클래스
/// Created On 2025-01-03
class PostModel {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  PostModel(this.userId, this.id, this.title, this.body);
}
