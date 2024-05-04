import 'package:pokemon_flutter/features/core/di/locator.dart';
import 'package:pokemon_flutter/features/core/domain/pokemon.dart';
import 'package:pokemon_flutter/features/favorites/domain/repository/favorite_repository.dart';

class AddFavoriteUseCase {
  FavoriteRepository repository = locator<FavoriteRepository>();

  Future<void> execute(Pokemon pokemon) => repository.saveFavoritePokemon(pokemon);
}