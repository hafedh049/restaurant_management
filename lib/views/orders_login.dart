import 'package:flutter/material.dart';
import 'package:restaurant_management/utils/globals.dart';

class OrdersLogin extends StatefulWidget {
  const OrdersLogin({super.key});

  @override
  State<OrdersLogin> createState() => _OrdersLoginState();
}

class _OrdersLoginState extends State<OrdersLogin> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(color: brown, height: MediaQuery.sizeOf(context).height * .3),
            Expanded(
              child: Container(
                color: white,
                alignment: Alignment.bottomCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: const Text("Login as a Driver", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: white)),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {},
                      child: const Text("Login as a Manager", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: white)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[],
          ),
        )
      ],
    );
  }
}
