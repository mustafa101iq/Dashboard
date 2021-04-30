import 'package:dashboard_app/utils/Constants.dart';
import 'package:flutter/material.dart';

Widget divider() {
  return  Padding(
    padding: const EdgeInsets.only(top: 8),
    child: Divider(color: Constants.lightTextColorSecondary,),
  );
}