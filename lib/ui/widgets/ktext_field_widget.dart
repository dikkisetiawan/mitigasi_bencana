import '/ui/theme.dart';
import 'package:flutter/material.dart';

class KtextFieldWidget extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final Widget suffixIcon;
  final TextEditingController? controller;

  const KtextFieldWidget({
    Key? key,
    required this.hintText,
    this.obscureText = false,
    required this.suffixIcon,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleWidget(),
        SizedBox(
          height: defaultMargin / 2,
        ),
        textFormFieldWidget(),
      ],
    );
  }

  Container textFormFieldWidget() {
    return Container(
      decoration: BoxDecoration(
        color: kDarkGreyColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(defaultCircular),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: greyTextStyle,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Row titleWidget() {
    return Row(
      children: [
        suffixIcon,
        SizedBox(
          width: defaultMargin / 2,
        ),
        Text(
          hintText,
          style: blackTextStyle,
        )
      ],
    );
  }
}
