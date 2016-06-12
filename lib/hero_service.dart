import 'dart:async';

import 'package:angular2/core.dart';

import 'hero.dart';
import 'mock_heroes.dart';

@Injectable()
class HeroService {
  //List<Hero> getHeroes() => mockHeroes;

  Future<List<Hero>> getHeroes() async => mockHeroes;

  Future<List<Hero>> getHeroesSlowly() {
    return new Future.delayed(const Duration(seconds: 3), () => mockHeroes);
  }
}