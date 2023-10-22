import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:start_project/Model/CategoryDataFromApi.dart';
import 'package:start_project/Model/ProductDataFromApi.dart';
import 'LoginScreen.dart';

Future<DataForCategory?> HandlingDataForCategory() async {
  DataForCategory? dataForCategory;

  try {
    final dio = Dio();
    final res = await dio.get("https://student.valuxapps.com/api/categories");
    if (res.statusCode == 200) {
      dataForCategory = DataForCategory.fromJson(res.data);
    }
  } catch (e) {
    print("Error: $e");
  }

  return dataForCategory;
}

Future<DataForProduct?> HandlingDataForProduct() async {
  DataForProduct? dataForProduct;

  try {
    final dio = Dio();
    final res = await dio.get("https://student.valuxapps.com/api/products");
    if (res.statusCode == 200) {
      dataForProduct = DataForProduct.fromJson(res.data);
    }
  } catch (e) {
    print("Error: $e");
  }

  return dataForProduct;
}

Future <List<ProductData>?>HandlingDataForProductID(int ID) async {
  DataForProduct? dataForProduct;
  List<ProductData>? ff;
  try {
    final dio = Dio();
    final res = await dio
        .get("https://student.valuxapps.com/api/products?category_id=$ID");
    if (res.statusCode == 200) {
      dataForProduct = DataForProduct.fromJson(res.data);
      ff = dataForProduct.data!.ListOFCategoryApi;
    }
  } catch (e) {
    print("Error: $e");
  }
  return ff;
}

void main() {
  runApp(testApp());
}
