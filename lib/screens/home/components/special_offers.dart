import 'package:e_commerce/common/dimension.dart';
import 'package:e_commerce/screens/home/components/titles.dart';
import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitles(
          title: 'Special for you',
          press: () {},
        ),
        SizedBox(height: AppDimensions.getScreenHeight(15)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: 'assets/images/Image Banner 2.png',
                category: 'SmartPhone',
                totalbrands: 18,
                press: () {},
              ),
              SpecialOfferCard(
                image: 'assets/images/Image Banner 3.png',
                category: 'Fashion',
                totalbrands: 25,
                press: () {},
              ),
              SizedBox(width: AppDimensions.getScreenWidth(40)),
            ],
          ),
        ),
      ],
    );
  }
}
//

class SpecialOfferCard extends StatelessWidget {
  final String category;
  final String image;
  final int totalbrands;
  final void Function()? press;
  const SpecialOfferCard({
    super.key,
    required this.category,
    required this.image,
    required this.totalbrands,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.only(left: AppDimensions.getScreenWidth(20)),
        child: SizedBox(
          width: AppDimensions.getScreenWidth(240),
          height: AppDimensions.getScreenHeight(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xFF343434).withOpacity(0.4),
                        const Color(0xFF343434).withOpacity(0.15)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppDimensions.getScreenWidth(10),
                      vertical: AppDimensions.getScreenWidth(10)),
                  child: Text.rich(
                    TextSpan(
                      style: const TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: '$category\n',
                          style: TextStyle(
                              fontSize: AppDimensions.getScreenWidth(20),
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                            text: '$totalbrands Brands',
                            style: TextStyle(fontSize: AppDimensions.getScreenWidth(17)))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
