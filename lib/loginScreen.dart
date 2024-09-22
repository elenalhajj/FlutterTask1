import 'package:flutter/material.dart';
import 'package:fluttertask1/registerScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        // padding: const EdgeInsets.all(10),

        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/backgroundImage.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60),
            const Text(
              "Login here",
              style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 30),
            const Text(
              "Welcome back you’ve\nbeen missed!",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 90),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                controller: email,
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white54),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.indigo,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: Colors.grey[50],
                  filled: true,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                controller: password,
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white54),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.indigo,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: Colors.grey[50],
                  filled: true,
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot your password?",
                    style: TextStyle(
                      color: Colors.indigo,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            MaterialButton(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              height: 50,
              minWidth: 325,
              onPressed: () {},
              color: Colors.indigo,
              textColor: Colors.white,
              child: const Text(
                "Sign in",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.only(bottom: 5),
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const RegisterScreen()));
                },
                child: const Text(
                  "Create new account",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              "Or continue with",
              style: TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[50],
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle,
                  ),
                  child: const Icon(
                    Icons.g_mobiledata_sharp,
                    size: 22,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[50],
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle,
                  ),
                  child: const Icon(
                    Icons.facebook,
                    size: 20,
                  ),
                ),
                Container(
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[50],
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                    ),
                    child: const Icon(
                      Icons.apple,
                      size: 20,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
