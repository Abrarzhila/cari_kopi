import 'package:cari_kopi_1/common_widget/line_textfield.dart';
import 'package:cari_kopi_1/common_widget/round_button.dart';
import 'package:cari_kopi_1/view/login/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:cari_kopi_1/common/color_extenstion.dart';
import 'package:cari_kopi_1/view/login/forgot_password_view.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Otp_View extends StatefulWidget {
  const Otp_View({super.key});

  @override
  State<Otp_View> createState() => _Otp_ViewState();
}

class _Otp_ViewState extends State<Otp_View> {
  TextEditingController txtOTP = TextEditingController();

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
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: TColor.primary,
                    ),
                  ),
                ),
                Text(
                  "Verifikasi Nomor Anda",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: TColor.text,
                      fontSize: 40,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "Input Code",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: TColor.gray,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: media.width * 0.14,
                ),
                OtpTextField(
                  numberOfFields: 4,
                  borderColor: TColor.gray,
                  focusedBorderColor: TColor.primary,
                  textStyle: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w700),
                  showFieldAsBox: false,
                  borderWidth: 4.0,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here if necessary
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {},
                ),
                SizedBox(
                  height: media.width * 0.23,
                ),
                RoundButton(
                  title: "Verify Now",
                  onPressed: () {},
                  type: RoundButtonType.primary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
