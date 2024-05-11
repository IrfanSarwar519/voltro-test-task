import 'package:bloc/bloc.dart';

import '../helper/util/utils.dart';

/// Bloc Observer class is used for debugging bloc issues.
class AppBlocObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    Utils.console('${bloc.runtimeType} $transition');
  }
}
