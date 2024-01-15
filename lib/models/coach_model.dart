class CoachModel {
  String? id;
  String? userName;
  String? firstName;
  String? lastName;
  String? role;
  String? imageUrl;

  CoachModel({
    this.id,
    this.userName,
    this.firstName,
    this.lastName,
    this.role,
    this.imageUrl,
  });

  CoachModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['fields']['userName'];
    firstName = json['fields']['firstName'];
    lastName = json['fields']['lastName'];
    role = json['fields']['role'];
    imageUrl = json['fields']['imageUrl'];
  }
}
