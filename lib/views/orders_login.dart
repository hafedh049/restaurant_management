import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:restaurant_management/utils/globals.dart';

class OrdersLogin extends StatefulWidget {
  const OrdersLogin({super.key});

  @override
  State<OrdersLogin> createState() => _OrdersLoginState();
}

class _OrdersLoginState extends State<OrdersLogin> {
  final TextEditingController _phoneController = TextEditingController();

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(color: brown, height: MediaQuery.sizeOf(context).height * .4),
            Expanded(
              child: Container(
                color: white,
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: const Text("Login as a Driver", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: blue)),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {},
                      child: const Text("Login as a Manager", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: blue)),
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
            children: <Widget>[
              const Text("Let's Start with Login!", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: white)),
              const SizedBox(height: 30),
              Container(
                width: MediaQuery.sizeOf(context).width * .8,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[BoxShadow(color: black.withOpacity(.1), offset: const Offset(7, 7), blurStyle: BlurStyle.outer)],
                  color: white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    InternationalPhoneNumberInput(
                      onInputChanged: (PhoneNumber number) {},
                      onInputValidated: (bool value) {},
                      selectorConfig: const SelectorConfig(
                        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                        useBottomSheetSafeArea: true,
                      ),
                      ignoreBlank: false,
                      autoValidateMode: AutovalidateMode.disabled,
                      selectorTextStyle: const TextStyle(color: brown),
                      initialValue: null,
                      textFieldController: _phoneController,
                      formatInput: true,
                      keyboardType: const TextInputType.numberWithOptions(),
                      inputBorder: const OutlineInputBorder(),
                    ),
                    const SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: brown,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: <BoxShadow>[BoxShadow(color: black.withOpacity(.1), offset: const Offset(5, 7), blurStyle: BlurStyle.outer)],
                        ),
                        child: const Center(child: Text("Send verification code", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: white))),
                      ),
                    ),
                    const SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {},
                      child: const Text("Or login with password", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: blue)),
                    ),
                    const SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {},
                      child: const Text("Skip", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: blue)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
