import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

class Promopage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Promo Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PromoPage(),
    );
  }
}

class PromoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text('Promo Page')),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PromoContainer(
                  title: "Pizza Marzano",
                  description: "Buy 1 Get 1 Free",
                  color: Colors.white,
                  imageAsset: 'assets/Marzano.jpg',
                  titleColor: Colors.grey,
                  descriptionColor: Color.fromRGBO(106, 153, 78, 1.0),
                  buttonColor: Color(0xFF1A4D2E),
                  containerHeight: 260, // Set container height
                  buttonHeight: 40, // Set button height
                  buttonWidth: 100, // Set button width
                  buttonTextSize: 16, // Set button text size
                ),
                SizedBox(height: 6), // Add spacing between containers
                PromoContainer(
                  title: "J.Co",
                  description: "Buy 12 Get 12 Free",
                  color: Colors.white,
                  imageAsset: 'assets/Jco.jpg',
                  titleColor: Colors.grey,
                  descriptionColor: Color.fromRGBO(106, 153, 78, 1.0),
                  buttonColor: Color(0xFF1A4D2E),
                  containerHeight: 260, // Set container height
                  buttonHeight: 40, // Set button height
                  buttonWidth: 100, // Set button width
                  buttonTextSize: 16, // Set button text size
                ),
                SizedBox(height: 6), // Add spacing between containers
                PromoContainer(
                  title: "Krispy Kreme",
                  description: "Discount up to 99%",
                  color: Colors.white,
                  imageAsset: 'assets/Krispy.jpg',
                  titleColor: Colors.grey,
                  descriptionColor: Color.fromRGBO(106, 153, 78, 1.0),
                  buttonColor: Color(0xFF1A4D2E),
                  containerHeight: 260, // Set container height
                  buttonHeight: 40, // Set button height
                  buttonWidth: 100, // Set button width
                  buttonTextSize: 9, // Set button text size
                ),
                SizedBox(height: 6), // Add spacing between containers
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PromoContainer extends StatelessWidget {
  final String title;
  final String description;
  final Color color;
  final String imageAsset;
  final Color titleColor;
  final Color descriptionColor;
  final Color buttonColor;
  final double containerHeight;
  final double buttonHeight;
  final double buttonWidth;
  final double buttonTextSize;

  PromoContainer({
    required this.title,
    required this.description,
    required this.color,
    required this.imageAsset,
    required this.titleColor,
    required this.descriptionColor,
    required this.buttonColor,
    required this.containerHeight,
    required this.buttonHeight,
    required this.buttonWidth,
    required this.buttonTextSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight, // Set the height of the container
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.grey), // Add border here
        borderRadius: BorderRadius.circular(0),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(0),
        ),
        padding: EdgeInsets.all(10),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: Container(
                color: Colors
                    .white, // Ensures background color is white behind the image
                child: Image.asset(
                  imageAsset,
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: titleColor,
              ),
            ),
            SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    description,
                    style: TextStyle(
                      fontSize: 16,
                      color: descriptionColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: buttonHeight, // Set button height
                  width: buttonWidth, // Set button width
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                      backgroundColor: buttonColor, // button background color
                      foregroundColor: Colors.white, // button text color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(20), // More curved corners
                      ),
                    ),
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        fontSize: 12, // Set button text size
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
