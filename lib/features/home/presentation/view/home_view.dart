import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/themes/cubit/theme_cubit.dart';
import '../../home.dart';
import '../widgets/home_header.dart';
import '../widgets/home_image_carousel.dart';
import '../widgets/home_menu_item.dart';
import '../widgets/home_oder_type.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
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
                  const SizedBox(height: 15),
                  Padding(
                    padding: .symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        HomeOrderType(
                          label: 'Order',
                          isDelivery: false,
                        ),
                        const SizedBox(width: 15),
                        HomeOrderType(
                          label: 'Delivery',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
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
                  const SizedBox(height: 25),
                  Container(
                    height: 250,
                    width: double.infinity,
                    margin: .symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: .circular(8),
                      color: colorScheme.surfaceContainer,
                    ),
                    child: ClipRRect(
                      borderRadius: .circular(8),
                      child: Image.asset(
                        'assets/kopi.png',
                        fit: .cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
