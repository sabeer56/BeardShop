import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myfl/Temp2/BarberShop.dart';

class BarberShopCustomer extends StatefulWidget {
  @override
  BarbershopCustomerState createState() => BarbershopCustomerState();
}

class BarbershopCustomerState extends State<BarberShopCustomer> {
  // Sample JSON Data
  List<Map<String, dynamic>> jsonData = [
    {
      "name": "A Sharper Image Barbershop",
      "distance": "4 km",
      "rating": 4.5,
      "location": "123 Elm St, Springfield"
    },
    {
      "name": "Powell's Barbershop",
      "distance": "3.2 km",
      "rating": 4.2,
      "location": "456 Oak Ave, Springfield"
    },
    {
      "name": "Williams' Barbershop",
      "distance": "5.0 km",
      "rating": 4.7,
      "location": "789 Maple Rd, Springfield"
    },
    {
      "name": "Diamond District Barbershop",
      "distance": "2.8 km",
      "rating": 4.3,
      "location": "101 Pine St, Springfield"
    },
    {
      "name": "The Gentleman's Cut",
      "distance": "4.1 km",
      "rating": 4.6,
      "location": "202 Birch Ln, Springfield"
    },
    {
      "name": "Urban Styles Barber Shop",
      "distance": "3.7 km",
      "rating": 4.4,
      "location": "303 Cedar Blvd, Springfield"
    },
    {
      "name": "Classic Cuts",
      "distance": "4.9 km",
      "rating": 4.1,
      "location": "404 Spruce St, Springfield"
    },
    {
      "name": "Fresh Fade Barbers",
      "distance": "2.5 km",
      "rating": 4.8,
      "location": "505 Walnut Ave, Springfield"
    },
    {
      "name": "The Barber Lounge",
      "distance": "3.0 km",
      "rating": 4.5,
      "location": "606 Cherry St, Springfield"
    },
    {
      "name": "Elite Grooming",
      "distance": "4.3 km",
      "rating": 4.3,
      "location": "707 Fir Rd, Springfield"
    }
  ];

  List<Map<String, dynamic>> getPopularBarbers() {
    // Filter and sort barbers by rating in descending order
    List<Map<String, dynamic>> sortedBarbers = List.from(jsonData)
      ..sort((a, b) => b['rating'].compareTo(a['rating']));
    return sortedBarbers;
  }

  List<Map<String, dynamic>> getNearBarbers() {
    // Filter and sort barbers by rating in descending order
    List<Map<String, dynamic>> sortedBarbers = List.from(jsonData)
      ..sort((a, b) => a['distance'].compareTo(b['distance']));
    return sortedBarbers;
  }

  int _currentIndex = 0; // Index to keep track of the current view
  double userRating = 4.3;

  void _updateIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

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
      body: Stack(
        children: [
          // Blue Container
          Container(
            width: double.infinity,
            height: screenHeight - 2, // Ensure this height is appropriate
            color: Color.fromRGBO(109, 108, 235, 1), // Blue background color
            child: Column(
              children: [
                // Buttons Row for Blue Container
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () => _updateIndex(0),
                          child: Text('HOME', style: TextStyle(fontSize: 10)),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () => _updateIndex(1),
                          child:
                              Text('SERVICES', style: TextStyle(fontSize: 10)),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () => _updateIndex(2),
                          child: Text('PROMO', style: TextStyle(fontSize: 10)),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () => _updateIndex(3),
                          child: Text('HELP', style: TextStyle(fontSize: 10)),
                        ),
                      ),
                    ],
                  ),
                ),
                // Content based on selected index
                Expanded(
                  child: IndexedStack(
                    index: _currentIndex,
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text('HELLO STEVE COREL',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: 20),
                                      Container(
                                        width: screenWidth *
                                            0.8, // Adjust width as needed
                                        height: 120,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromRGBO(
                                                  109, 108, 235, 1),
                                              spreadRadius: 2,
                                              blurRadius: 5,
                                              offset: Offset(0, 0.8),
                                            ),
                                          ],
                                        ),
                                        child: Row(
                                          children: [
                                            // Image
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                width:
                                                    100, // Adjust width as needed
                                                height:
                                                    100, // Adjust height as needed
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color.fromRGBO(
                                                          109, 108, 235, 1),
                                                      spreadRadius: 2,
                                                      blurRadius: 5,
                                                      offset: Offset(0, 0.8),
                                                    ),
                                                  ],
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  child: Image.asset(
                                                    'assets/mark.png',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            // Space between image and text
                                            SizedBox(width: 16),
                                            // Text beside the image
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text('YOUR BALANCE',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Color.fromARGB(
                                                              255,
                                                              118,
                                                              140,
                                                              202))),
                                                  RichText(
                                                    text: TextSpan(
                                                      children: [
                                                        WidgetSpan(
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .dollarSign,
                                                            color:
                                                                Color.fromRGBO(
                                                                    109,
                                                                    108,
                                                                    235,
                                                                    1),
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: ' 125',
                                                          style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Color.fromRGBO(
                                                                    109,
                                                                    108,
                                                                    235,
                                                                    1),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: _buildButton(
                                    'HAIRCUT',
                                    FontAwesomeIcons.cut,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: _buildButton(
                                    'HAIRSTYLING',
                                    FontAwesomeIcons.hackerNews,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: _buildButton(
                                    'BEARD TRIMMING',
                                    FontAwesomeIcons.bed,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Expanded(
                                  child: _buildButton(
                                    'MASSAGE',
                                    FontAwesomeIcons.spa,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: _buildButton(
                                    'STACKING',
                                    FontAwesomeIcons.layerGroup,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: _buildButton(
                                    'BEARD HAIRCUT',
                                    FontAwesomeIcons.cut,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 15), // Adds vertical space
                            Center(
                              child: Image.asset(
                                'assets/barber1.png',
                                width: 250,
                                height: 180,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(child: Text('Content for Help')),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // White Container
          Positioned(
            top: screenHeight * 0.3, // Adjust top position
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  // Buttons Row for White Container
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () => _updateIndex(0),
                            child: Text('ALL', style: TextStyle(fontSize: 12)),
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () => _updateIndex(1),
                            child:
                                Text('POPULAR', style: TextStyle(fontSize: 12)),
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () => _updateIndex(2),
                            child:
                                Text('NEAR ME', style: TextStyle(fontSize: 12)),
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () => _updateIndex(3),
                            child:
                                Text('PRICE', style: TextStyle(fontSize: 12)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Content based on selected index
                  Expanded(
                    child: IndexedStack(
                      index: _currentIndex,
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              ListView.builder(
                                shrinkWrap:
                                    true, // Important to use shrinkWrap for nested ListView
                                physics:
                                    NeverScrollableScrollPhysics(), // Disable scrolling on nested ListView
                                itemCount: jsonData.length,
                                itemBuilder: (context, index) {
                                  final shop = jsonData[index];
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 16),
                                    child: Container(
                                      width: screenWidth *
                                          0.8, // Adjust width as needed
                                      height: 120,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            spreadRadius: 2,
                                            blurRadius: 5,
                                            offset: Offset(0, 0.8),
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        shop['name'],
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      Spacer(),
                                                      FaIcon(
                                                          FontAwesomeIcons
                                                              .bookmark,
                                                          color: Color.fromRGBO(
                                                              109,
                                                              108,
                                                              235,
                                                              1)),
                                                    ],
                                                  ),
                                                  SizedBox(height: 8),
                                                  Row(
                                                    children: _buildStarRating(
                                                        shop['rating']),
                                                  ),
                                                  SizedBox(height: 8),
                                                  Row(
                                                    children: [
                                                      Text(shop['distance']),
                                                      Spacer(),
                                                      Container(
                                                        width: 140,
                                                        height: 24,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          color: Color.fromRGBO(
                                                              109, 108, 235, 1),
                                                        ),
                                                        child: TextButton(
                                                          onPressed: () {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        BarberShop(
                                                                  name: shop[
                                                                      'name'],
                                                                  distance: shop[
                                                                      'distance'],
                                                                  location: shop[
                                                                      'location'],
                                                                  rating: shop[
                                                                      'rating'],
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                          child: Text(
                                                              'More details',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white)),
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: getPopularBarbers().length,
                                itemBuilder: (context, index) {
                                  final shop = getPopularBarbers()[index];
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 16),
                                    child: Container(
                                      width: screenWidth * 0.8,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            spreadRadius: 2,
                                            blurRadius: 5,
                                            offset: Offset(0, 0.8),
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        shop['name'],
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      Spacer(),
                                                      FaIcon(
                                                          FontAwesomeIcons
                                                              .bookmark,
                                                          color: Color.fromRGBO(
                                                              109,
                                                              108,
                                                              235,
                                                              1)),
                                                    ],
                                                  ),
                                                  SizedBox(height: 8),
                                                  Row(
                                                    children: _buildStarRating(
                                                        shop['rating']),
                                                  ),
                                                  SizedBox(height: 8),
                                                  Row(
                                                    children: [
                                                      Text(shop['distance']),
                                                      Spacer(),
                                                      Container(
                                                        width: 140,
                                                        height: 24,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          color: Color.fromRGBO(
                                                              109, 108, 235, 1),
                                                        ),
                                                        child: TextButton(
                                                          onPressed: () {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        BarberShop(
                                                                  name: shop[
                                                                      'name'],
                                                                  distance: shop[
                                                                      'distance'],
                                                                  location: shop[
                                                                      'location'],
                                                                  rating: shop[
                                                                      'rating'],
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                          child: Text(
                                                              'More details',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white)),
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: getNearBarbers().length,
                                itemBuilder: (context, index) {
                                  final shop = getNearBarbers()[index];
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 16),
                                    child: Container(
                                      width: screenWidth * 0.8,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            spreadRadius: 2,
                                            blurRadius: 5,
                                            offset: Offset(0, 0.8),
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        shop['name'],
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      Spacer(),
                                                      FaIcon(
                                                          FontAwesomeIcons
                                                              .bookmark,
                                                          color: Color.fromRGBO(
                                                              109,
                                                              108,
                                                              235,
                                                              1)),
                                                    ],
                                                  ),
                                                  SizedBox(height: 8),
                                                  Row(
                                                    children: _buildStarRating(
                                                        shop['rating']),
                                                  ),
                                                  SizedBox(height: 8),
                                                  Row(
                                                    children: [
                                                      Text(shop['distance']),
                                                      Spacer(),
                                                      Container(
                                                        width: 140,
                                                        height: 24,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          color: Color.fromRGBO(
                                                              109, 108, 235, 1),
                                                        ),
                                                        child: TextButton(
                                                          onPressed: () {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        BarberShop(
                                                                  name: shop[
                                                                      'name'],
                                                                  distance: shop[
                                                                      'distance'],
                                                                  location: shop[
                                                                      'location'],
                                                                  rating: shop[
                                                                      'rating'],
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                          child: Text(
                                                              'More details',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white)),
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        Center(child: Text('Content for PRICE')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String label, IconData icon) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: 4.0), // Adjust vertical spacing if needed
      child: TextButton.icon(
        onPressed: () {},
        icon: FaIcon(icon, size: 10), // Add the icon here
        label: Text(
          label,
          style: TextStyle(fontSize: 9),
        ),
        style: TextButton.styleFrom(
          backgroundColor: Colors.white, // Background color
          padding:
              EdgeInsets.symmetric(vertical: 8.0), // Padding for button content
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
            offset: Offset(0, 3), // Changes the position of the shadow
          ),
        ],
      ),
    );
  }

  List<Widget> _buildStarRating(double rating) {
    List<Widget> stars = [];
    int fullStars = rating.floor();
    bool hasHalfStar = rating - fullStars >= 0.5;

    for (int i = 0; i < 5; i++) {
      if (i < fullStars) {
        stars.add(FaIcon(
          FontAwesomeIcons.star,
          color: Colors.yellow,
          size: 20,
        ));
      } else if (i == fullStars && hasHalfStar) {
        stars.add(FaIcon(
          FontAwesomeIcons.starHalfAlt, // Use starHalfAlt for half stars
          color: Colors.yellow,
          size: 20,
        ));
      } else {
        stars.add(FaIcon(
          FontAwesomeIcons.star, // Use filled star for empty stars
          color: Colors.grey, // Color for empty stars
          size: 20,
        ));
      }
      if (i < 4) stars.add(SizedBox(width: 4)); // Add space between stars
    }

    return stars;
  }
}
