import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:teander_app/constants/colors.dart';
import 'package:teander_app/widgets/swipe.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ProfileCard> profile = [];

  List<String> images = [
    'assets/images/samp1.jpg',
    'assets/images/samp2.jpg',
    'assets/images/samp3.jpg',
    'assets/images/samp4.jpg',
    'assets/images/samp5.jpeg',
    'assets/images/samp6.png',
    'assets/images/samp7.png',
    'assets/images/samp8.png',
    'assets/images/samp9.png',
    'assets/images/samp10.png',
  ];

  @override
  void initState() {
    super.initState();
    _loadCards();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        elevation: 0,
        title: Text('Teander',
            style: TextStyle(
                color: ColorConstants.primaryColor,
                fontSize: 28,
                fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: Icon(
            Icons.person,
            color: ColorConstants.primaryColor,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.message,
              color: ColorConstants.primaryColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          AppinioSwiper(
            padding: const EdgeInsets.only(bottom: 130, top: 16),
            cards: profile,
          ),
          Positioned(
              bottom: 50,
              right: 0,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.close,
                        color: ColorConstants.close,
                        size: 32,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.star,
                        color: ColorConstants.star,
                        size: 32,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: ColorConstants.favorite,
                        size: 32,
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  void _loadCards() {
    for (String image in images) {
      profile.add(ProfileCard(image: image));
    }
  }
}
