import 'package:get_it/get_it.dart';
import 'package:simpsons_character_viewer/data/datasources/get_all_characters_remote_datasource.dart';
import 'package:simpsons_character_viewer/data/datasources/remote/get_all_characters_remote_data_source_impl.dart';
import 'package:simpsons_character_viewer/data/remote/rest_client.dart';
import 'package:simpsons_character_viewer/data/repositories/get_all_characters_repository_imp.dart';
import 'package:simpsons_character_viewer/domain/repositories/get_all_characters_repository.dart';
import 'package:simpsons_character_viewer/domain/usecases/get_all_characters_usecase/get_all_characters_usecase.dart';
import 'package:simpsons_character_viewer/domain/usecases/get_all_characters_usecase/get_all_characters_usecase_imp.dart';

import 'package:simpsons_character_viewer/presentation/controllers/character_controller/character_controller.dart';

class Inject {
  static init() {
    initDataSources();
    initRepositories();
    initUseCases();
    initControllers();
  }

  static initDataSources() {
    GetIt.I.registerLazySingleton<GetAllCharactersRemoteDataSource>(
        () => GetAllCharactersRemoteDataSourceImp(
              RestClient(),
            ));
  }

  static initRepositories() {
    GetIt.I.registerLazySingleton<GetAllCharactersRepository>(
        () => GetAllCharactersRepositoryImp(GetIt.I()));
  }

  static initUseCases() {
    GetIt.I.registerLazySingleton<GetAllCharactersUseCase>(
        () => GetAllChararctersUseCaseImp(GetIt.I()));
  }

  static initControllers() {
    GetIt.I.registerLazySingleton<CharacterController>(
        () => CharacterController());
  }
}
