import 'package:flutter/material.dart';
import 'main.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _drawerHeader(),
          _drawerItem(
              icon: (Icons.audiotrack),
              text: 'My Music',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pop(context);
              }),
          Divider(
            height: 10,
            thickness: 1,
          ),
          _drawerItem(
              icon: (Icons.collections),
              text: 'Galery',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(1);
                Navigator.pop(context);
              }),
          Divider(
            height: 10,
            thickness: 1,
          ),
          _drawerItem(
              icon: (Icons.message),
              text: 'Message',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(2);
                Navigator.pop(context);
              }),
          Divider(
            height: 10,
            thickness: 1,
          ),
          _drawerItem(
            icon: (Icons.delete),
            text: 'Trash',
            onTap: () => print('Tap to Deleted Menu'),
          ),
          Divider(
            height: 25,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Text(
              'Label',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ),
          _drawerItem(
            icon: (Icons.bookmark),
            text: 'Family',
            onTap: () => print('Tap to Deleted Menu'),
          ),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage("assets/images/jennie.jpg"), fit: BoxFit.cover),
    ),
    accountName: Text('Aldi Rizky Gunawan'),
    accountEmail: Text('Aldirizkyg17@gmail.com'),
  );
}

Widget _drawerItem({IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}

class Songs extends StatelessWidget {
  final List music = [
    "BLACKPINK - BOOMBAYAH.mp3",
    "BLACKPINK - AS IF ITS YOUR LAST.mp3",
    "BLACKPINK - PLAYING WITH FIRE.mp3",
    "BLACKPINK - DDU DU DDU.mp3",
    "BLACKPINK - SOLO JENNIE.mp3",
    "BLACKPINK - LALISA LISA.mp3",
    "BLACKPINK - ICE CREAM - SELENA GOMEZ.mp3",
    "BLACKPINK - WHAT IS LOVE.mp3",
    "BLACKPINK - BAM BAM BAM",
    "BLACKPINK - ICE CREAM - SELENA GOMEZ.mp3",
    "BLACKPINK - WHAT IS LOVE.mp3",
    "BLACKPINK - BAM BAM BAM",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            title: Text(music[index], style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            subtitle: Text('Music from ' + music[index]),
            leading: Icon(Icons.audiotrack),
          ));
        },
        itemCount: music.length,
      ),
    );
  }
}

class Galery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          Container(
            child: Card(
              elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/Bp1.jpg",
                    height: 350.0,
                    width: 350.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/Bp2.jpg",
                    height: 350.0,
                    width: 350.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/Bp4.jpg",
                    height: 350.0,
                    width: 350.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/Bp5.jpg",
                    height: 350.0,
                    width: 350.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/Bp6.jpg",
                    height: 350.0,
                    width: 350.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Email extends StatelessWidget {
  final List mesage = [
    "Tokopedia",
    "Gojek",
    "Telkomsel",
    "TSEL-APPS",
    "Pertamina",
    "Lazada",
    "Shoppe",
    "OVO",
    "KOMINFO",
    "DANA",
    "Kemendikbud",
    "PEDULICOVID"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            title: Text(mesage[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            subtitle: Text(' New message from ' + mesage[index]),
            leading: Icon(Icons.message),
          ));
        },
        itemCount: mesage.length,
      ),
    );
  }
}
