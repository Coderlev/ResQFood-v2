// import 'package:app1/widgets/home_bottom_bar.dart';
// import 'package:app1/widgets/items_widget.dart';
import 'package:flutter/material.dart';
import 'package:resqus/payment_fromdeliv.dart';

class DeliveryPickupScreen extends StatefulWidget {
  @override
  State<DeliveryPickupScreen> createState() => _DeliveryPickupScreenState();
}

class _DeliveryPickupScreenState extends State<DeliveryPickupScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.zero,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
              ),
              // SizedBox(height: 30),
              // Using Stack to overlay search bar on the image
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300, // Adjust height as needed
                    child: Image.asset(
                      'assets/map.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 15,
                    right: 15,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // .withOpacity(0.8), // Adjust opacity as needed
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back, color: Colors.black),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search here",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Icons.search,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 20),
              TabBar(
                controller: _tabController,
                labelColor: Color.fromRGBO(106, 153, 78, 1.0),
                unselectedLabelColor: Colors.black,
                isScrollable: true,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 3,
                    color: Color.fromRGBO(106, 153, 78, 1.0),
                  ),
                  insets: EdgeInsets.symmetric(horizontal: 10),
                ),
                labelStyle:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                labelPadding: EdgeInsets.symmetric(horizontal: 37),
                tabs: [
                  Tab(
                    text: "Self Pickup",
                  ),
                  Tab(
                    text: "Delivery",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    TabContent1(),
                    TabContent2(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: HomeBottomBar(),
    );
  }
}

class TabContent1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 0.5),
            child: Text(
              "Pickup Location",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/location.png', // Replace with your image path
                width: 50, // Adjust size as needed
                height: 50,
              ),
              SizedBox(width: 10), // Add spacing between image and text
              Expanded(
                child: Text(
                  "MJWV+9JG, Jl. BSD Raya Utama, Pagedangan, Kec. Pagedangan, Kabupaten Tangerang, Banten 15345",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),

        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.fromLTRB(
              15, 2, 15, 20), // Adjust bottom margin to increase space
          decoration: BoxDecoration(
            color: Colors.lightBlue.withOpacity(0.2),
            // borderRadius: BorderRadius.circular(10),
          ),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: "Order can be picked up today at ",
                ),
                TextSpan(
                  text: "12.00 - 20.00",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: Colors.grey,
          thickness: 1,
          indent: 15,
          endIndent: 15,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Row(
            children: [
              Text(
                "Order Summary",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              Spacer(), // Spacer will expand to fill the remaining space
              Text(
                "Add more",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromRGBO(106, 153, 78, 1.0),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 10, 5),
          child: Text(
            "JCO Donuts",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        Divider(
          color: Colors.grey,
          thickness: 1,
          indent: 15,
          endIndent: 15,
        ),

        //strawberry
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Strawberry donut",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  Text(
                    "1x",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Rp20.000",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        //choco
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Chocolate donut",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  Text(
                    "1x",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Rp20.000",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        Divider(
          color: Colors.grey,
          thickness: 1,
          indent: 15,
          endIndent: 15,
        ),

        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Text(
        //         "Delivery Fee",
        //         style: TextStyle(
        //           fontSize: 18,
        //           color: Colors.black,
        //         ),
        //       ),
        //       Text(
        //         "Rp10.000",
        //         style: TextStyle(
        //           fontSize: 18,
        //           color: Colors.black,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // Divider(
        //   color: Colors.grey,
        //   thickness: 1,
        // ),
        // Add more widgets for tab 2 content

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Text(
            "Payment Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: Color.fromRGBO(106, 153, 78, 1.0),
              width: 1.5,
            ),
          ),
          child: GestureDetector(
            onTap: () {
              // Navigate to payment methods page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyPayment()),
              );
            },
            child: Row(
              children: [
                Icon(Icons.credit_card, color: Colors.blue),
                SizedBox(width: 10),
                Text(
                  "Payment Methods",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ],
            ),
          ),
        ),

        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: Color.fromRGBO(106, 153, 78, 1.0),
              width: 1.5,
            ),
          ),
          child: Row(
            children: [
              Icon(Icons.card_giftcard_outlined,
                  color: Colors.yellow), // Add voucher icon
              SizedBox(width: 10), // Add space between icon and text
              Text(
                "Use Voucher",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          margin: EdgeInsets.symmetric(
              horizontal: 15, vertical: 30), // Adjust vertical value
          decoration: BoxDecoration(
            color: Color(0xFF1A4D2E),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Order",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              Text(
                "Rp40.000",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        // Add more widgets for tab 1 content
      ],
    );
  }
}

class TabContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/location.png', // Replace with your image path
                width: 50, // Adjust size as needed
                height: 50,
              ),
              SizedBox(width: 10), // Add spacing between image and text
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Alam Sutera, Jl. Jalur Sutera Bar. No.Kav.19B, RT.002/RW.003, Panunggangan Tim., Kec. Pinang, Kota Tangerang, Banten 15143",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Container()),
                        Text(
                          "Edit",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        Divider(
          color: Colors.grey,
          thickness: 1,
          indent: 15,
          endIndent: 15,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Row(
            children: [
              Text(
                "Order Summary",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              Spacer(), // Spacer will expand to fill the remaining space
              Text(
                "Add more",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromRGBO(106, 153, 78, 1.0),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 10, 5),
          child: Text(
            "JCO Donuts",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        Divider(
          color: Colors.grey,
          thickness: 1,
          indent: 15,
          endIndent: 15,
        ),

        //strawberry
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Strawberry donut",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  Text(
                    "1x",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Rp20.000",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        //choco
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Chocolate donut",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  Text(
                    "1x",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Rp20.000",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        Divider(
          color: Colors.grey,
          thickness: 1,
          indent: 15,
          endIndent: 15,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Delivery Fee",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              Text(
                "Rp10.000",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        // Divider(
        //   color: Colors.grey,
        //   thickness: 1,
        // ),
        // Add more widgets for tab 2 content

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Text(
            "Payment Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: Color.fromRGBO(106, 153, 78, 1.0),
              width: 1.5,
            ),
          ),
          child: GestureDetector(
            onTap: () {
              // Navigate to payment methods page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyPayment()),
              );
            },
            child: Row(
              children: [
                Icon(Icons.credit_card, color: Colors.blue),
                SizedBox(width: 10),
                Text(
                  "Payment Methods",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ],
            ),
          ),
        ),

        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: Color.fromRGBO(106, 153, 78, 1.0),
              width: 1.5,
            ),
          ),
          child: Row(
            children: [
              Icon(Icons.card_giftcard_outlined,
                  color: Colors.yellow), // Add voucher icon
              SizedBox(width: 10), // Add space between icon and text
              Text(
                "Use Voucher",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          margin: EdgeInsets.symmetric(
              horizontal: 15, vertical: 30), // Adjust vertical value
          decoration: BoxDecoration(
            color: Color(0xFF1A4D2E),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Order",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              Text(
                "Rp50.000",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
