import 'package:app_pdf/ui/screens.dart';

import 'package:go_router/go_router.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    name: HomeScreen.name,
    builder: (context, state) => const HomeScreen(
      screenWidth: 0,
      screenHeight: 0,
    ),
  ),
]);
