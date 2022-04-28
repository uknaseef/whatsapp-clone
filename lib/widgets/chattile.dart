import 'package:flutter/material.dart';
import 'package:whatsappclone/models/chat_model.dart';
import 'package:whatsappclone/pages/detailofchat.dart';

class Chattile extends StatelessWidget {
  Chattile({Key? key, required this.chatdata}) : super(key: key);
  Chatmodel chatdata;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: chatdata.avatar == ''
              ? AssetImage(chatdata.isgroup == true
                  ? "assets/images/icon.webp"
                  : "assets/images/personal.jpg") as ImageProvider
              : NetworkImage(chatdata.avatar.toString()),
          radius: 20,
        ),
        title: Text(chatdata.name),
        subtitle: Text(chatdata.message),
        trailing: Text(chatdata.updatedat),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return chatdetail(
                chatname: chatdata,
              );
            },
          ),
        );
      },
    );
  }
}
