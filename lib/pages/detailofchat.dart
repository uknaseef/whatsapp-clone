import 'package:flutter/material.dart';
import 'package:whatsappclone/models/chat_model.dart';
import 'package:whatsappclone/models/chatbubblemodel.dart';
import 'package:whatsappclone/widgets/chatbubble.dart';
import 'package:whatsappclone/widgets/chatinputs.dart';
import 'package:whatsappclone/widgets/utilitywidgets.dart';

class chatdetail extends StatelessWidget {
  chatdetail({Key? key, required this.chatname}) : super(key: key);

  Chatmodel chatname;

  List<ChatBubbleModel> chatdetaillist = [
    ChatBubbleModel(
        message: "where are you iam here come fast we can go",
        time: "10:00 am",
        isdelivered: true,
        isreaded: true,
        issend: true),
    ChatBubbleModel(
        message: "iam here",
        time: "10:01 am",
        isdelivered: false,
        isreaded: false,
        issend: false),
    ChatBubbleModel(
        message: "come here",
        time: "10:05 am",
        isdelivered: true,
        isreaded: false,
        issend: true),
    ChatBubbleModel(
        message: "kjdhsj",
        time: "10:05 Pm",
        isdelivered: false,
        isreaded: false,
        issend: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00796B),
        leading: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: InkWell(
            child: Row(
              children: [
                Icon(Icons.arrow_back),
                CircleAvatar(
                  backgroundImage: chatname.avatar == ""
                      ? AssetImage(chatname.isgroup == true
                          ? "assets/images/icon.webp"
                          : "assets/images/personal.jpg") as ImageProvider
                      : NetworkImage(chatname.avatar.toString()),
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(
                  context); //come back from a page ,to work that arrow//
            },
          ),
        ),
        leadingWidth: 80,
        titleSpacing: 0,
        title: Column(
          children: [
            Text(chatname.name.toString()),
            Text(
              "online",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        actions: [
          InkWell(
            child: Icon(Icons.video_call),
            onTap: () {},
          ),
          utilitywidget().Widthspacer(15),
          InkWell(
            child: Icon(Icons.call),
            onTap: () {},
          ),
          utilitywidget().Widthspacer(2),
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(child: Text("View contact")),
              PopupMenuItem(child: Text("Media,links,and docs")),
              PopupMenuItem(child: Text("Search")),
              PopupMenuItem(child: Text("Mute notification")),
              PopupMenuItem(child: Text("Wallpaper")),
              PopupMenuItem(child: Text("More")),
            ];
          })
        ],
      ),
      body: Container(
        color: Colors.blueGrey,
        child: Stack(
          children: [
            Image.asset(
              "assets/images/chatbg.jpeg",
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            // chatbubble()
            ListView.builder(
              itemBuilder: (context, index) {
                return chatbubble(
                  singlemessage: chatdetaillist[index],
                );
              },
              itemCount: chatdetaillist.length,
            ),
            chatInputs()
          ],
        ),
      ),
    );
  }
}
