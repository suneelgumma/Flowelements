import 'package:flutter/material.dart';
import '../pages/all.dart';
import 'router.dart' as router;

class DrawerClass extends Drawer {
  final loggedInUser data;

  DrawerClass({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: Text(
              "G_User",
              style: TextStyle(color: Colors.white70),
            ),
//            margin:EdgeInsets.all(value),

            accountEmail: Text("G_Home_Email"),
            decoration:
                BoxDecoration(color: Colors.purple, shape: BoxShape.rectangle
//              image: DecorationImage(
//                fit: BoxFit.fill,
//                image: NetworkImage('https://k6u8v6y8.stackpathcdn.com/blog/wp-content/uploads/2013/12/top-30-famous-temples-in-india.png')
//              )
                    ),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://k6u8v6y8.stackpathcdn.com/blog/wp-content/uploads/2013/12/top-30-famous-temples-in-india.png'),
              ),
            ),
          ),
          new ListTile(
            title: new Text("Home"),
            trailing: new Icon(Icons.home),
            onTap: () =>
                Navigator.pushNamed(context, router.HOME, arguments: data),
          ),
          new ListTile(
            title: new Text("Gallery"),
            trailing: new Icon(Icons.album),
            onTap: () =>
                Navigator.pushNamed(context, router.GALLERY, arguments: data),
          ),
          new ListTile(
            title: new Text("Seva's"),
            trailing: new Icon(Icons.shopping_basket),
            onTap: () =>
                Navigator.pushNamed(context, router.SEVAS, arguments: data),
          ),
          new ListTile(
            title: new Text("Profile"),
            trailing: new Icon(Icons.person_pin),
            onTap: () =>
                Navigator.pushNamed(context, router.HOME, arguments: data),
          ),
          new ListTile(
            title: new Text("FeedBack's"),
            trailing: new Icon(Icons.message),
            onTap: () =>
                Navigator.pushNamed(context, router.FEEDBACK, arguments: data),
          )
        ],
      ),
    );
  }
}
