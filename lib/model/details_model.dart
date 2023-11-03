
import 'dart:convert';

List<DetailsModelMeta> detailsModelMetaFromJson(String str) => List<DetailsModelMeta>.from(json.decode(str).map((x) => DetailsModelMeta.fromJson(x)));

String detailsModelMetaToJson(List<DetailsModelMeta> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DetailsModelMeta {
    int? userId;
    int? id;
    String? title;
    String? body;

    DetailsModelMeta({
        this.userId,
        this.id,
        this.title,
        this.body,
    });

    factory DetailsModelMeta.fromJson(Map<String, dynamic> json) => DetailsModelMeta(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
    };
}
