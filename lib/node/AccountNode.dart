import 'package:dashboard_app/utils/Constants.dart';
import 'package:dashboard_app/widget/Divider.dart';
import 'package:flutter/material.dart';

class AccountNode extends StatelessWidget {
  final String type,num,moneyCount,time;
  AccountNode({this.type,this.num,this.moneyCount,this.time});

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
                  Text(moneyCount,style: TextStyle(fontSize: Constants.fontSizeNormal),),
                ],

              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(num,style: TextStyle(fontSize: Constants.fontSizeSmall, color: Constants.lightTextColorSecondary),),
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
