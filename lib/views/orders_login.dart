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
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width * 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text("Let's Start with Login!", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: white)),
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(boxShadow: <BoxShadow>[BoxShadow(color: grey.withOpacity(.1))], color: white, borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const SizedBox(height: 30),
                      const SizedBox(height: 30),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
