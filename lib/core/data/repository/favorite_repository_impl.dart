import 'package:pokemon_flutter/core/data/datasource/local/local_data_source.dart';
import 'package:pokemon_flutter/core/di/locator.dart';
import 'package:pokemon_flutter/core/domain/pokemon.dart';
import 'package:pokemon_flutter/features/favorites/domain/repository/favorite_repository.dart';

class FavoriteRepositoryImpl implements FavoriteRepository {
  LocalDataSource localDataSource = locator<LocalDataSource>();

  @override
  Future<List<Pokemon>> getFavorites() {
    return localDataSource.getFavoritePokemons();
  }

  @override
  Future<void> removeFavoritePokemon(Pokemon pokemon) async {
    localDataSource.removeFavoritePokemon(pokemon.id);
  }

  @override
  Future<void> saveFavoritePokemon(Pokemon pokemon) async {
    localDataSource.saveFavoritePokemon(pokemon);
  }
}
