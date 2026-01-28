import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kohi/core/constant.dart';
import 'package:kohi/core/themes/cubit/theme_cubit.dart';

import '../home.dart';
import 'widgets/home_header.dart';

import 'package:kohi/features/home/view/widgets/home_image_carousel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeBloc(),
      child: HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    logger.e('masuk init state homeview');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: const SystemUiOverlayStyle(
            // statusBarColor: Colors.blue,
            statusBarIconBrightness: Brightness.dark,
            // statusBarBrightness: Brightness.light,
            systemNavigationBarColor: Colors.amber,
          ),
          child: Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                context.read<ThemeCubit>().toggleTheme();
              },
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.abc),
                  label: '1',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.abc),
                  label: '2',
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  SizedBox(
                    height: 400,
                    child: Stack(
                      fit: .loose,
                      children: [
                        HomeImageCarousel(),
                        HomeHeader(),
                      ],
                    ),
                  ),
                  // const SizedBox(height: 15),
                  // HomeMenuCard(),
                  const SizedBox(height: 15),
                  Padding(
                    padding: .symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        HomeOrderType(),
                        const SizedBox(width: 15),
                        HomeOrderType(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(height: 5, color: theme.colorScheme.surfaceDim),
                  const SizedBox(height: 15),
                  Container(
                    margin: .symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surfaceContainer,
                      borderRadius: .circular(7),
                    ),
                    child: Row(
                      mainAxisAlignment: .spaceAround,
                      children: [
                        HomeMenuItem(
                          asset: 'assets/coffee.png',
                          label: 'Free Coffee',
                        ),
                        HomeMenuItem(
                          asset: 'assets/paper-clip.png',
                          label: 'Mission',
                        ),
                        HomeMenuItem(
                          asset: 'assets/membership.png',
                          label: 'Promo',
                        ),
                        HomeMenuItem(
                          asset: 'assets/vouchers.png',
                          label: 'Referal',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  // assets: 'assets/coffee-shop.png',
                  Column(
                    children: [
                      Container(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class HomeMenuItem extends StatelessWidget {
  const HomeMenuItem({
    super.key,
    required this.asset,
    required this.label,
  });
  final String asset;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return SizedBox(
      // padding: .all(10),
      height: 100,
      width: 75,
      child: Column(
        mainAxisAlignment: .center,
        // crossAxisAlignment: .center,
        children: [
          Container(
            padding: .all(7),
            decoration: BoxDecoration(
              color: theme.colorScheme.secondaryContainer,
              shape: .circle,
            ),
            height: 40,
            child: Image.asset(
              // 'assets/coffee.png',
              asset,
              color: theme.colorScheme.onSecondaryContainer,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            // 'Free Coffee',
            label,
            textAlign: .center,
            style: textTheme.labelMedium!.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

class HomeOrderType extends StatelessWidget {
  const HomeOrderType({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Expanded(
      child: Container(
        padding: .symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: theme.colorScheme.primaryContainer,
          borderRadius: .circular(8),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  'Delivery',
                  style: textTheme.labelLarge!.copyWith(
                    color: theme.colorScheme.onTertiaryContainer,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Segera diantar\nke lokasimu',
                  style: textTheme.labelSmall!.copyWith(
                    color: theme.colorScheme.onTertiaryContainer,
                  ),
                ),
              ],
            ),
            Spacer(),
            SizedBox(
              height: 40,
              child: Image.asset(
                'assets/delivery-man.png',
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({
    super.key,
    required this.imageUrl,
    required this.label,
  });
  final String imageUrl;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.only(left: 10),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: .circular(10),
        // border: Border.all(
        //   color: ,
        // ),
      ),
      child: Row(
        children: [
          Flexible(
            child: Center(
              // child: DefText(
              //   label,
              //   fontWeight: FontWeight.bold,
              //   color: kPrimaryColor,
              //   lineHeight: 1.2,
              // ).extraLarge,
              child: Text('data'),
            ),
          ),
          Expanded(
            flex: 3,
            child: ClipPath(
              // clipper: MyClipper(),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
