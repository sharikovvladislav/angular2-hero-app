import 'package:angular2/platform/browser.dart';

import 'package:ng2_hero_app/app_component.dart';

import 'package:logging/logging.dart';


main() {
  bootstrap(AppComponent);

  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((LogRecord rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });

  final Logger log = new Logger('MyClassName');

  log.info('info');
  log.warning('warning');
}