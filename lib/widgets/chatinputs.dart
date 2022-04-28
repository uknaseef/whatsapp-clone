import 'package:emoji_picker/emoji_picker.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/widgets/utilitywidgets.dart';

class chatInputs extends StatefulWidget {
  const chatInputs({Key? key}) : super(key: key);

  @override
  State<chatInputs> createState() => _chatInputsState();
}

class _chatInputsState extends State<chatInputs> {
  bool showsend = false;

  bool showimogi = false;

  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        setState(() {
          showimogi == false;
        });
      }
    });
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 55,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: TextField(
                    focusNode: focusNode,
                    onChanged: (value) {
                      print(value);
                      if (value.length > 0) {
                        setState(() {
                          showsend = true;
                        });
                      } else {
                        setState(() {
                          showsend = false;
                        });
                      }
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(fontSize: 15),
                      hintText: "Message",
                      prefixIcon: IconButton(
                        onPressed: () {
                          focusNode.unfocus();
                          setState(() {
                            showimogi = !showimogi;
                          });
                        },
                        icon: Icon(showimogi == false
                            ? Icons.emoji_emotions_outlined
                            : Icons.keyboard),
                        color: Colors.grey,
                      ),
                      suffixIcon: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.attach_file),
                            onPressed: () {
                              showModalBottomSheet(
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (context) {
                                    return Menu();
                                  });
                            },
                          ),
                          utilitywidget().Widthspacer(10),
                          const Icon(Icons.camera_alt),
                          utilitywidget().Widthspacer(10)
                        ],
                        mainAxisSize: MainAxisSize.min,
                      ),
                    ),
                  ),
                ),
              ),
              CircleAvatar(
                radius: 20,
                child: showsend == true ? Icon(Icons.send) : Icon(Icons.mic),
                backgroundColor: Color(0xFF00796B),
              ),
            ],
          ),
        ),
        focusNode.hasFocus
            ? Container()
            : showimogi == true
                ? selectEmoji()
                : Container()
      ],
    );
  }

  Widget selectEmoji() {
    return EmojiPicker(
      onEmojiSelected: (emoji, category) {
        print(category);
      },
    );
  }

  Widget Menu() {
    return Container(
      height: 320,
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: EdgeInsets.fromLTRB(10, 10, 10, 60),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(children: [
            Row(
              children: [
                iconwidget(
                    Icon(Icons.insert_drive_file), Colors.indigo, "Document",
                    () {
                  print("document");
                }),
                iconwidget(
                    Icon(Icons.camera_alt), Colors.pink, "Camera", () {}),
                iconwidget(Icon(Icons.insert_photo),
                    Color.fromARGB(255, 114, 5, 134), "Gallery", () {})
              ],
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                iconwidget(
                    Icon(Icons.headphones), Colors.orange, "Audio", () {}),
                iconwidget(
                    Icon(Icons.location_pin), Colors.teal, "Location", () {}),
                iconwidget(
                    Icon(Icons.contact_page), Colors.blue, "Contact", () {})
              ],
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            )
          ]),
        ),
      ),
    );
  }
}

Widget iconwidget(Icon icon, Color color, String text, Function fun) {
  return GestureDetector(
    onTap: () {
      fun();
    },
    child: Column(
      children: [
        CircleAvatar(
          child: icon,
          backgroundColor: color,
          radius: 30,
        ),
        SizedBox(
          height: 10,
        ),
        Text(text)
      ],
    ),
  );
}
