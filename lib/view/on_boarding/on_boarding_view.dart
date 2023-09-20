import 'package:cari_kopi_1/common_widget/round_button.dart';
import 'package:cari_kopi_1/view/login/login_view.dart';
import 'package:flutter/material.dart';
import 'package:cari_kopi_1/common/color_extenstion.dart';

class OnBoardingVIew extends StatefulWidget {
  const OnBoardingVIew({super.key});

  @override
  State<OnBoardingVIew> createState() => _OnBoardingVIewState();
}

class _OnBoardingVIewState extends State<OnBoardingVIew> {
  int Select = 0;
  PageController controller = PageController();

  List infoArr = [
    {
      "title": "Cari Kopi Yuk",
      "sub_title": "Set your location to start exploring\nCafe around you",
      "icon": "assets/img/7.png"
    },
    {
      "title": "Search for a place",
      "sub_title": "Set your location to start exploring\ncafe around you",
      "icon": "assets/img/2.png"
    },
    {
      "title": "Variety of Coffee",
      "sub_title": "Set your location to start exploring\ncafe around you",
      "icon": "assets/img/3.png"
    },
    {
      "title": "Fast shipping",
      "sub_title": "Set your location to start exploring\ncafe around you",
      "icon": "assets/img/4.png"
    },
  ];

  get selectPage => null;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: TColor.primary,
        body: SafeArea(
            child: Stack(
          children: [
            PageView.builder(
                controller: controller,
                itemCount: infoArr.length,
                itemBuilder: (context, index) {
                  var iObj = infoArr[index] as Map? ?? {};

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        iObj["icon"].toString(),
                        width: media.width * 0.5,
                        height: media.width * 0.5,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        height: media.width * 0.1,
                      ),
                      Text(
                        iObj["title"].toString(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: media.width * 0.03,
                      ),
                      Text(iObj["sub_title"].toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700))
                    ],
                  );
                }),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RoundButton(
                  title: "Login",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginView()));
                  },
                ),
                SizedBox(
                  height: media.width * 0.1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: infoArr.map((iObj) {
                    var index = infoArr.indexOf(iObj);

                    return Container(
                        margin: const EdgeInsets.all(8),
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            color: selectPage == index
                                ? Colors.white
                                : Colors.white54,
                            borderRadius: BorderRadius.circular(7.5)));
                  }).toList(),
                )
              ],
            )
          ],
        )));
  }
}
