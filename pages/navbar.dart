import 'package:flutter/material.dart';
import 'package:project_flutter/pages/login_page.dart';

class NavBar extends StatelessWidget {
  const NavBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Marcos e Guilherme'),
            accountEmail: Text('marcos_guilherme@utfpr.edu'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://media0.giphy.com/media/RtdRhc7TxBxB0YAsK6/giphy.gif?cid=ecf05e47qrr2wq4kct9xkacdbwqovudhmp7ttqheh2nbgk65&rid=giphy.gif&ct=g',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Sair'),
            onTap: () =>  Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage())),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Sair'),
            onTap: () =>  Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage())),
          )
        ],
      ),
    );
  }
}
