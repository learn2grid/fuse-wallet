import 'package:auto_route/auto_route.dart';
import 'package:peepl/models/app_state.dart';
import 'package:redux/redux.dart';
import 'package:peepl/redux/state/store.dart';

class AuthGuard extends RouteGuard {
  @override
  Future<bool> canNavigate(
    ExtendedNavigatorState navigator,
    String routeName,
    Object arguments,
  ) async {
    Store<AppState> store = await AppFactory().getStore();
    return !store.state.userState.isLoggedOut;
  }
}
