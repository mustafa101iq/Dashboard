import 'package:dashboard_app/utils/Constants.dart';
import 'package:dashboard_app/widget/Divider.dart';
import 'package:flutter/material.dart';

class TransactionNode extends StatelessWidget {
  final String type,itemName,itemPrice,time;
  TransactionNode({this.type,this.itemName,this.itemPrice,this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        divider(),
        Padding(
          padding: const EdgeInsets.only(right: 16,left: 16,top: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(type,style: TextStyle(fontSize: Constants.fontSizeNormal),),
                  Text(itemPrice,style: TextStyle(fontSize: Constants.fontSizeNormal),),
                ],

              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(itemName,style: TextStyle(fontSize: Constants.fontSizeSmall, color: Constants.lightTextColorSecondary),),
                  Text(time,style: TextStyle(fontSize: Constants.fontSizeSmall, color: Constants.lightTextColorSecondary),),
                ],

              ),
            ],
          ),
        ),

      ],
    );
  }

}
