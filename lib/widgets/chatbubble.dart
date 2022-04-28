import 'package:flutter/material.dart';
import 'package:whatsappclone/models/chatbubblemodel.dart';

class chatbubble extends StatefulWidget {
  chatbubble({Key? key, required this.singlemessage}) : super(key: key);
  ChatBubbleModel singlemessage;

  @override
  State<chatbubble> createState() => _chatbubbleState();
}

class _chatbubbleState extends State<chatbubble> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: widget.singlemessage.issend == true
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 100),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
          color: widget.singlemessage.issend == true
              ? Color.fromARGB(255, 235, 248, 221)
              : Colors.white,
          child: Stack(
            children: [
              Positioned(
                child: Row(
                  children: [
                    Text(
                      widget.singlemessage.time,
                      style: TextStyle(fontSize: 12),
                    ),
                    widget.singlemessage.issend == true
                        ? widget.singlemessage.isdelivered == true
                            ? Icon(
                                Icons.done_all,
                                size: 20,
                                color: widget.singlemessage.isreaded == true
                                    ? Colors.blue
                                    : Colors.black,
                              )
                            : Icon(
                                Icons.done,
                                size: 20,
                              )
                        : Container()
                  ],
                ),
                bottom: 5,
                right: 5,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 85, 10),
                child: Text(
                  widget.singlemessage.message,
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
          margin: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
