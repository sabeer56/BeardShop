import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myfl/Temp2/BarberShop.dart';
import 'package:myfl/Temp2/BarberShopCustomer.dart';

class CutForU extends StatefulWidget {
  @override
  CutForUPage createState() => CutForUPage();
}

class CutForUPage extends State<CutForU> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, // Change the drawer icon color here
        ),
        backgroundColor: Color.fromRGBO(109, 108, 235, 1),
        actions: [
          IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.ellipsisH),
          ),
        ],
      ),
      drawer: Drawer(),
      body: Stack(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight,
            color: Color.fromRGBO(109, 108, 235, 1),
          ),
          Positioned(
            top: 220, // Adjust top position as needed
            left: 100, // Adjust left position as needed
            child: Image.asset(
              'assets/syssor.png',
              width: 200,
              height: 200,
            ),
          ),
          Positioned(
              top: 400, // Adjust top position as needed
              left: 135, // Adjust left position as needed
              child: Text(
                'Cut For U',
                style: TextStyle(
                  fontSize: 28.6,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Positioned(
              top: 430, // Adjust top position as needed
              left: 105, // Adjust left position as needed
              child: Text(
                'Get The Best Haircut Here',
                style: TextStyle(
                  fontSize: 14.6,
                  color: Colors.white,
                ),
              )),
          Positioned(
            top: 470, // Adjust top position as needed
            left: 95,
            child: Container(
              width: screenWidth - 200,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white, // Background color
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BarberShopCustomer(),
                        ));
                  });
                },
                child: Text('Book Now',
                    style: TextStyle(
                        color: Color.fromRGBO(109, 108, 235, 1),
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          Positioned(
            top: 520, // Adjust top position as needed
            left: 95,
            child: Container(
              width: screenWidth - 200,
              height: 40,
              decoration: BoxDecoration(
                color: Color.fromRGBO(109, 108, 235, 1), // Background color
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor:
                      Colors.black, // Text color (replaces 'primary')
                  backgroundColor: Colors.transparent, // Background color
                  side: BorderSide(
                    color: Colors.white, // Border color
                    width: 2, // Border width
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Border radius
                  ),
                ),
                onPressed: () {},
                child: Text('LogIn',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
