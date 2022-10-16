import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mangojek/theme.dart';
import 'package:mangojek/widgets/bottom_navbar_item.dart';
import 'package:mangojek/widgets/cuisine_item.dart';
import 'package:mangojek/widgets/feature_item.dart';

class HomePage extends StatelessWidget {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget location() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 16),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Your Location',
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: regular,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/arrow_bottom.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  'Haurgeulis',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semibold,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget searchBar() {
      return Container(
        margin: EdgeInsets.only(bottom: horizontalPadding),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(width: 0.2),
          borderRadius: BorderRadius.circular(radius),
        ),
        child: TextFormField(
          cursorColor: greenColor,
          style: greyTextStyle.copyWith(
            fontSize: 14,
            fontWeight: light,
            letterSpacing: 0.2,
          ),
          decoration: InputDecoration(
            isDense: true,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: greenColor),
              borderRadius: BorderRadius.circular(radius),
            ),
            enabledBorder: InputBorder.none,
            contentPadding: const EdgeInsets.all(20),
            hintText: 'What would you like to eat?',
            labelStyle: greyTextStyle.copyWith(
              fontSize: 14,
              fontWeight: light,
            ),
            border: InputBorder.none,
            hintStyle: greyTextStyle.copyWith(
              fontSize: 14,
              fontWeight: light,
            ),
            prefixIconColor: greenColor,
            prefixIcon: const Icon(Icons.search),
          ),
        ),
      );
    }

    Widget slider() {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: greenColor,
        ),
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            viewportFraction: 1.0,
          ),
          items: imgList
              .map(
                (item) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(radius),
                    color: greenColor,
                  ),
                  child: Container(
                    child: Image.network(
                      item,
                      fit: BoxFit.cover,
                      width: 1000,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      );
    }

    Widget iconGroup() {
      return Container(
        margin: EdgeInsets.only(top: verticalPadding),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                FeatureItem(
                  imageUrl: 'assets/destination.png',
                  name: 'Near Me',
                ),
                FeatureItem(
                  imageUrl: 'assets/love.png',
                  name: 'Most Loved',
                ),
                FeatureItem(
                  imageUrl: 'assets/dish.png',
                  name: 'Top Foods',
                ),
                FeatureItem(
                  imageUrl: 'assets/tag.png',
                  name: 'Promo',
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                FeatureItem(
                  imageUrl: 'assets/top_rated.png',
                  name: 'Top Rated',
                ),
                FeatureItem(
                  imageUrl: 'assets/shopkeeper.png',
                  name: 'Top Seller',
                ),
                FeatureItem(
                  imageUrl: 'assets/drink.png',
                  name: 'Top Drinks',
                ),
                FeatureItem(
                  imageUrl: 'assets/app.png',
                  name: 'All Categories',
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget voucher() {
      return Container(
        margin: EdgeInsets.only(top: verticalPadding),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.2,
            color: greyColor,
          ),
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/coupon.png'),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  '100+ coupons are available',
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            const Icon(
              Icons.arrow_circle_right_rounded,
              color: greenColor,
            )
          ],
        ),
      );
    }

    Widget cuisine() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: verticalPadding),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Choose From Cuisine',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                Text(
                  'See All',
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                    color: greenColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  CuisineItem(
                    name: 'Seblak',
                    imageUrl: 'assets/seblak.jpg',
                  ),
                  CuisineItem(
                    name: 'Beverages',
                    imageUrl: 'assets/beverages.jpg',
                  ),
                  CuisineItem(
                    name: 'Chicken',
                    imageUrl: 'assets/chicken.jpg',
                  ),
                  CuisineItem(
                    name: 'Rice',
                    imageUrl: 'assets/rice.jpg',
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget bottomNavbar() {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: 8,
        ),
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: whiteColor,
          border: Border.all(
            width: 0.2,
            color: greenColor,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            BottomNavbarItem(
              name: 'Explore',
              isActive: true,
            ),
            BottomNavbarItem(
              name: 'Pickup',
            ),
            BottomNavbarItem(
              name: 'Search',
            ),
            BottomNavbarItem(
              name: 'Promos',
            ),
            BottomNavbarItem(
              name: 'History',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      bottomNavigationBar: bottomNavbar(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: verticalPadding,
          ),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                location(),
                searchBar(),
                slider(),
                iconGroup(),
                voucher(),
                cuisine(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
