import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

class Favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const BackButton(),
        title: const Text(
          "Favorites",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Add padding to the whole body
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Align at the top
            children: <Widget>[
              // First Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // First Container with curve, outline, and shadow
                  buildFavoriteContainer('assets/Marzano.jpg', 'Pizza Marzano'),
                  SizedBox(width: 19), // Spacer between the containers
                  // Second Container with curve, outline, and shadow
                  buildFavoriteContainer('assets/Krispy.jpg', 'Krispy Kreme'),
                ],
              ),
              SizedBox(height: 20), // Spacer between the rows
              // Second Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Third Container with curve, outline, and shadow
                  buildFavoriteContainer('assets/Jco.jpg', 'J.Co'),
                  SizedBox(width: 19), // Spacer between the containers
                  // Fourth Container with curve, outline, and shadow
                  buildFavoriteContainer('assets/dunkin.jpg', 'Dunkin'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    //);
  }

  Widget buildFavoriteContainer(String imagePath, String title) {
    return Container(
      width: 180,
      height: 240,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Colors.white],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white, width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                imagePath,
                width: 160,
                height: 160,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Icon(Icons.star, color: Colors.yellow),
                SizedBox(width: 5),
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              'View Store',
              style: TextStyle(color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
