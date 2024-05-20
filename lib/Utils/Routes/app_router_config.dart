import 'package:mahawanti_task/View/Pages/Part%201/tts_part1.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(routes: [
    GoRoute(
        path: '/',
        builder: (context, state) {
          return HomePage();
        },
        routes: [])
  ]);
}
