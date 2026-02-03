import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kohi/core/constant.dart';
import 'package:kohi/core/themes/cubit/theme_cubit.dart';

import '../../home.dart';
import '../view/home_view.dart';
import '../widgets/home_header.dart';

import 'package:kohi/features/home/presentation/widgets/home_image_carousel.dart';

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




