import 'package:flutter/material.dart';

Row termsConditions(
    bool? agreeToTerms, void Function(bool?) onCheckboxChanged) {
  return Row(
    children: [
      Checkbox(
        value: agreeToTerms ?? false,
        onChanged: onCheckboxChanged,
      ),
      Expanded(
        child: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'I agree to the ',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: 'Terms & Conditions ',
                style: TextStyle(
                  color: Colors.red,
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(
                text: 'and ',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: 'Privacy Statement',
                style: TextStyle(
                  color: Colors.red,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
