import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35, left: 20),
            child: Text(
              "Welcome Back!",
              style: GoogleFonts.sora(
                  textStyle: TextStyle(
                      color: const Color(0xFF3F3D56),
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 20),
            child: Text(
              "Let's Log in.",
              style: GoogleFonts.sora(
                  textStyle: TextStyle(
                      color: const Color(0xFF3F3D56),
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(height: 15),
          Center(
            child: Image.asset(
              "assets/logo.png",
              alignment: Alignment.bottomCenter,
            ),
          ),
          SizedBox(height: 35),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          filled: true,
                          hintText: 'abc@gmail.com',
                          label: Text("Email"),
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.grey,
                          ),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(height: 15),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Password',
                          label: Text("Password"),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.lock_open_outlined,
                            color: Colors.grey,
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Colors.grey,
                          ),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Remember me",
                  style: GoogleFonts.sora(
                      textStyle: TextStyle(
                          fontSize: 15,
                          color: const Color(0xFF4E4B66),
                          fontWeight: FontWeight.bold)),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.sora(
                        textStyle: TextStyle(
                            fontSize: 15,
                            color: const Color(0xFF4E4B66),
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1877F2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: GoogleFonts.sora(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
