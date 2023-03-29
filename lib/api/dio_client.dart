import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:moovbe/api/endpoints.dart';
import 'package:moovbe/model/driver_list.dart';

class DioClient {
  final Dio _dio = Dio();

  final baseUrl = 'http://flutter.noviindus.co.in/api/';

  // Future<dynamic> postItems(int urlId) async {
  //   Response response;
  //
  //   response = await _dio.post(
  //     baseUrl + Endpoints.getDriverList,
  //     queryParameters: {
  //       'url_id': urlId,
  //     },
  //   );
  //   print(response.data.toString());
  // }

  Future<dynamic> getItem(int? urlId) async {
    try {
      final res = await _dio.get(
        baseUrl + Endpoints.getDriverList,
        queryParameters: {
          'url_id': urlId,
        },
      );
      return res;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }

  // @action
  // Future itemDropdownList() async {
  //   loading = true;
  //   itemList = ObservableList<dynamic>.of([]);
  //
  //   _itemRepository.getItem(0, "").then((value) {
  //     ItemGetAllModel? salesPersonDetails = ItemGetAllModel.fromJson(value);
  //
  //     if (salesPersonDetails.success == true) {
  //       for (int i = 0; i < salesPersonDetails.result!.items!.length; i++) {
  //         itemList.add(salesPersonDetails.result!.items![i]);
  //       }
  //     } else {
  //       errorStore.errorMessage = salesPersonDetails.error!.message!;
  //       if (salesPersonDetails.error!.message == Strings.currentUserNotLogin ||
  //           salesPersonDetails.error!.message!
  //               .contains(Strings.sessionTimeOut)) {
  //         canLogOut = true;
  //       }
  //     }
  //
  //     loading = false;
  //   }).catchError(
  //         (e) {
  //       loading = false;
  //       if (e.runtimeType == DioError) {
  //         errorStore.errorMessage = DioErrorUtil.handleError(e);
  //       } else {
  //         print(e.runtimeType);
  //       }
  //     },
  //   );
  // }

  // Future getItem(int skipCount, String? searchTerm) async {
  //   return await _itemsApi
  //       .getItem(_sharedPrefsHelper.rootAddress()!, skipCount, searchTerm)
  //       .then(
  //         (itemList) async {
  //       return itemList;
  //     },
  //   ).catchError((e) {
  //     throw e;
  //   });
  // }

  /// getting sale record list from api
  // @action
  // Future getAllSales(int skipCount) async {
  //   _itemRepository.getItem(skipCount, itemFilter).then(
  //         (value) {
  //       print(itemFilter);
  //       log(value.toString());
  //       ItemGetAllModel salesData = ItemGetAllModel.fromJson(value);
  //       if (salesData.success == true) {
  //         print('Page no.: $skipCount');
  //         final bool isLastPage =
  //             salesData.result!.items!.length < Integers.lazyLoadingPageSize;
  //         if (isLastPage) {
  //           print("last page");
  //           itemListPagingController.appendLastPage(salesData.result!.items!);
  //         } else {
  //           print("not last page");
  //           final nextPageKey = skipCount + 10;
  //           itemListPagingController.appendPage(
  //               salesData.result!.items!, nextPageKey);
  //         }
  //         print("length is ==${itemListPagingController.itemList!.length}");
  //       } else {
  //         errorStore.errorMessage = salesData.error!.message!;
  //         if (salesData.error!.message == Strings.currentUserNotLogin ||
  //             salesData.error!.message!.contains(Strings.sessionTimeOut)) {
  //           canLogOut = true;
  //         }
  //       }
  //     },
  //   ) /*.catchError(
  //     (e) {
  //       if (e.runtimeType == DioError) {
  //         errorStore.errorMessage = DioErrorUtil.handleError(e);
  //       } else {
  //         print(e.runtimeType);
  //       }
  //     },
  //   );*/
  //   ;
  // }

  Future<dynamic> postItem(DriverList data) async {
    try {
      final res = await _dio.post(baseUrl + Endpoints.postDriverList,
          data: jsonEncode(data));
      return res;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
