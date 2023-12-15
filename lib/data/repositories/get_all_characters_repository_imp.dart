import 'package:simpsons_character_viewer/data/datasources/get_all_characters_remote_datasource.dart';
import 'package:simpsons_character_viewer/domain/entities/character_response_entity.dart';
import '../../domain/repositories/get_all_characters_repository.dart';

class GetAllCharactersRepositoryImp implements GetAllCharactersRepository {
  final GetAllCharactersRemoteDataSource _dataSource;

  GetAllCharactersRepositoryImp(this._dataSource);

  @override
  Future<CharacterResponseEntity?> call() => _dataSource();
}
