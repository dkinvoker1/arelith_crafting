// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:arelith_crafting/repositories/log_in_repository.dart';
import 'package:arelith_crafting/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

import 'auth_service.dart';

class AuthenticationGuard extends AutoRedirectGuard {
  final AuthService authService;

  AuthenticationGuard(this.authService) {
    authService.addListener(() {
      if (!authService.authenticated) {
        reevaluate();
      }
    });
  }

  @override
  Future<bool> canNavigate(RouteMatch route) {
    return LogInRepository().isLoggedIn();
  }

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (authService.authenticated) return resolver.next();
    router.push(
      LogInRoute(
        onLoginCallback: (_) {
          resolver.next();
          router.removeLast();
        },
      ),
    );
  }
}
