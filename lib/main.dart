import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData.dark(),
      home: const AuthScreen(),
    );
  }
}

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.indigo,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Container(
                        width: 45,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.indigo,

                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(5),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(width: 6),

                  Container(
                    width: 60,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(0.5),
                        bottomLeft: Radius.circular(110),
                        topRight: Radius.circular(110),
                        bottomRight: Radius.circular(1),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              const Text(
                "Get your Money \n Under Control",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                "Manage your expenses \n Seamlessly",

                textAlign: TextAlign.center,

                style: TextStyle(
                  fontSize: 16,

                  color: Color.fromARGB(162, 117, 116, 116),
                ),
              ),

              const SizedBox(height: 100),

              SizedBox(
                width: double.infinity,

                child: ElevatedButton(
                  onPressed: () {},

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,

                    padding: const EdgeInsets.symmetric(vertical: 16),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),

                  child: const Text(
                    "Sign Up with Email ID",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              SizedBox(
                width: double.infinity,

                child: OutlinedButton.icon(
                  onPressed: () {},

                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),

                    backgroundColor: Colors.white,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  icon: Image.network(
                    "https://tribe-s3-production.imgix.net/bT75nwdaeew3Igr6M6skm?auto=compress,format&dl",

                    width: 20,

                    height: 20,
                  ),

                  label: const Text(
                    "Sign Up with Google",

                    style: TextStyle(
                      fontSize: 16,

                      color: Colors.black,

                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 65),

              GestureDetector(
                child: const Text.rich(
                  TextSpan(
                    text: "Already have an account? ",

                    style: TextStyle(color: Colors.grey),

                    children: [
                      TextSpan(
                        text: "Sign in",

                        style: TextStyle(
                          color: Colors.indigo,

                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
