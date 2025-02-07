import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:teste_moteis_go/app/core/models/suite_model.dart';
import 'package:teste_moteis_go/app/core/utils/app_formats.dart';

class SuiteTile extends StatelessWidget {
  final SuiteModel value;

  const SuiteTile({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      children: [
        Card(
          elevation: 0.1,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 6,
                  right: 6,
                  top: 6,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: CachedNetworkImage(
                    imageUrl: value.fotos!.first,
                    fit: BoxFit.cover,
                    scale: 16 / 9,
                    height: 200,
                    width: double.infinity,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: SizedBox(
                  height: 46,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        value.nome!,
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      if (value.qtd == 1)
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 6,
                          children: [
                            Icon(
                              Icons.info_outline,
                              color: Colors.red,
                              size: 12,
                            ),
                            Text(
                              'só mais 1 pelo app',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Card(
          elevation: 0.1,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: SizedBox(
              width: double.infinity,
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                spacing: 12,
                runSpacing: 12,
                children: [
                  ...value.categoriaItens!
                      .sublist(
                          0,
                          value.categoriaItens!.length < 5
                              ? value.categoriaItens!.length
                              : 5)
                      .map(
                    (e) {
                      return Material(
                        color: Colors.grey.shade200,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: CachedNetworkImage(
                          imageUrl: e.icone!,
                          height: 40,
                          width: 40,
                        ),
                      );
                    },
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 6,
                      children: [
                        Text(
                          'ver\ntodos',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.grey,
                          size: 12,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        ...value.periodos!.map(
          (e) {
            return Card(
              elevation: 0.1,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            spacing: 6,
                            children: [
                              Text(
                                '${e.tempo} horas',
                                style: TextStyle(fontSize: 20),
                              ),
                              if (e.desconto != null)
                                Material(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    side: BorderSide(
                                        color: Colors.green, width: 1),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 6,
                                      vertical: 2,
                                    ),
                                    child: Text(
                                      '${AppFormats.doubleToCurrency(value: e.desconto!.desconto!, showSymbol: false, showDecimalDigits: false)}% off',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            spacing: 6,
                            children: [
                              if (e.desconto != null)
                                Text(
                                  AppFormats.doubleToCurrency(value: e.valor!),
                                  style: TextStyle(
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                    decorationColor: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                              Text(
                                AppFormats.doubleToCurrency(
                                  value: e.valorTotal!,
                                ),
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right, color: Colors.grey),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
