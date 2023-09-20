import 'package:cari_kopi_1/common_widget/line_textfield.dart';
import 'package:cari_kopi_1/common_widget/round_button.dart';
import 'package:flutter/material.dart';
import 'package:cari_kopi_1/common/color_extenstion.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            width: media.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: media.width * 0.15,
                ),
                Text(
                  "Welcome To\nCari Kopi",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: TColor.text,
                      fontSize: 40,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "Sign in to continue",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: TColor.gray,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: media.width * 0.14,
                ),
                LineTextField(
                  controller: txtEmail,
                  hitText: "Email",
                ),
                SizedBox(
                  height: media.width * 0.14,
                ),
                LineTextField(
                  controller: txtPassword,
                  obscureText: true,
                  hitText: "Password",
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Lupa Password?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: TColor.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.02,
                ),
                RoundButton(
                  title: "Login",
                  onPressed: () {},
                  type: RoundButtonType.primary,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
