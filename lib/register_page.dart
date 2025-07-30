import "package:flutter/material.dart";

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  String statusRegister = "";
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword= TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtKelamin = TextEditingController();
  TextEditingController txtTanggalLahir = TextEditingController();
  

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
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: TextField(
                controller: txtUsername,
                decoration: InputDecoration(
                  labelText: "Masukkan Username",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 15),
            //Password
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: TextField(
                controller: txtPassword,
                decoration: InputDecoration(
                  labelText: "Masukkan Password",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 15),
            //Email
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: TextField(
                controller: txtEmail,
                decoration: InputDecoration(
                  labelText: "Masukkan Email",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 15),
            //Kelamin
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: TextField(
                controller: txtKelamin,
                decoration: InputDecoration(
                  labelText: "Masukkan Kelamin",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 15),

            //Tanggal Lahir
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: TextField(
                controller: txtTanggalLahir,
                decoration: InputDecoration(
                  labelText: "Masukkan Tanggal Lahir",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 15),

            // Button
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                onPressed: () {
                  print("status "+ statusRegister);
                },
                child: Text("Register"),
              ),
            ),
            Text(statusRegister),
         ],
        ),
      ),
    );
  }
}
