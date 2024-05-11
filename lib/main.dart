import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voltro_test_task/presentation/router/app_router.dart';

import 'businessLogic/app_bloc_observer.dart';
import 'dataProvider/dependencyInjection/injection_container.dart';
import 'helper/constant/constants_resource.dart';
import 'helper/theme/app_theme.dart';
import 'helper/util/svg_utils.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  /// Registering Dependency Injections
  diSetup();

  /// Setting up Bloc Observer
  Bloc.observer = AppBlocObserver();

  /// Pre caching Svg
  SvgUtils.preCacheSVGs();
  runApp(MyApp(appRouter: AppRouter()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        ConstantsResource.APP_DESIGN_WIDTH,
        ConstantsResource.APP_DESIGN_HEIGHT,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp.router(
          routerConfig: widget.appRouter.router,
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: child ?? Container(),
            );
          },
          debugShowCheckedModeBanner: false,
          theme: AppTheme.themeData,
        );
      },
    );
  }

  @override
  void dispose() {
    widget.appRouter.dispose();
    super.dispose();
  }
}
