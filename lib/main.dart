import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:gap/gap.dart';
import 'package:linktree_me/constants/color.dart';

void main() => runApp(const App());

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '@devreiis - GitHub',
      home: Scaffold(
        backgroundColor: Colors.white.withBlue(240),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage('assets/images/me.jpg'),
                ),
                const Gap(20),
                const Text(
                  'Jhônatan Reis',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const Gap(7),
                const Text(
                  'SOFTWARE ENGINEER - FLUTTER MOBILE',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const Gap(30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      color: const Color(0xff00abf0),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 80,
                        vertical: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      onPressed: () {},
                      textColor: ColorCustom.secondColor,
                      child: const Text('Projetos'),
                    ),
                    const Gap(30),
                    MaterialButton(
                      color: const Color(0xff00abf0),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 65,
                        vertical: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      onPressed: () {},
                      textColor: ColorCustom.secondColor,
                      child: const Text('Certificações'),
                    ),
                    const Gap(30),
                    MaterialButton(
                      color: const Color(0xff00abf0),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 73,
                        vertical: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      onPressed: () {},
                      textColor: ColorCustom.secondColor,
                      child: const Text('Sobre Mim'),
                    ),
                    const Gap(30),
                    MaterialButton(
                      color: const Color(0xff00abf0),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 80,
                        vertical: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      onPressed: () {},
                      textColor: ColorCustom.secondColor,
                      child: const Text('Discord'),
                    ),
                    const Gap(5),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MaterialButton(
                            onPressed: _launchUrlGitHub,
                            child: SizedBox(
                              height: 30,
                              width: 30,
                              child: Image.asset(
                                'assets/images/github.png',
                                fit: BoxFit.fill,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                          const Gap(25),
                          MaterialButton(
                            onPressed: _launchUrlLinkedin,
                            child: SizedBox(
                              height: 30,
                              width: 30,
                              child: Image.asset(
                                'assets/images/linkedin.png',
                                fit: BoxFit.fill,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _launchUrlGitHub() async {
    Uri url = Uri.parse("https://github.com/devreiis");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw ("ocorreu um erro ao encontrar a url");
    }
  }

  _launchUrlLinkedin() async {
    Uri url = Uri.parse("https://www.linkedin.com/in/jhonatansantana");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw ("ocorreu um erro ao encontrar a url");
    }
  }
}
