import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation:0.1,
        backgroundColor: Color(0xFF4F51C0),
        title: Text('My Cart'),
        actions: <widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {}
          ),
        ],
      ),

      body: SafeArea(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               CircleAvatar(
              radius: 70.0,
                backgroundImage: AssetImage('assets/img/sand.jpg'),

            ),
           Text(
              'Your cart is empty!',
              style: TextStyle(
               fontFamily: 'Montserrat',
                fontSize: 25.0,
                color: Colors.black, 
                fontWeight: FontWeight.bold,
              ),
            ),
             SizedBox(
              height: 20.0,
            ),
            Text(
              'Add items to it now.',
              style: TextStyle(
               fontFamily: 'Montserrat',
                fontSize: 10.0,
                color: Colors.grey, 
                fontWeight: FontWeight.bold,
              ),
            ),

             SizedBox(
              height: 20.0,
            ),

             Expanded(
             child: Padding(
                  padding: EdgeInsets.only(left: 50.0, right: 50, top: 10, bottom:10),
            child: FlatButton(
              color:  Color(0xFF4F51C0),
              child: Text(
                'Order now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8.0,
                fontWeight: FontWeight.bold,

                ),
              ),
              onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) =>  HomeScreen()),);
                
               
              },
            ),
          ),
        ),

            ],
        )
      )

      
      
    );
  }
}

