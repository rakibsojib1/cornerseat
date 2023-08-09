import 'package:flutter/material.dart';

Row phoneNumberFeild(
    String selectedCountryCode, void Function(String) onCountryCodeChanged) {
  return Row(
    children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: DropdownButton<String>(
          value: selectedCountryCode,
          onChanged: (newValue) {
            onCountryCodeChanged(newValue!);
          },
          items: <String>['+880', '+91']
              .map<DropdownMenuItem<String>>(
                (String value) => DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                ),
              )
              .toList(),
          underline: Container(),
          icon: const Icon(Icons.arrow_drop_down),
        ),
      ),
      const SizedBox(width: 8),
      Expanded(
        flex: 4,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'Enter Here',
              border: InputBorder.none,
            ),
            keyboardType: TextInputType.number,
          ),
        ),
      ),
    ],
  );
}
