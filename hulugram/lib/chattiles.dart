import 'package:flutter/material.dart';

final List<Chats> items = [
  const Chats(
      name: 'beti',
      message: 'hiiiii',
      time: '10:39',
      imgPath: 'images/p.jpg',
      status: true,
      messNum: 2),
  const Chats(
      name: 'jerry',
      message: 'hellooo',
      time: '10:39',
      imgPath: 'images/p.jpg',
      status: true,
      messNum: 2),
  const Chats(
      name: 'jerry twins ',
      message: 'snt seat nw?',
      time: 'Feb 12',
      imgPath: 'images/p.jpg',
      status: false,
      messNum: 4),
  const Chats(
      name: 'bety twins',
      message: 'hey',
      time: '12:12',
      imgPath: 'images/p.jpg',
      status: false,
      messNum: 20),
  const Chats(
      name: 'dibo',
      message: 'mech nw mihonew',
      time: '6:11',
      imgPath: 'images/pic.jpg',
      status: true,
      messNum: 5),
  const Chats(
      name: 'samri ',
      message: 'bezii samnt',
      time: 'Jan 1',
      imgPath: 'images/pic.jpg',
      status: true,
      messNum: 5),
  const Chats(
      name: 'Heven',
      message: 'yhuna',
      time: '4:00',
      imgPath: 'images/pic.jpg',
      status: true,
      messNum: 4),
  const Chats(
      name: 'feven',
      message: 'ut sunt sequi',
      time: 'Dec 10',
      imgPath: 'images/p.jpg',
      status: false,
      messNum: 2),
  const Chats(
      name: 'Crstina',
      message: 'hjljhlh',
      time: '4:30',
      imgPath: 'images/p.jpg',
      status: false,
      messNum: 6),
  const Chats(
      name: 'tesfu',
      message: 'et laborum mollitia',
      time: '6:00',
      imgPath: 'images/p.jpg',
      status: true,
      messNum: 4),
];

class Chats extends StatefulWidget {
  const Chats(
      {super.key,
      required this.name,
      required this.message,
      required this.time,
      required this.imgPath,
      required this.status,
      required this.messNum});
  final String name;
  final String message;
  final String time;
  final String imgPath;
  final bool status;
  final int messNum;
  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) => const DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.blueGrey,
        ),
      );
}
