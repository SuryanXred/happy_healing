import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/constants.dart';

import '../../data/datasource/dummy_data.dart';

import '../../widgets/home/hero_banner.dart';
import '../../widgets/home/home_header.dart';
import '../../widgets/home/route_card.dart';
import '../../widgets/home/schedule_card.dart';
import '../../widgets/home/section_header.dart';

import '../detail/route_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          AppColors.background,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,

            children: [

              // ======================
              // HEADER
              // ======================

              const HomeHeader(
                location: 'Bali',
                region: 'Indonesia',

                profileImage:
                    'https://i.pravatar.cc/150?img=12',
              ),

              // ======================
              // HERO BANNER
              // ======================

              HeroBanner(
                title:
                    'Explore The Ocean',

                subtitle:
                    'Discover beautiful coral reefs and unforgettable snorkeling experiences.',

                image:
                    'https://images.unsplash.com/photo-1544551763-46a013bb70d5?q=80&w=1200',

                onPressed: () {},
              ),

              const SizedBox(
                height:
                    AppSize.sectionGap,
              ),

              // ======================
              // SCHEDULE SECTION
              // ======================

              AppSection(
                title:
                    'Schedule Session',

                onTap: () {},
              ),

              const SizedBox(
                height: 16,
              ),

              SizedBox(
                height: 120,

                child: ListView(
                  scrollDirection:
                      Axis.horizontal,

                  padding:
                      const EdgeInsets
                          .symmetric(
                    horizontal:
                        AppSize.padding,
                  ),

                  children: const [

                    ScheduleCard(
                      title: 'Morning Session',
                      time: '08.00 - 11.00',
                      slot: 12,
                      color: Colors.orange,
                      icon: Icons.wb_sunny,
                    ),

                    ScheduleCard(
                      title: 'Afternoon Session',
                      time: '13.00 - 16.00',
                      slot: 8,
                      color: Colors.blue,
                      icon: Icons.wb_cloudy,
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height:
                    AppSize.sectionGap,
              ),

              // ======================
              // ROUTE SECTION
              // ======================

              AppSection(
                title:
                    'Popular Routes',

                onTap: () {},
              ),

              const SizedBox(
                height: 18,
              ),

              SizedBox(
                height: 270,

                child:
                    ListView.builder(
                  scrollDirection:
                      Axis.horizontal,

                  padding:
                      const EdgeInsets
                          .symmetric(
                    horizontal:
                        AppSize.padding,
                  ),

                  itemCount:
                      snorkelingRoutes
                          .length,

                  itemBuilder:
                      (
                    context,
                    index,
                  ) {

                    final route =
                        snorkelingRoutes[
                            index];

                    return RouteCard(
                      route: route,

                      onTap: () {

                        Navigator.push(
                          context,

                          MaterialPageRoute(
                            builder: (_) =>
                                RouteDetailScreen(
                              route:
                                  route,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),

              const SizedBox(
                height:
                    AppSize.sectionGap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}