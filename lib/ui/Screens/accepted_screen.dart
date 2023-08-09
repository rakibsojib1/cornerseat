import 'package:flutter/material.dart';
import '../widget/comon_el_button.dart';

class AcceptedScreen extends StatelessWidget {
  const AcceptedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 214, 214),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/images/lov.png',
                  fit: BoxFit.fitWidth,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "• It's a date",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    CircleAvatar(
                      radius: 50, // Adjust the size as needed
                      backgroundImage: AssetImage('assets/images/profile.png'),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "This meeting is Accepted by",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Robaert Fox",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "in 1week 2 days",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16), // Add some spacing between elements
          Expanded(
            child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      "Meet Details",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(100, 0, 0,
                                0), // Adjust the alpha value (100) for opacity
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16)),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            const DecoratedBox(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    width:
                                        1.0, // Adjust the width of the underline
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    bottom:
                                        10), // Adjust this value for spacing
                                child: Text(
                                  "Fryday  |  28/07/23  |  12:00PM(L)",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 94, 93, 91),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Location: ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Aaha Foot Court',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 94, 93, 91),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 16,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24, right: 24),
                      child: CommonElevatedButton(
                        color: Colors.black,
                        onTap: () {},
                        title: "Cancel Meet",
                        backgroundColor: Colors.white70,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: CommonElevatedButton(
                        color: Colors.white,
                        title: 'Close',
                        backgroundColor: const Color(0xFF762A39),
                        onTap: () {},
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
