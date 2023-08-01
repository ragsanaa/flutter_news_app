// ignore_for_file: public_member_api_docs, sort_constructors_first
class Following {
  final String title;
  final String description;
  final String image;
  final bool isManage;
  Following({
    this.title = '',
    required this.description,
    required this.image,
    this.isManage = false,
  });
}
