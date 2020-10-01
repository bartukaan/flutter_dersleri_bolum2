import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Bartu Kaan Pideci"),
            accountEmail: Text("bartukaanpideci@gmail.com"),
            currentAccountPicture: Image.network(
                "https://png.pngtree.com/png-vector/20191017/ourlarge/pngtree-black-details-of-man-wedding-suit-tuxedo-vector-png-image_1808763.jpg"),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.purple,
                child: Text("BK"),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey,
                child: Text("HI"),
              )
            ],
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Ana Sayfa"),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.call),
                  title: Text("Ara"),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("Profil"),
                  trailing: Icon(Icons.chevron_right),
                ),
                Divider(),
                InkWell(
                  onTap: (){

                  },
                  splashColor: Colors.cyan,
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Ana Sayfa"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
                AboutListTile(
                  applicationName: "Flutter Dersleri",
                  applicationIcon: Icon(Icons.save),
                  applicationVersion: "2.0",
                  child: Text("ABOUT US"),
                  applicationLegalese: "asdasdasd",
                  icon: Icon(Icons.keyboard),
                  aboutBoxChildren: <Widget>[
                    Text("Child 1"),
                    Text("Child 2"),
                    Text("Child 3"),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
