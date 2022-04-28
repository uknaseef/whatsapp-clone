// To parse this JSON data, do
//
//     final chatBubbleModel = chatBubbleModelFromJson(jsonString);

import 'dart:convert';

ChatBubbleModel chatBubbleModelFromJson(String str) => ChatBubbleModel.fromJson(json.decode(str));

String chatBubbleModelToJson(ChatBubbleModel data) => json.encode(data.toJson());

class ChatBubbleModel {
    ChatBubbleModel({
        required this.message,
       required this.time,
       required this.isdelivered,
      required  this.isreaded,
       required this.issend,
    });

    String message;
    String time;
    bool isdelivered;
    bool isreaded;
    bool issend;

    factory ChatBubbleModel.fromJson(Map<String, dynamic> json) => ChatBubbleModel(
        message: json["message"],
        time: json["time"],
        isdelivered: json["isdelivered"],
        isreaded: json["isreaded"],
        issend: json["issend"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "time": time,
        "isdelivered": isdelivered,
        "isreaded": isreaded,
        "issend": issend,
    };
}
