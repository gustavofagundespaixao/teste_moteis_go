import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:teste_moteis_go/app/core/models/motel_model.dart';
import 'package:teste_moteis_go/app/core/models/suite_model.dart';
import 'package:teste_moteis_go/app/core/repositories/motel_repository.dart';
import 'package:teste_moteis_go/app/modules/home/home_controller.dart';

class MockApiService extends Mock implements MotelRepository {}

void main() {
  group('MotelProvider', () {
    late HomeController homeController;
    late MockApiService mockApiService;

    setUp(() {
      homeController = HomeController();
      mockApiService = MockApiService();
    });

    test('Buscar moteis', () async {
      when(mockApiService.get()).thenAnswer((_) async => [
            MotelModel(
              bairro: 'bairro',
              distancia: 0,
              fantasia: 'fantasia',
              logo: 'logo',
              media: 0,
              qtdAvaliacoes: 0,
              qtdFavoritos: 0,
              suites: [SuiteModel()],
            ),
          ]);

      await homeController.get();

      // Assert
      expect(homeController.items.length, 1);
      expect(homeController.items.first.bairro, 'bairro');
      expect(homeController.items.first.distancia, 0);
      expect(homeController.items.first.fantasia, 'fantasia');
      expect(homeController.items.first.logo, 'logo');
      expect(homeController.items.first.media, 0);
      expect(homeController.items.first.qtdAvaliacoes, 0);
      expect(homeController.items.first.qtdFavoritos, 0);
      expect(homeController.items.first.suites?.length, 5);
    });
  });
}
