import 'package:flutter/material.dart';
import 'package:whatsapp/core/theming/colors.dart';
import 'package:whatsapp/core/utils/spacing.dart';
import 'package:whatsapp/presentation/view/widgets/home_app_bar.dart';
import 'package:whatsapp/presentation/view/widgets/search_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String path = '/homeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.lightBackground,
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: [
            HomeAppBar(),
            SliverToBoxAdapter(child: verticalSpace(context, 16),),
            SeachField(),
          ],
        ),
      ),
    );
  }
}



