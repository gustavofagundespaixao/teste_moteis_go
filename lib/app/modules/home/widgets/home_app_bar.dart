import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste_moteis_go/app/modules/home/home_controller.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight * 1.6);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      centerTitle: true,
      title: Consumer<HomeController>(
        builder: (context, value, child) {
          return SegmentedButton(
            onSelectionChanged: (Set<int> value) {
              Provider.of<HomeController>(context, listen: false)
                  .changeSegmented(value.first);
            },
            selected: {value.segmentedIndex},
            segments: [
              ButtonSegment(
                value: 0,
                icon: Icon(Icons.output_rounded),
                label: Text('ir agora'),
              ),
              ButtonSegment(
                value: 1,
                icon: Icon(Icons.calendar_today),
                label: Text('ir outro dia'),
              ),
            ],
          );
        },
      ),
      // title: SegmentedButton(
      //   onSelectionChanged: (value) {},
      //   selected: {0},
      //   segments: [
      //     ButtonSegment(
      //       value: 0,
      //       icon: Icon(Icons.output_rounded),
      //       label: Text('ir agora'),
      //     ),
      //     ButtonSegment(
      //       value: 1,
      //       icon: Icon(
      //         Icons.calendar_today,
      //         color: Colors.white,
      //       ),
      //       label: Text(
      //         'ir outro dia',
      //         style: TextStyle(color: Colors.white),
      //       ),
      //     ),
      //   ],
      // ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 4,
            children: [
              Text(
                'zona sul',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
