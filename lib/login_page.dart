import "package:flutter/material.dart";
import 'package:latihan_11pplg2/customitem/customtext.dart';
import 'package:latihan_11pplg2/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String statusLogin = "";
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPasword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            // Text(
            //   "Welcome to our application",
            //   style: TextStyle(
            //     color: Colors.blue,
            //     fontWeight: FontWeight.bold,
            //     fontSize: 20,
            //     fontFamily: 'Roboto',
            //   ),
            // ),
            // Text(
            //   "Please fill username and password below",
            //   style: TextStyle(
            //     color: Colors.red,
            //     fontWeight: FontWeight.w800,
            //     fontSize: 20,
            //     fontFamily: 'Roboto',
            //   ),
            // ),

            // Image
            // Center(
            //   child: Container(
            //     width: 100,
            //     child: Image.asset('image/ikan.jpg'),
            //   ),
            // ),

            // Username
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Customtext(
                label: "Username",
                color: Colors.cyan,
                pass: false,
                controller: txtUsername,
              ),
            ),
            SizedBox(height: 15),

            // Password
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Customtext(
                label: "Password",
                color: Colors.red,
                pass: true,
                controller: txtPasword,
              ),
            ),
            SizedBox(height: 20),

            // Button
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                onPressed: () {
                  if (txtUsername.text == "admin" &&
                      txtPasword.text == "admin") {
                    setState(() {
                      statusLogin = "Login Success";
                    });
                  } else {
                    setState(() {
                      statusLogin = "Login Failed";
                    });
                  }
                  print("status " + statusLogin);
                },
                child: Text("Login"),
              ),
            ),
            Text(statusLogin),

            Container(
              width: double.infinity,
              child: ElevatedButton(
                child: Text("Register"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class register_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Register")),
      body: Center(
        child: Text(
          "Masukkan Nama, Email, dan Jenis kelamin!",
          style: TextStyle(fontSize: 12),
        ),
      ),
    );
  }
}
