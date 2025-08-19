import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whatsapp/core/theming/colors.dart';
import 'package:whatsapp/core/utils/spacing.dart';
import 'package:whatsapp/core/widgets/custom_divider.dart';
import 'package:whatsapp/core/widgets/custom_icon_button.dart';
import 'package:whatsapp/presentation/view/screens/chat_screen.dart';
import 'package:whatsapp/presentation/view/widgets/archived_title.dart';
import 'package:whatsapp/presentation/view/widgets/chat_filters_list.dart';
import 'package:whatsapp/presentation/view/widgets/chat_item.dart';
import 'package:whatsapp/core/widgets/custom_sliver_app_bar.dart';
import 'package:whatsapp/presentation/view/widgets/search_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String path = '/homeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(
              title: 'Chats',
              actions: [
                CustomIconButton(onPressed: () {}, icon: CupertinoIcons.camera),
                CustomIconButton(
                  onPressed: () {},
                  icon: CupertinoIcons.add,
                  backgroundColor: ColorsManager.primaryGreen,
                  iconColor: Colors.white,
                ),
              ],
            ),
            SliverToBoxAdapter(child: verticalSpace(context, 16)),
            SeachField(),
            ChatFiltersList(),
            SliverToBoxAdapter(child: verticalSpace(context, 16)),
            SliverList(
              delegate: SliverChildListDelegate([
                ArchivedTitle(),
                CustomDivider(),
                verticalSpace(context, 16),
                ChatItem(
                  image:
                      'https://tse1.mm.bing.net/th/id/OIP.GKAbRpYzDlJa139WC8xPtwHaIC?pid=Api&P=0&h=220',
                  chatTitle: 'Ali',
                  chatSubtitle: 'How are you today?',
                  time: '05:00',
                  onTap: () {
                    context.push(
                      ChatScreen.path,
                      extra: 
                      {"name": "Ali", 
                      "imageUrl": 'https://tse1.mm.bing.net/th/id/OIP.GKAbRpYzDlJa139WC8xPtwHaIC?pid=Api&P=0&h=220'
                      },
                    );
                  },
                ),
                ChatItem(
                  image: '',
                  chatTitle: 'Sara',
                  chatSubtitle: 'Hi',
                  time: '03:00',
                  onTap: () {
                    context.push(
                      ChatScreen.path,
                      extra: {
                        "name": "Sara",
                        "imageUrl": "", 
                      },
                    );
                  },
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}





