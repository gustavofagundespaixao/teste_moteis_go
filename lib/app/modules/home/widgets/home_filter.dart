import 'package:flutter/material.dart';

class HomeFilter extends StatelessWidget {
  const HomeFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'com desconto',
      'disponíveis',
      'hidro',
      'piscina',
      'ofurô',
      'decoração erótica',
      'decoração temática',
      'cadeira erótica',
      'pista de dança',
      'garagem privativa',
      'frigobar',
      'internet wi-fi',
      'suíte para festas',
      'suíte com acessibilidade',
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          spacing: 6,
          children: [
            ActionChip(
              onPressed: () {},
              label: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 4,
                children: [
                  Icon(Icons.filter_list_outlined, size: 12),
                  Text('filtros', style: TextStyle(fontSize: 12)),
                ],
              ),
              visualDensity: VisualDensity.compact,
            ),
            ...items.map(
              (e) {
                return ActionChip(
                  onPressed: () {},
                  label: Text(e, style: TextStyle(fontSize: 12)),
                  visualDensity: VisualDensity.compact,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
