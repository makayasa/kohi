import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kohi/app/presentation/main_page/main_page_cubit.dart';
import 'package:kohi/core/widgets/typography.dart';

import '../../../features/home/home.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomePage(),
          HomePage(),
          TypographyView(),
          HomePage(),
        ],
      ),
      bottomNavigationBar: BlocBuilder<MainPageCubit, MainPageCubitState>(
        builder: (context, state) {
          return BottomNavigationBar(
            useLegacyColorScheme: false,
            currentIndex: context.read<MainPageCubit>().state.pageIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              context.read<MainPageCubit>().onTapBotNav(pageController, value);
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.local_drink,
                ),
                label: 'Menu',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.coffee_maker_outlined,
                ),
                label: 'Order',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Me',
              ),
            ],
          );
        },
      ),
    );
  }
}
