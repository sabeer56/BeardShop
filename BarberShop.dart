import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BarberShop extends StatefulWidget {
  final String name;
  final String distance;
  final String location;
  final double rating;

  BarberShop(
      {required this.name,
      required this.distance,
      required this.location,
      required this.rating});

  @override
  BarberShopState createState() => BarberShopState();
}

class BarberShopState extends State<BarberShop> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 120,
                  color: Color.fromRGBO(109, 108, 235, 1), // Background color
                ),
                Positioned(
                  top: 80, // Adjusted to overlap with the blue container
                  left: 0,
                  right: 0,
                  child: Container(
                    height:
                        screenHeight - 180, // Extends beyond the blue container
                    decoration: BoxDecoration(
                      color: Colors.white, // Background color
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40), // Top left border radius
                        topRight:
                            Radius.circular(40), // Top right border radius
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 20,
                  child: Text(
                    widget.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 20,
                  child: Row(
                    children: _buildStarRating(widget.rating),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 230,
                  child: Text(
                    widget.location,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 17.0, vertical: 10.0),
              child: Text(
                'SELECT SERVICES',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromRGBO(109, 108, 235, 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(child: _buildButton('HAIRCUT')),
                      SizedBox(width: 10), // Add spacing between buttons
                      Expanded(child: _buildButton('HAIRSTYLING')),
                      SizedBox(width: 10), // Add spacing between buttons
                      Expanded(child: _buildButton('BEARD TRIMMING')),
                    ],
                  ),
                  SizedBox(height: 10), // Add spacing between rows
                  Row(
                    children: [
                      Expanded(child: _buildButton('MASSAGE')),
                      SizedBox(width: 10), // Add spacing between buttons
                      Expanded(child: _buildButton('STACKING')),
                      SizedBox(width: 10), // Add spacing between buttons
                      Expanded(child: _buildButton('BEARD HAIRCUT')),
                    ],
                  ),
                  SizedBox(height: 20), // Add spacing before the divider
                  Divider(
                    color: Color.fromRGBO(
                        109, 108, 235, 1), // Color of the divider
                    thickness: 1.3, // Thickness of the divider
                    indent: 140, // Indent from the left
                    endIndent: 140, // Indent from the right
                  ),
                  SizedBox(height: 10), // Add spacing after the divider
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    child: Text(
                      'SELECT THE BARBER',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(109, 108, 235, 1),
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // Add spacing before images
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: _buildImage('assets/mark.png', 'Mark'),
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          child: _buildImage('assets/scott.png', 'Scott'),
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          child: _buildImage('assets/travis.png', 'Travis'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20), // Add spacing before the divider
                  Divider(
                    color: Color.fromRGBO(
                        109, 108, 235, 1), // Color of the divider
                    thickness: 1.3, // Thickness of the divider
                    indent: 140, // Indent from the left
                    endIndent: 140, // Indent from the right
                  ),
                  SizedBox(height: 10), // Add spacing after the divider
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    child: Text(
                      'SELECT THE SCHEDULE',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(109, 108, 235, 1),
                      ),
                    ),
                  ),
                  SizedBox(height: 2), // Add spacing before buttons
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildScheduleButton('10:00'),
                        SizedBox(width: 10),
                        _buildScheduleButton('11:00'),
                        SizedBox(width: 10),
                        _buildScheduleButton('12:00'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(109, 108, 235, 1),
                    ),
                    width: screenWidth - 20, // Adjust the width if necessary
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: FaIcon(FontAwesomeIcons.dollarSign,
                                        size: 15, color: Colors.white),
                                  ),
                                  TextSpan(
                                    text: '70.15',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Tax ',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  WidgetSpan(
                                    child: FaIcon(FontAwesomeIcons.dollarSign,
                                        size: 15, color: Colors.white),
                                  ),
                                  TextSpan(
                                    text: '0.15',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 130,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Text('Book Now',
                                style: TextStyle(
                                    color: Color.fromRGBO(109, 108, 235, 1))),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String label) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: 5.0), // Adjust vertical spacing if needed
      child: TextButton(
        onPressed: () {},
        child: Text(
          label,
          style: TextStyle(fontSize: 11),
        ),
        style: TextButton.styleFrom(
          backgroundColor: Colors.white, // Background color
          padding: EdgeInsets.symmetric(
              vertical: 12.0), // Padding for button content
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0), // Rounded corners
          ),
        ),
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // Shadow position
          ),
        ],
      ),
    );
  }

  Widget _buildImage(String imagePath, String name) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(name),
      ],
    );
  }

  Widget _buildScheduleButton(String time) {
    return Container(
      width: 90,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromRGBO(109, 108, 235, 1),
      ),
      child: Center(
        child: Text(
          time,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }

  List<Widget> _buildStarRating(double rating) {
    List<Widget> stars = [];
    for (int i = 1; i <= 5; i++) {
      Icon starIcon;
      if (i <= rating) {
        starIcon = Icon(Icons.star, color: Colors.orange, size: 15);
      } else if (i == rating + 0.5) {
        starIcon = Icon(Icons.star_half, color: Colors.orange, size: 15);
      } else {
        starIcon = Icon(Icons.star_border, color: Colors.orange, size: 15);
      }
      stars.add(starIcon);
    }
    return stars;
  }
}
