import 'package:teander_app/constants/colors.dart';
import 'package:flutter/material.dart';

class UserInfoPage extends StatelessWidget {
  UserInfoPage({Key? key, required this.image, x}) : super(key: key);
  final String image;

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
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: ColorConstants.primaryColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: IconButton(
              icon: Icon(
                Icons.more_vert,
                color: ColorConstants.primaryColor,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          CustomScrollView(slivers: [
            SliverToBoxAdapter(
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                margin: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.only(bottomLeft: Radius.circular(50)),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                    scale: 1.1,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Teander',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: ColorConstants.secondary)),
                        const SizedBox(width: 10),
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: ColorConstants.active,
                            shape: BoxShape.circle,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text('Swipe Swipe Lang hahaha',
                        style: TextStyle(
                            color: ColorConstants.secondary, fontSize: 16)),
                    const SizedBox(
                      height: 8,
                    ),
                    Text('Order now',
                        style: TextStyle(
                            color: ColorConstants.secondary, fontSize: 16)),
                    const SizedBox(
                      height: 32,
                    ),
                    Text('ABOUT TEANDER APP',
                        style: TextStyle(
                            color: ColorConstants.secondary,
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                        'Teander is a mobile application that allows users to discover and connect with local milk tea shops. It functions similarly to the popular dating app Tinder, where users swipe left or right to indicate their interest in a potential match. However, in Teander, users swipe left or right to indicate whether they like or dislike a particular milk tea shop. The app is designed to help users find new and interesting milk tea shops in their area, as well as share their own favorite spots with others. Users can also leave reviews and ratings for the shops they visit, as well as receive exclusive discounts and promotions through the app. Teander is a unique concept that combines the popular swiping feature of dating apps with the growing popularity of milk tea shops. It provides a fun and interactive way for milk tea lovers to discover new flavors and support local businesses.',
                        style: TextStyle(
                            color: ColorConstants.secondary,
                            fontSize: 16,
                            height: 1.5,
                            fontWeight: FontWeight.normal)),
                    const SizedBox(
                      height: 32,
                    ),
                    Text('MORE PHOTOS',
                        style: TextStyle(
                            color: ColorConstants.secondary,
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      height: 120,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: images.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 114,
                            height: 114,
                            margin: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(images[index]),
                                fit: BoxFit.fitWidth,
                                alignment: Alignment.topCenter,
                                // scale: 1.1,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    )
                  ],
                ),
              ),
            ),
          ]),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.white,
                    Colors.white,
                    Colors.white.withOpacity(0.6),
                    Colors.white.withOpacity(0),
                  ],
                ),
              ),
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
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _chip(
      {required Color background,
      required Color color,
      required String title}) {
    return Chip(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      label: Text(title, style: TextStyle(color: color)),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
      backgroundColor: background,
    );
  }
}
