import 'package:flutter/material.dart';

import '../widget/PhoneNumberFeild.dart';
import '../widget/TermsandConditions.dart';
import '../widget/comon_el_button.dart';
import 'accepted_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String selectedCountryCode = '+880'; // Default country code
  bool agreeToTerms = false; // Checkbox state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              'assets/images/Vector.png',
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text('Mobile Number'),
                    const SizedBox(height: 8),
                    Expanded(
                      child: phoneNumberFeild(
                        selectedCountryCode,
                        (newValue) {
                          setState(() {
                            selectedCountryCode = newValue;
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: termsConditions(
                          agreeToTerms,
                          (value) {
                            setState(() {
                              agreeToTerms = value ?? false;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 50, left: 16, right: 16),
                        child: CommonElevatedButton(
                          title: 'Get OTP',
                          color: Colors.white,
                          backgroundColor: const Color(0xFF762A39),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AcceptedScreen()),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
