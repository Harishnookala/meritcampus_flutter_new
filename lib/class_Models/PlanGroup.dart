class PlanGroup {
  String groupName;
  String topicNumber;
  int groupId;
  bool isTopic;
  List<Children> children;

  PlanGroup(
      {this.groupName,
        this.topicNumber,
        this.groupId,
        this.isTopic,
        this.children});

  PlanGroup.fromJson(Map<String, dynamic> json) {
    groupName = json['group_name'];
    topicNumber = json['topic_number'];
    groupId = json['group_id'];
    isTopic = json['is_topic'];
    if (json['children'] != null) {
      children = new List<Children>();
      json['children'].forEach((v) {
        children.add(new Children.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['group_name'] = this.groupName;
    data['topic_number'] = this.topicNumber;
    data['group_id'] = this.groupId;
    data['is_topic'] = this.isTopic;
    if (this.children != null) {
      data['children'] = this.children.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Children {
  String topicNumber;
  bool isTopic;
  String topicTitle;
  int topicId;

  Children({this.topicNumber, this.isTopic, this.topicTitle, this.topicId});

  Children.fromJson(Map<String, dynamic> json) {
    topicNumber = json['topic_number'];
    isTopic = json['is_topic'];
    topicTitle = json['topic_title'];
    topicId = json['topic_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['topic_number'] = this.topicNumber;
    data['is_topic'] = this.isTopic;
    data['topic_title'] = this.topicTitle;
    data['topic_id'] = this.topicId;
    return data;
  }
}
