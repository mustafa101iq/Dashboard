import 'package:dashboard_app/node/AccountNode.dart';
import 'package:dashboard_app/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pie_chart/pie_chart.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  Map<String, double> dataMap = {
    "rent": 3,
    "internet": 3,
    "food": 3,
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          dashboardHeader(),
          pieChart(),
          Padding(
            padding: const EdgeInsets.only(right: 16, left: 16),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 140,
                    color: Theme.of(context).cardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Income",
                          style: TextStyle(fontSize: Constants.fontSizeSmall),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "\$5000",
                          style: TextStyle(fontSize: Constants.fontSizeLarge),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    height: 140,
                    color: Theme.of(context).cardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Expense",
                          style: TextStyle(fontSize: Constants.fontSizeSmall),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "\$5000",
                          style: TextStyle(fontSize: Constants.fontSizeLarge),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16, left: 16, top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ACCOUNTS",
                      style: TextStyle(fontSize: Constants.fontSizeNormal),
                    ),
                    Text(
                      "SEE ALL",
                      style: TextStyle(fontSize: Constants.fontSizeNormal),
                    ),
                  ],
                ),
              ),
              AccountNode(
                type: "Cash",
                num: "1 account",
                moneyCount: "\$9,450",
                time: "5m",
              ),
              AccountNode(
                type: "Credit Cards",
                num: "2 cards",
                moneyCount: "-\$1,321",
                time: "5m",
              ),
              AccountNode(
                type: "Investments",
                num: "3 account",
                moneyCount: "\$57,095",
                time: "5m",
              ),
              AccountNode(
                type: "Net Total",
                num: "3 account",
                moneyCount: "\$65,224",
                time: "5m",
              )
            ],
          )
        ],
      ),
    );
  }

  Widget dashboardHeader() {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Dashboard",
                style: TextStyle(fontSize: 32),
              ),
              IconButton(
                  icon: Icon(
                    Icons.settings,
                    color: Color(0xff6b6b6b),
                    size: 32,
                  ),
                  onPressed: () {})
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              FaIcon(
                FontAwesomeIcons.thumbsUp,
                color: Color(0xff6b6b6b),
                size: 16,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Your finances are looking good",
                style: TextStyle(fontSize: 16),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget pieChart() {
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Container(
        height: 200,
        child: Row(
          children: [
            PieChart(
              dataMap: dataMap,
              animationDuration: Duration(milliseconds: 800),
              chartLegendSpacing: 50,
              chartRadius: MediaQuery.of(context).size.width / 3.8,
              initialAngleInDegree: 270,
              chartType: ChartType.disc,
              colorList: [
                Color(0xff8d92a8),
                Color(0xfff5f4f9),
                Color(0xff373a4b)
              ],
              legendOptions: LegendOptions(
                showLegendsInRow: false,
                legendPosition: LegendPosition.right,
                showLegends: false,
                legendShape: BoxShape.circle,
                legendTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              chartValuesOptions: ChartValuesOptions(
                showChartValueBackground: true,
                showChartValues: false,
                showChartValuesInPercentage: false,
                showChartValuesOutside: false,
                decimalPlaces: 1,
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Spending",
                  style: TextStyle(
                      fontSize: Constants.fontSizeNormal + 2,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    ClipOval(
                      child: Container(
                        color: Color(0xff373a4b),
                        height: 10,
                        width: 10,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Rent",
                      style: TextStyle(
                          fontSize: Constants.fontSizeNormal,
                          color: Constants.lightTextColorSecondary),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    ClipOval(
                      child: Container(
                        color: Color(0xfff5f4f9),
                        height: 10,
                        width: 10,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Internet",
                      style: TextStyle(
                          fontSize: Constants.fontSizeNormal,
                          color: Constants.lightTextColorSecondary),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    ClipOval(
                      child: Container(
                        color: Color(0xff8d92a8),
                        height: 10,
                        width: 10,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Food",
                      style: TextStyle(
                          fontSize: Constants.fontSizeNormal,
                          color: Constants.lightTextColorSecondary),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
