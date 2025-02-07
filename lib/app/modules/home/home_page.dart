import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste_moteis_go/app/core/theme/app_colors.dart';
import 'package:teste_moteis_go/app/modules/home/home_controller.dart';
import 'package:teste_moteis_go/app/modules/home/widgets/home_app_bar.dart';
import 'package:teste_moteis_go/app/modules/home/widgets/home_filter.dart';
import 'package:teste_moteis_go/app/modules/home/widgets/home_floating_button.dart';
import 'package:teste_moteis_go/app/modules/home/widgets/home_list_items.dart';

class HomePage extends StatefulWidget {
  static String routeName = '/home';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Provider.of<HomeController>(context, listen: false).get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: HomeFloatingButton(),
      body: Material(
        color: AppColors.primaryColor,
        child: Material(
          color: Colors.grey.shade200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Column(
              children: [
                HomeFilter(),
                Divider(),
                Expanded(child: HomeListItems()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
