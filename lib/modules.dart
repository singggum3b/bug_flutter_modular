import 'package:flutter_modular/flutter_modular.dart';
import 'package:fm_bug/page.dart';

class RootModule extends Module {
  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ChildRoute("/", child: (_, __) => PageRoot()),
  ];
}

class NestedModule extends Module {
  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ChildRoute("/a", child: (_, __) => PageA()),
  ];
}

class AnotherModule extends Module {
  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ChildRoute("/:param", child: (_, __) => PageB()),
  ];
}

class AppModule extends Module {
  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ModuleRoute("/index", module: RootModule()),
    ModuleRoute("/nested", module: NestedModule()),
    ModuleRoute("/another", module: AnotherModule()),
  ];
}