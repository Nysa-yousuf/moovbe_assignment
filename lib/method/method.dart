import 'package:moovbe/api/dio_client.dart';
import 'package:moovbe/constants/shared_preference_helper.dart';
import 'package:moovbe/model/login_model.dart';

class LoginApi {
  // dio instance
  final DioClient _dio;
  final SharedPreferenceHelper _sharedPreferenceHelper;

  LoginApi(this._sharedPreferenceHelper, this._dio);

  Future login(String userName, String password) async {
//    loading = true;
    return _dio
        .authenticate(userName, password)
        // loginFuture = ObservableFuture(future);
        .then(
      (loginResponse) async {
        LoginModel loginData = LoginModel.fromJson(loginResponse.data);
        if (loginData.status == true) {
          await _sharedPreferenceHelper.saveIsLoggedIn(true);
          await _sharedPreferenceHelper.saveAuthToken(loginData.refresh!);
          // await _sharedPreferenceHelper.saveUserId(loginData.result!.userId!);
          await _sharedPreferenceHelper.saveUserName(userName);
          await _sharedPreferenceHelper.saveAssociatedOuIds(loginData.access!);
          await _sharedPreferenceHelper.saveOuId(loginData.urlId!);
          // _syncRepository.getCurrentLoginInformationApi().then(
          //   (value) {
          //     successLogin = true;
          //     loading = false;
          //   },
          // );
        } else {
          //  successLogin = false;
          //loading = false;
          //  errorStore.errorMessage = loginData.error!.message!;
        }
      },
    ).catchError(
      (e) {
        print(e);
        // successLogin = false;
        //   loading = false;
        //    if (e.runtimeType == DioError) {
        //      errorStore.errorMessage = DioErrorUtil.handleError(e);
        //    } else {
        print(e.runtimeType);
        //  }
      },
    );
  }
}
