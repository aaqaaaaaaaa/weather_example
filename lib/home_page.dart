import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_example/widgets/avatar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 85,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: LayoutBuilder(
          builder: (context, constraints) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatarWidget(
                  child: Padding(
                    padding: const EdgeInsets.all(17.5),
                    child: SvgPicture.asset('assets/icons/settings.svg'),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/map_icon.svg'),
                        const SizedBox(height: 7.5),
                        const Text(
                          'Фергана',
                          style: TextStyle(
                              color: Color(0xff25272E),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Container(
                      height: 22,
                      width: 69,
                      child: Text(
                        'Updating°',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          stops: [0, 91],
                          colors: [
                            const Color(0xffE662E5).withOpacity(0),
                            const Color(0xff5364F0),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                CircleAvatarWidget(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Image.asset('assets/account_image.png'),
                  ),
                ),
              ],
            );
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xffFEF7FF).withOpacity(0),
              const Color(0xffFCEBFF),
            ],
          ),
        ),
      ),
    );
  }
}
