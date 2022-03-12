import 'package:flutter/material.dart';

Widget LoginButton({
  required double width,
  required double height,
  required Color colors,
  required Function function,
  required double radius,
  required String text,
}) =>
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(radius),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          'LOGIN',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
