import 'package:flutter/material.dart';

class NewGroupPage extends StatelessWidget {
  const NewGroupPage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: const BackButton(),
        title: Column(
          children: const <Widget>[
            Text(
              'New Group',
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'up to 200000 members',
              style: TextStyle(color: Colors.white54, fontSize: 15),
            ),
          ],
        ),
        backgroundColor: Colors.teal[500],
      ),
      body: SingleChildScrollView(
        child: Column(
          //ignore:prefer_const_literals_to_create_immutables
          children: [
            const Padding(padding: EdgeInsets.all(10)),
            const Text(
              'who would you like to add?',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const Divider(),
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
