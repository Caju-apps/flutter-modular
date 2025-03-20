import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_flutter/modules/counter/controllers/counter_controller.dart';
import 'package:modular_flutter/modules/counter/pages/counter_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterModule extends Module {
  final SharedPreferences prefs;

  CounterModule({required this.prefs});

  @override
  void binds(Injector i) {
    super.binds(i);

    i.addLazySingleton(() => CounterController(prefs: prefs));
  }

  @override
  void routes(RouteManager r) {
    super.routes(r);

    r.child("/:user",
        child: (_) => CounterPage(
              userName: r.args.params["user"],
            ));
  }
}
