import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whatsapp/core/theming/styles.dart' show CustomTextStyles;
import 'package:whatsapp/core/utils/spacing.dart';
import 'package:whatsapp/core/widgets/custom_divider.dart';
import 'package:whatsapp/core/widgets/custom_text_form_field.dart';
import 'package:whatsapp/presentation/view/screens/status_viewer_screen.dart';
import 'package:whatsapp/presentation/view/widgets/status_tile.dart';
import 'package:whatsapp/core/widgets/custom_sliver_app_bar.dart';
import 'package:whatsapp/presentation/view/widgets/status_avatar.dart';

class UpdatesScreen extends StatelessWidget {
  static const String path = '/updatesScreen';

  const UpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(
            title: "Updates",
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 24),
                  child: CustomTextFormField(
                    hintText: 'Search ',
                    prefixIcon: Icon(Icons.search),
                    validator: (value) {},
                  ),
                ),
                verticalSpace(context, 24),
                Padding(
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 24),
                  child: Text(
                    'Status',
                    style: CustomTextStyles.largeHeadTitles(context).copyWith(fontSize: 24),
                  ),
                ),
                verticalSpace(context, 16),
                StatusTile(
                  title: "Add Status",
                  subtitle: "Disappears after 24 hours",
                  statusAvatar: StatusAvatar(
                    imageUrl:
                        'https://tse1.mm.bing.net/th/id/OIP.GKAbRpYzDlJa139WC8xPtwHaIC?pid=Api&P=0&h=220',
                    isAdd: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Recent updates",
                    style: CustomTextStyles.headTitles(context),
                  ),
                ),
                StatusTile(
                  title: 'Aya',
                  subtitle: '1h ago',
                  showDefaultTrailing: false,
                  statusAvatar: StatusAvatar(
                    imageUrl: 'https://tse3.mm.bing.net/th/id/OIP.WLRMJj8pT85iQg5Iy4B26QHaHa?pid=Api&P=0&h=220',
                    storiesCount: 1,
                  ),
                  onTap: () {
                    GoRouter.of(context).push(
                      StatusViewerScreen.path,
                      extra: [
                        'https://tse3.mm.bing.net/th/id/OIP.WLRMJj8pT85iQg5Iy4B26QHaHa?pid=Api&P=0&h=220',
                      ],
                    );
                  },
                ),
                CustomDivider(),
                StatusTile(
                  title: 'Layla',
                  subtitle: '2h ago',
                  showDefaultTrailing: false,
                  statusAvatar: StatusAvatar(
                    imageUrl: 'https://tse3.mm.bing.net/th/id/OIP.WLRMJj8pT85iQg5Iy4B26QHaHa?pid=Api&P=0&h=220',
                    storiesCount: 4,
                  ),
                  onTap: () {
                    GoRouter.of(context).push(
                      StatusViewerScreen.path,
                      extra: [
                        'https://tse3.mm.bing.net/th/id/OIP.WLRMJj8pT85iQg5Iy4B26QHaHa?pid=Api&P=0&h=220',
                        'https://tse3.mm.bing.net/th/id/OIP.WLRMJj8pT85iQg5Iy4B26QHaHa?pid=Api&P=0&h=220',
                        'https://tse3.mm.bing.net/th/id/OIP.WLRMJj8pT85iQg5Iy4B26QHaHa?pid=Api&P=0&h=220',
                        'https://tse3.mm.bing.net/th/id/OIP.WLRMJj8pT85iQg5Iy4B26QHaHa?pid=Api&P=0&h=220',
                      ],
                    );
                  },
                ),
                CustomDivider(),
                StatusTile(
                  title: 'Ali',
                  subtitle: '2h ago',
                  showDefaultTrailing: false,
                  statusAvatar: StatusAvatar(
                    imageUrl: 'https://tse4.mm.bing.net/th/id/OIP.AlIScK6urTegkZ178dAAGgHaHa?pid=Api&P=0&h=220',
                    storiesCount: 6,
                  ),
                  onTap: () {
                    GoRouter.of(context).push(
                      StatusViewerScreen.path,
                      extra: [
                        'https://tse4.mm.bing.net/th/id/OIP.AlIScK6urTegkZ178dAAGgHaHa?pid=Api&P=0&h=220',
                        'https://tse3.mm.bing.net/th/id/OIP.WLRMJj8pT85iQg5Iy4B26QHaHa?pid=Api&P=0&h=220',
                        'https://tse4.mm.bing.net/th/id/OIP.GKAbRpYzDlJa139WC8xPtwHaIC?pid=Api&P=0&h=220',
                        'https://tse3.mm.bing.net/th/id/OIP.AlIScK6urTegkZ178dAAGgHaHa?pid=Api&P=0&h=220',
                        'https://tse4.mm.bing.net/th/id/OIP.GKAbRpYzDlJa139WC8xPtwHaIC?pid=Api&P=0&h=220',
                        'https://tse3.mm.bing.net/th/id/OIP.WLRMJj8pT85iQg5Iy4B26QHaHa?pid=Api&P=0&h=220',
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}