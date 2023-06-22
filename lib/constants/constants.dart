

import '../Shared/cache_helper.dart';
import '../components/components.dart';
import '../login/login_screen.dart';

void signOut(context)
{
  CacheHelper.removeData(
    key: 'token',
  ).then((value)
  {
    if (value)
    {
      navigateAndFinish(
        context,
        ShopLoginScreen(),
      );
    }
  });
}
const LOGIN = 'login';

const REGISTER = 'register';

const HOME = 'home';

const GET_CATEGORIES = 'categories';

const FAVORITES = 'favorites';

const PROFILE = 'profile';

const UPDATE_PROFILE = 'update-profile';

const SEARCH = 'products/search';

String token = '';

String uId = '';