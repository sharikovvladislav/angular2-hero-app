import 'dart:async';

import 'package:angular2/core.dart';
import 'package:logging/logging.dart';
import 'package:angular2/router.dart';

import 'hero.dart';
import 'hero_detail_component.dart';
import 'hero_service.dart';

@Component(
    selector: 'my-heroes',
    templateUrl: 'heroes_component.html',
    styleUrls:  const ['heroes_component.css'],
    directives: const [HeroDetailComponent]
)

class HeroesComponent  implements OnInit {
  final String title = 'Tour of Heroes';
  final HeroService _heroService;
  final Router _router;

  List<Hero> heroes;
  Hero selectedHero;
  final Logger log = new Logger('AppComponent');

  HeroesComponent(this._heroService, this._router);

  getHeroes() async {
    heroes = await _heroService.getHeroes();
    //heroes = await _heroService.getHeroesSlowly();
  }

  onSelect(Hero hero) {
    log.info('onSelect method called');
    selectedHero = hero;
  }

  ngOnInit() {
    getHeroes();
  }

  Future<Null> gotoDetail() =>
      _router.navigate(['HeroDetail', {'id': selectedHero.id.toString()}]);
}

final List<Hero> mockHeroes = [
  new Hero(11, 'Mr. Nice'),
  new Hero(12, 'Narco'),
  new Hero(13, 'Bombasto'),
  new Hero(14, 'Celeritas'),
  new Hero(15, 'Magneta'),
  new Hero(16, 'RubberMan'),
  new Hero(17, 'Dynama'),
  new Hero(18, 'Dr IQ'),
  new Hero(19, 'Magma'),
  new Hero(20, 'Tornado')
];