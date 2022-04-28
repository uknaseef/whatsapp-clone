import 'package:flutter/material.dart';
import 'package:whatsappclone/models/statusmodel.dart';

class statustile extends StatelessWidget {
  statustile({Key? key, required this.statusdata}) : super(key: key);
  Statusmodel statusdata;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(statusdata.avatar),
          radius: 20,
        ),
        title: Text(statusdata.name),
        subtitle: Text(statusdata.updatedinfo),
      ),
      onTap: () {},
    );
  }
}
