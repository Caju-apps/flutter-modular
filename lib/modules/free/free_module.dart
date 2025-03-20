import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_flutter/modules/free/pages/free_page.dart';

class FreeModule extends Module {
  @override
  void routes(RouteManager r) {
    super.routes(r);

    r.child("/", child: (_) => FreePage());
  }
}