class EventModel {
  String? id;
  List<String>? coachId;
  String? title;
  String? type;
  int? durationByMinutes;
  String? sessionType;
  String? imageUrl;

  EventModel({
    this.id,
    this.coachId,
    this.title,
    this.type,
    this.durationByMinutes,
    this.sessionType,
    this.imageUrl,
  });

  EventModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    coachId = json['fields']['coachId'].cast<String>();
    title = json['fields']['title'];
    type = json['fields']['type'];
    durationByMinutes = json['fields']['durationByMinutes'];
    sessionType = json['fields']['sessionType'];
    imageUrl = json['fields']['imageUrl'];
  }
}
