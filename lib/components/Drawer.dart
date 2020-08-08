import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Color(0xFF4F51C0),
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 30, bottom: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/img/image.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Text(
                    'Vaibhav Agarwal',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'vaibhav@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Profile',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: null,
          ),
          
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text(
              'My Order',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) =>  Cart()),);

            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Settings',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text(
              'Feedback',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text(
              'About Us',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
