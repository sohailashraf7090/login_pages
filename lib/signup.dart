// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SignUp Page"),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage("assets/images/facebook.png"),
                    height: 70,
                    width: 70,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Maintinence",
                          style: GoogleFonts.rubik(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "BOX",
                          style: GoogleFonts.rubikMonoOne(
                              color: Colors.orange, fontSize: 20),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Center(
                child: Text(
              "Login",
              style: GoogleFonts.rubik(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            )),
            const SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              "Lorem ips Hello word\nLorem ips Hello word",
              style: GoogleFonts.rubik(
                fontSize: 20,
              ),
            )),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  suffixIcon: const Icon(Icons.edit),
                  hintText: "Name",
                  fillColor: Colors.grey[200],
                  filled: true,
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            const SizedBox(
              height: 10,
            ),
            IntlPhoneField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.phone),
                  suffixIcon: const Icon(Icons.edit),
                  hintText: "Contact",
                  fillColor: Colors.grey[200],
                  filled: true,
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              initialCountryCode: 'PK',
              onChanged: (phone) {
                print(phone.countryCode);
                print(phone.completeNumber);
                print(phone.countryCode);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  suffixIcon: const Icon(Icons.edit),
                  hintText: "E-mail",
                  fillColor: Colors.grey[200],
                  filled: true,
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  hintText: "Password",
                  suffixIcon: const Icon(Icons.visibility_off_outlined),
                  fillColor: Colors.grey[200],
                  filled: true,
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                height: 50,
                width: 300,
                decoration: const BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.all(Radius.circular(9))),
                child: RawMaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/studentform");
                    setState(() {});
                  },
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style:
                          GoogleFonts.rubik(fontSize: 20, color: Colors.white),
                    ),
                  ),
                )),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: GoogleFonts.rubik(
                    fontSize: 15,
                  ),
                ),
                RawMaterialButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const LoginPage()));
                    Navigator.pushNamed(context, '/loggedIn');
                    setState(() {});
                  },
                  child: Text(
                    "  Login In",
                    style: GoogleFonts.rubik(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
