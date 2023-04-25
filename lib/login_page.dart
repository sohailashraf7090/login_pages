import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("LogIn Page")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
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
              "Lorem ips Hello word\nThis is login page word",
              style: GoogleFonts.rubik(
                fontSize: 20,
              ),
            )),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    suffixIcon: const Icon(Icons.edit),
                    hintText: "Enter Your E-mail",
                    labelText: "E-mail",
                    fillColor: Colors.grey[200],
                    filled: true,
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    hintText: "Enter Your Password",
                    labelText: "Password",
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
            ),
            Padding(
              padding: const EdgeInsets.only(left: 230),
              child: Text(
                "Forget Password?",
                style: GoogleFonts.rubik(
                  fontSize: 15,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              height: 50,
              width: 300,
              decoration: const BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.all(Radius.circular(9))),
              child: Center(
                  child: Text(
                "Log-in",
                style: GoogleFonts.rubik(fontSize: 20, color: Colors.white),
              )),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an Account?",
                  style: GoogleFonts.rubik(
                    fontSize: 15,
                  ),
                ),
                RawMaterialButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => const SignUP()));
                    Navigator.pushReplacementNamed(context, '/signup');
                    setState(() {});
                  },
                  child: Text(
                    "  Sign-Up",
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
      ),
    );
  }
}
