import 'package:flutter/material.dart';

import '/ui/widgets/ktext_field_widget.dart';
import '/ui/widgets/kprimary_button_widget.dart';
import '/ui/theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  double buttonHeight = 30;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(defaultMargin),
        children: [
          Image.asset('assets/logo.jpg'), //logo
          const SizedBox(
            height: defaultMargin,
          ),
          radioButtonWidget(), //custom radio button
          const SizedBox(
            height: defaultMargin,
          ),
          const KtextFieldWidget(
              hintText: 'Email', suffixIcon: Icon(Icons.email)),
          const SizedBox(
            height: defaultMargin,
          ),
          const KtextFieldWidget(
              hintText: 'Kata Sandi', suffixIcon: Icon(Icons.password)),
          forgetPasswordButtonWidget(),
          const SizedBox(
            height: defaultMargin * 3,
          ),
          kFloatingActionButton()
        ],
      ),
    );
  }

  Align forgetPasswordButtonWidget() {
    return Align(
        alignment: Alignment.centerRight,
        child: TextButton(
          onPressed: () {},
          child: Text(
            'Lupa Kata Sandi?',
            style: buttonTextStyle,
          ),
        ));
  }

  Widget kFloatingActionButton() {
    return Column(
      children: [
        KprimaryButtonWidget(
            buttonColor: kPrimaryColor,
            onPressed: () {},
            textColor: kWhiteColor,
            textValue: 'Masuk'),
        SizedBox(
          height: defaultMargin / 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Belum punya akun?',
              style: blackTextStyle,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Buat akun',
                  style: buttonTextStyle,
                ))
          ],
        )
      ],
    );
  }

  Row radioButtonWidget() {
    return Row(
      children: [
        Expanded(
          child: KprimaryButtonWidget(
            buttonColor: index == 0 ? kPrimaryColor : kWhiteColor,
            buttonHeight: buttonHeight,
            textValue: 'Relawan'.toUpperCase(),
            textColor: index == 0 ? kWhiteColor : kPrimaryColor,
            onPressed: () {
              setState(() {
                index = 0;
              });
            },
          ),
        ),
        const SizedBox(
          width: defaultMargin,
        ),
        Expanded(
          child: KprimaryButtonWidget(
            buttonColor: index == 1 ? kPrimaryColor : kWhiteColor,
            buttonHeight: buttonHeight,
            textValue: 'Pelapor'.toUpperCase(),
            textColor: index == 1 ? kWhiteColor : kPrimaryColor,
            onPressed: () {
              setState(() {
                index = 1;
              });
            },
          ),
        )
      ],
    );
  }
}
