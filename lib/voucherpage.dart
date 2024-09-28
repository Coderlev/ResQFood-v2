// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:resqus/voucher_itemwidget.dart';
// // import '../widgets/home_bottom_bar.dart';
// // import '../widgets/items_widget.dart';

// class VoucherScreen extends StatefulWidget {
//   @override
//   State<VoucherScreen> createState() => _VoucherScreenState();
// }

// class _VoucherScreenState extends State<VoucherScreen>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;

//   @override
//   void initState() {
//     _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
//     _tabController.addListener(_handleTabSelection);
//     super.initState();
//   }

//   _handleTabSelection() {
//     if (_tabController.indexIsChanging) {
//       setState(() {});
//     }
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Text(
//           " Voucher",
//           style: TextStyle(fontSize: 18, color: Colors.black),
//         ),
//         iconTheme: IconThemeData(color: Colors.black),
//       ),
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.only(top: 15),
//           child: ListView(
//             children: [
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 60),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Image.asset(
//                               'assets/point.png',
//                               width: 24, // Adjust the width as needed
//                               height: 24, // Adjust the height as needed
//                             ),
//                             SizedBox(width: 5),
//                             Text(
//                               "Point",
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.w500,
//                                 color: const Color.fromARGB(255, 57, 57, 57),
//                               ),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             // Icon(Icons.monetization_on, color: Colors.black),

//                             SizedBox(width: 5),
//                             Text(
//                               "3000",
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.w500,
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             // Icon(Icons.people_outline, color: Colors.blue),
//                             Image.asset(
//                               'assets/member.png',
//                               width: 24, // Adjust the width as needed
//                               height: 24, // Adjust the height as needed
//                             ),
//                             SizedBox(width: 5),
//                             Text(
//                               "Member Level",
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.w500,
//                                 color: const Color.fromARGB(255, 57, 57, 57),
//                               ),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             // Icon(Icons.monetization_on, color: Colors.black),
//                             SizedBox(width: 5),
//                             Text(
//                               "Savior Food",
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.w500,
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 10),
//               Center(
//                 child: [
//                   ItemsWidget(),
//                   ItemsWidget(),
//                   ItemsWidget(),
//                   ItemsWidget(),
//                 ][_tabController.index],
//               ),
//             ],
//           ),
//         ),
//       ),
//       // bottomNavigationBar: HomeBottomBar(),
//       bottomNavigationBar: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.5),
//               spreadRadius: 1,
//               blurRadius: 8,
//               offset: Offset(0, -1),
//             ),
//           ],
//         ),
//         child: BottomNavigationBar(
//           backgroundColor: Colors.white,
//           // currentIndex: _selectedIndex,
//           // onTap: _onItemTapped,
//           selectedItemColor: Color(0xFF1A4D2E),
//           unselectedItemColor: Colors.black,
//           showUnselectedLabels: true,
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.card_giftcard),
//               label: 'Voucher',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.receipt),
//               label: 'Orders',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               label: 'Profile',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resqus/mainpage.dart';
import 'package:resqus/voucher_itemwidget.dart';
// import '../widgets/home_bottom_bar.dart';
// import '../widgets/items_widget.dart';
// import 'main_page.dart'; // Import your main page

class VoucherScreen extends StatefulWidget {
  @override
  State<VoucherScreen> createState() => _VoucherScreenState();
}

class _VoucherScreenState extends State<VoucherScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          " Voucher",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 15),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/point.png',
                              width: 24, // Adjust the width as needed
                              height: 24, // Adjust the height as needed
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Point",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(255, 57, 57, 57),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            // Icon(Icons.monetization_on, color: Colors.black),

                            SizedBox(width: 5),
                            Text(
                              "3000",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            // Icon(Icons.people_outline, color: Colors.blue),
                            Image.asset(
                              'assets/member.png',
                              width: 24, // Adjust the width as needed
                              height: 24, // Adjust the height as needed
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Member Level",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(255, 57, 57, 57),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            // Icon(Icons.monetization_on, color: Colors.black),
                            SizedBox(width: 5),
                            Text(
                              "Savior Food",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: [
                  ItemsWidget(),
                  ItemsWidget(),
                  ItemsWidget(),
                  ItemsWidget(),
                ][_tabController.index],
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: HomeBottomBar(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 8,
              offset: Offset(0, -1),
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          // currentIndex: _selectedIndex,
          // onTap: _onItemTapped,
          selectedItemColor: Color(0xFF1A4D2E),
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Voucher',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            if (index == 0) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Mainpage()),
              );
            } else if (index == 1) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => VoucherScreen()),
              );
            } else if (index == 2) {
              // Navigate to Orders screen
            } else if (index == 3) {
              // Navigate to Profile screen
            }
          },
        ),
      ),
    );
  }
}
