import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resqus/voucher_singleitemscreen.dart';
// import '../screens/single_item_screen.dart';

class ItemsWidget extends StatelessWidget {
  List<String> img = [
    'Voucher Free Tumbler',
    'Discount 50%',
    'Discount 30%',
    'Voucher Free Tote Bag'
  ];

  List<int> points = [1000, 65, 30, 750];
  List<String> descriptions = [
    "Enjoy a Free Tumbler Voucher by Exchanging 1000 Points!\n\n"
        "1. Voucher can be redeemed using a minimum of 1000 points.\n"
        "2. Voucher can be used to receive one (1) exclusive tumbler from ResQFood.\n"
        "3. Voucher is valid for one (1) transaction per period.\n"
        "4. Voucher is available to all registered members on the ResQFood platform.\n"
        "5. Voucher cannot be combined with other promotions or vouchers.\n"
        "6. Limited voucher quota, redeem your points now!",
    "Enjoy a 50% Discount Voucher by Exchanging 65 Points!\n\n"
        "1. Voucher can be redeemed using a minimum of 65 points.\n"
        "2. Voucher can be used to receive one (1) a 50% discount from ResQFood.\n"
        "3. Voucher is valid for one (1) transaction per period.\n"
        "4. Voucher is available to all registered members on the ResQFood platform.\n"
        "5. Voucher cannot be combined with other promotions or vouchers.\n"
        "6. Limited voucher quota, redeem your points now!",
    "Enjoy a 30% Discount Voucher by Exchanging 30 Points!\n\n"
        "1. Voucher can be redeemed using a minimum of 30 points.\n"
        "2. Voucher can be used to receive a 30% discount from ResQFood.\n"
        "3. Voucher is valid for one (1) transaction per period.\n"
        "4. Voucher is available to all registered members on the ResQFood platform.\n"
        "5. Voucher cannot be combined with other promotions or vouchers.\n"
        "6. Limited voucher quota, redeem your points now!",
    "Enjoy a Free Tote Bag Voucher by Exchanging 750 Points!\n\n"
        "1. Voucher can be redeemed using a minimum of 750 points.\n"
        "2. Voucher can be used to receive one (1) exclusive tote bag from ResQFood.\n"
        "3. Voucher is valid for one (1) transaction per period.\n"
        "4. Voucher is available to all registered members on the ResQFood platform.\n"
        "5. Voucher cannot be combined with other promotions or vouchers.\n"
        "6. Limited voucher quota, redeem your points now!"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (150 / 210),
      children: [
        for (int i = 0; i < img.length; i++)
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 7),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 8,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SingleItemScreen(
                          img[i],
                          points[i],
                          descriptions[i],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/${img[i]}.png",
                      width: 145,
                      height: 145,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                Transform.translate(
                  offset: Offset(5, 0),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            img[i],
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 47, 47, 47),
                            ),
                          ),
                        ),
                        Text(
                          "${points[i]} Points",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
