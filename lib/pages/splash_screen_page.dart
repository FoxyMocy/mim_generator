part of 'pages.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  ImagesApp().pepeLogo,
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "MIM Generator",
                  style: GoogleFonts.luckiestGuy(fontSize: 24),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: Text(
                "by Aldi Jayadi",
                style: GoogleFonts.mitr(
                  fontSize: 16,
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
