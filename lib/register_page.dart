import "package:flutter/material.dart";
import 'package:latihan_11pplg2/customitem/customtext.dart';
import 'package:latihan_11pplg2/register_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String statusRegister = "";
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtKelamin = TextEditingController();
  TextEditingController txtTanggalLahir = TextEditingController();

  void validateAndRegister() {
    setState(() {
      if (txtUsername.text.isEmpty) {
        statusRegister = "Username belum diisi!";
      } else if (txtPassword.text.isEmpty) {
        statusRegister = "Password belum diisi!";
      } else if (txtEmail.text.isEmpty) {
        statusRegister = "Email belum diisi!";
      } else if (txtKelamin.text.isEmpty) {
        statusRegister = "Kelamin belum diisi!";
      } else if (txtTanggalLahir.text.isEmpty) {
        statusRegister = "Tanggal lahir belum diisi!";
      } else {
        statusRegister = "Pendaftaran berhasil!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            //Username
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              child: Customtext(
                label: "Username",
                color: Colors.black,
                pass: false,
                controller: txtUsername,
                isNumber: false,
              ),
            ),
            SizedBox(height: 15),
            //Password
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              child: Customtext(
                label: "Password",
                color: Colors.black,
                pass: false,
                controller: txtPassword,
                isNumber: false,
              ),
            ),
            SizedBox(height: 15),
            //Email
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              child: Customtext(
                label: "Email",
                color: Colors.black,
                pass: false,
                controller: txtEmail,
                isNumber: false,
              ),
            ),
            SizedBox(height: 15),
            //Kelamin
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              child: Customtext(
                label: "Kelamin",
                color: Colors.black,
                pass: false,
                controller: txtKelamin,
                isNumber: false,
              ),
            ),
            SizedBox(height: 15),

            //Tanggal Lahir
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              child: Customtext(
                label: "Tanggal Lahir",
                color: Colors.black,
                pass: false,
                controller: txtTanggalLahir,
                isNumber: false,
              ),
            ),
            SizedBox(height: 15),

            // Button
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 5),
              child: ElevatedButton(
                onPressed: validateAndRegister,
                child: Text("Register"),
              ),
            ),
            SizedBox(height: 5),
            Text(statusRegister, style: TextStyle(color: Colors.red)),
          ],
        ),
      ),
    );
  }
}
