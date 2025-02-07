import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:teste_moteis_go/app/core/models/motel_model.dart';
import 'package:teste_moteis_go/app/modules/home/widgets/tiles/suite_tile.dart';

class MotelTile extends StatelessWidget {
  final MotelModel value;
  const MotelTile({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 6,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: CachedNetworkImageProvider(value.logo!),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      value.fantasia!,
                      maxLines: 1,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      value.bairro!,
                      maxLines: 1,
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 6),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 12,
                      children: [
                        Material(
                          color: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                            side: BorderSide(
                              color: Colors.amber.shade600,
                              width: 1,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 4,
                              vertical: 1,
                            ),
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              spacing: 4,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber.shade600,
                                  size: 12,
                                ),
                                Text(
                                  '${value.media}',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 4,
                          children: [
                            Text(
                              '${value.qtdAvaliacoes} avaliações',
                              style: TextStyle(fontSize: 12),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 12,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite, color: Colors.grey),
              ),
            ],
          ),
          CarouselSlider.builder(
            itemBuilder: (context, index, realIndex) {
              return Padding(
                padding: const EdgeInsets.only(right: 6),
                child: SuiteTile(value: value.suites![index]),
              );
            },
            itemCount: value.suites?.length,
            options: CarouselOptions(
              // height: 800,
              height: MediaQuery.of(context).size.height,
              enableInfiniteScroll: false,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
            ),
          ),
        ],
      ),
    );
  }
}
