import 'package:dashboard_app/node/TransactionNode.dart';
import 'package:dashboard_app/utils/Constants.dart';
import 'package:flutter/material.dart';

class AccountsPage extends StatefulWidget {
  @override
  _AccountsPageState createState() => _AccountsPageState();
}

class _AccountsPageState extends State<AccountsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          accountHeader(),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "TD Canada | Cash Back Visa Infinite",
                  style: TextStyle(fontSize: Constants.fontSizeNormal),
                ),
                Text(
                  "1/2",
                  style: TextStyle(fontSize: Constants.fontSizeNormal),
                ),
              ],
            ),
          ),
          card(),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16, left: 16, top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "TRANSACTIONS",
                      style: TextStyle(fontSize: Constants.fontSizeNormal),
                    ),
                    Text(
                      "\$101.09",
                      style: TextStyle(
                          fontSize: Constants.fontSizeNormal,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              TransactionNode(
                type: "Starbucks",
                itemName: "coffee",
                itemPrice: "\$5,04",
                time: "5m",
              ),
              TransactionNode(
                type: "Shoppers Drug Mart",
                itemName: "pharmacy",
                itemPrice: "\$28,04",
                time: "15m",
              ),
              TransactionNode(
                type: "Popeyes Chicken",
                itemName: "food",
                itemPrice: "\$12,98",
                time: "3h",
              ),
              TransactionNode(
                type: "Cana Auto Shop",
                itemName: "Car Maintenance",
                itemPrice: "\$55,04",
                time: "1w",
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget accountHeader() {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xff6b6b6b),
                  size: 32,
                ),
              ),
              Text(
                "Credit Card",
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                  icon: Icon(
                    Icons.add,
                    color: Color(0xff6b6b6b),
                    size: 32,
                  ),
                  onPressed: () {}),
              SizedBox(
                width: 8,
              ),
              IconButton(
                  icon: Icon(
                    Icons.settings,
                    color: Color(0xff6b6b6b),
                    size: 32,
                  ),
                  onPressed: () {})
            ],
          )
        ],
      ),
    );
  }

  Widget card() {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 8),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xff373a4b),
            borderRadius: BorderRadius.all(Radius.circular(8))),
        height: 200,
        child: Padding(
          padding: const EdgeInsets.only(right: 32, left: 32, top: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 35,
                width: 40,
                decoration: BoxDecoration(
                    color: Color(0xff8f91a6),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
              SizedBox(
                height: 8,
              ),
              Text("**** **** **** 1234",
                  style: TextStyle(
                      fontSize: Constants.fontSizeLarge, color: Colors.white)),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text("Card Holder",
                          style: TextStyle(
                              fontSize: Constants.fontSizeNormal,
                              color: Color(0xff696b80))),
                      SizedBox(
                        height: 4,
                      ),
                      Text("John Smith",
                          style: TextStyle(
                              fontSize: Constants.fontSizeNormal,
                              color: Colors.white)),
                    ],
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Expiration",
                          style: TextStyle(
                              fontSize: Constants.fontSizeNormal,
                              color: Color(0xff696b80))),
                      SizedBox(
                        height: 4,
                      ),
                      Text("12/19",
                          style: TextStyle(
                              fontSize: Constants.fontSizeNormal,
                              color: Colors.white)),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
