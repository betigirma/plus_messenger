import 'package:flutter/material.dart';
import 'package:hulugram/peoplenearby.dart';
import 'package:hulugram/plussetting.dart';
import 'package:hulugram/savedmessage.dart';
import 'package:hulugram/secret.dart';
import 'package:hulugram/setting.dart';
import 'package:hulugram/supportgroup.dart';
import 'package:hulugram/theming.dart';
import 'calls.dart';
import 'categories.dart';
import 'channel.dart';
import 'chatfolders.dart';
import 'chatscounters.dart';
import 'contacts.dart';
import 'downloads.dart';
import 'downloadthemes.dart';
import 'newgroup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plus',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Mainpage(),
        '/first': (context) => const NewGroupPage(),
      },
    );
  }
}

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  var currentpage = DrawerSections.newgroup;
  // ignore: prefer_typing_uninitialized_variables
  var container;
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Plus Messenger'),
            backgroundColor: Colors.teal[500],
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.folder_open))
            ],
            bottom: const TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 4.0,
              tabs: [
                Tab(
                  icon: Icon(Icons.category),
                ),
                Tab(
                  icon: Icon(Icons.folder_open),
                ),
                Tab(
                  icon: Icon(Icons.folder_open),
                ),
                Tab(
                  icon: Icon(Icons.chat_bubble_outline_rounded),
                ),
                Tab(
                  icon: Icon(Icons.folder_open),
                ),
                Tab(
                  icon: Icon(Icons.folder_open),
                )
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                UserAccountsDrawerHeader(
                  accountName: const Text('Beti girma'),
                  accountEmail: const Text(
                    '+251 909773170',
                    style: TextStyle(
                        fontSize: 12, color: Colors.white38, height: 2),
                  ),
                  currentAccountPicture: CircleAvatar(
                    child: ClipOval(
                      child: Image.asset(
                        'images/p.jpg',
                        width: 90,
                        height: 90,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(color: Colors.teal[500]),
                ),
                MyDrawerList(),

                Container(
                  margin: const EdgeInsets.all(20),
                  child: const Center(
                    child: Text(
                      'Plus Messenger for Android v9.3.3.0 (19720) universal arm64-v8a',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //body: TabBarView(children: [
          //GestureDetector(
          //onTap: (() {
          //Navigator.push(context,
          //  MaterialPageRoute(builder: ((context) => selector())));
          //}),
          //),
          //]),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.teal[500],
            onPressed: () {},
            child: const Icon(Icons.create),
          ),
        ),
      );
  // ignore: non_constant_identifier_names
  Widget MyDrawerList() {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          menuItem(1, 'New Group', Icons.people,
              currentpage == DrawerSections.newgroup ? true : false),
          menuItem(2, 'New Secret Chat', Icons.chat,
              currentpage == DrawerSections.newsecretchat ? true : false),
          menuItem(3, 'New Channel', Icons.wifi_channel_outlined,
              currentpage == DrawerSections.newchannel ? true : false),
          const Divider(),
          menuItem(4, 'Contacts', Icons.person,
              currentpage == DrawerSections.contacts ? true : false),
          menuItem(5, 'Downloads', Icons.arrow_downward_outlined,
              currentpage == DrawerSections.downloads ? true : false),
          menuItem(6, 'Chat Folders', Icons.folder_open,
              currentpage == DrawerSections.chatfolders ? true : false),
          menuItem(7, 'People Nearby', Icons.location_on_outlined,
              currentpage == DrawerSections.peoplenearby ? true : false),
          menuItem(8, 'Saved Messages', Icons.saved_search_outlined,
              currentpage == DrawerSections.savedmessages ? true : false),
          menuItem(9, 'Calls', Icons.call,
              currentpage == DrawerSections.calls ? true : false),
          menuItem(10, 'Settings', Icons.settings,
              currentpage == DrawerSections.settings ? true : false),
          const Divider(),
          menuItem(11, 'Plus Settings', Icons.add_circle_outline_outlined,
              currentpage == DrawerSections.plussettings ? true : false),
          menuItem(12, 'Categories', Icons.folder_open_outlined,
              currentpage == DrawerSections.categories ? true : false),
          menuItem(13, 'Download themes', Icons.color_lens_outlined,
              currentpage == DrawerSections.downloadthemes ? true : false),
          menuItem(14, 'Theming', Icons.brush_outlined,
              currentpage == DrawerSections.theming ? true : false),
          menuItem(15, 'Support group', Icons.groups_outlined,
              currentpage == DrawerSections.supportgroup ? true : false),
          menuItem(16, 'Chats Counters', Icons.menu,
              currentpage == DrawerSections.chatscounters ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentpage = DrawerSections.newgroup;
            } else if (id == 2) {
              currentpage = DrawerSections.newsecretchat;
            } else if (id == 3) {
              currentpage = DrawerSections.newchannel;
            } else if (id == 4) {
              currentpage = DrawerSections.contacts;
            } else if (id == 5) {
              currentpage = DrawerSections.downloads;
            } else if (id == 6) {
              currentpage = DrawerSections.chatfolders;
            } else if (id == 7) {
              currentpage = DrawerSections.peoplenearby;
            } else if (id == 8) {
              currentpage = DrawerSections.savedmessages;
            } else if (id == 9) {
              currentpage = DrawerSections.calls;
            } else if (id == 10) {
              currentpage = DrawerSections.settings;
            } else if (id == 11) {
              currentpage = DrawerSections.plussettings;
            } else if (id == 12) {
              currentpage = DrawerSections.categories;
            } else if (id == 13) {
              currentpage = DrawerSections.downloadthemes;
            } else if (id == 14) {
              currentpage = DrawerSections.theming;
            } else if (id == 15) {
              currentpage = DrawerSections.supportgroup;
            } else if (id == 16) {
              currentpage = DrawerSections.chatscounters;
            }
          });
        },
      ),
    );
  }

  Widget selector() {
    if (currentpage == DrawerSections.newgroup) {
      container = const NewGroupPage();
    } else if (currentpage == DrawerSections.newsecretchat) {
      container = const NewsecretchatPage();
    } else if (currentpage == DrawerSections.newchannel) {
      container = const NewchannelPage();
    } else if (currentpage == DrawerSections.contacts) {
      container = const ContactsPage();
    } else if (currentpage == DrawerSections.downloads) {
      container = const DownloadsPage();
    } else if (currentpage == DrawerSections.chatfolders) {
      container = const ChatfoldersPage();
    } else if (currentpage == DrawerSections.peoplenearby) {
      container = const PeoplenearbyPage();
    } else if (currentpage == DrawerSections.savedmessages) {
      container = const SavedmessagesPage();
    } else if (currentpage == DrawerSections.calls) {
      container = const CallsPage();
    } else if (currentpage == DrawerSections.settings) {
      container = const SettingsPage();
    } else if (currentpage == DrawerSections.plussettings) {
      container = const PlussettingsPage();
    } else if (currentpage == DrawerSections.categories) {
      container = const CategoriesPage();
    } else if (currentpage == DrawerSections.downloadthemes) {
      container = const DownloadthemesPage();
    } else if (currentpage == DrawerSections.theming) {
      container = const ThemingPage();
    } else if (currentpage == DrawerSections.supportgroup) {
      container = const SupportgroupPage();
    } else if (currentpage == DrawerSections.chatscounters) {
      container = const ChatscountersPage();
    }
    return container;
  }
}

enum DrawerSections {
  newgroup,
  newsecretchat,
  newchannel,
  contacts,
  downloads,
  chatfolders,
  peoplenearby,
  savedmessages,
  calls,
  settings,
  plussettings,
  categories,
  downloadthemes,
  theming,
  supportgroup,
  chatscounters,
}
