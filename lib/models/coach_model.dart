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

  factory CoachModel.fromJson(Map<String, dynamic> json) => CoachModel(
        id: json['coachId'],
        userName: json['userName'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        role: json['role'],
        imageUrl: json['imageUrl'],
      );
}
