import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
//import 'package:flutter/src/widgets/framework.dart';

class NewsecretchatPage extends StatelessWidget {
  const NewsecretchatPage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: const BackButton(),
        title: const Text('New Secret Chat'),
        backgroundColor: Colors.teal[500],
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          //ignore:prefer_const_literals_to_create_immutables
          children: [
            const Padding(padding: EdgeInsets.all(10)),
            contacts('Abel'),
            const Divider(
              indent: 50,
            ),
            contacts('Adis'),
            const Divider(
              indent: 50,
            ),
            contacts('Abeni'),
            const Divider(
              indent: 50,
            ),
            contacts('Abigu'),
            const Divider(
              indent: 50,
            ),
            contacts('Aman'),
            const Divider(
              indent: 50,
            ),
            contacts('Amen'),
            const Divider(
              indent: 50,
            ),
            contacts('Asher'),
            const Divider(
              indent: 50,
            ),
            contacts('Beki'),
            const Divider(
              indent: 50,
            ),
            contacts('Beti T'),
            const Divider(
              indent: 50,
            ),
            contacts('Beselot'),
            const Divider(
              indent: 50,
            ),
            contacts('Dibo'),
            const Divider(
              indent: 50,
            ),
            contacts('Eden'),
            const Divider(
              indent: 50,
            ),
            contacts('Eyoab'),
            const Divider(
              indent: 50,
            ),
            contacts('Fiker'),
            const Divider(
              indent: 50,
            ),
            contacts('Feven'),
            const Divider(
              indent: 50,
            ),
          ],
        ),
      ),
    ));
  }
}

Widget contacts(String title) {
  return Material(
    child: ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.black,
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: const Text('last seen recently'),
    ),
  );
}
