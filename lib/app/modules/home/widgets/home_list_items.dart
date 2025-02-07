import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste_moteis_go/app/modules/home/home_controller.dart';
import 'package:teste_moteis_go/app/modules/home/widgets/tiles/motel_tile.dart';

class HomeListItems extends StatelessWidget {
  final HomeController controller = HomeController();

  HomeListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (context, value, child) {
        if (value.loading) {
          return Center(child: CircularProgressIndicator());
        } else if (value.error) {
          return Center(child: Text('Ocorreu um erro'));
        } else if (value.items.isEmpty) {
          return Center(child: Text('Nenhum registro'));
        } else {
          return ListView.builder(
            itemCount: value.items.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return MotelTile(value: value.items[index]);
            },
          );
        }
      },
    );

    // return FutureBuilder<List<MotelModel>>(
    //   future: controller.get(),
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       return Center(child: CircularProgressIndicator());
    //     } else if (snapshot.hasError) {
    //       return Center(child: Text('Ocorreu um erro'));
    //     } else if (!snapshot.hasData) {
    //       return Center(child: Text('Nenhum registro'));
    //     } else {
    //       return ListView.builder(
    //         itemCount: snapshot.data?.length,
    //         shrinkWrap: true,
    //         itemBuilder: (context, index) {
    //           return MotelTile(value: snapshot.data![index]);
    //         },
    //       );
    //     }
    //   },
    // );
  }
}
