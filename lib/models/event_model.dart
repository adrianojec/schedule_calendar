class EventModel {
  String id;
  String imageUrl;
  String title;
  String description;
  String type;
  String sessionType;
  int durationInMinutes;
  List<String> coachId;
  List<String> idFromCoachId;

  EventModel({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.type,
    required this.sessionType,
    required this.durationInMinutes,
    required this.coachId,
    required this.idFromCoachId,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) => EventModel(
        id: json["eventId"],
        imageUrl: json["imageUrl"],
        title: json["title"],
        description: json["description"],
        type: json["type"],
        sessionType: json["sessionType"],
        durationInMinutes: json["durationByMinutes"],
        coachId: List<String>.from(json["coachId"].map((coachId) => coachId)),
        idFromCoachId: List<String>.from(json["id (from CoachId)"].map((id) => id)),
      );
}
