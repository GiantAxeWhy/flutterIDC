import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:idc/core/model/category_model.dart';

class JsonParse{
    static Future<List<HYCategoryModel>> getCategoryDate() async{
      final jsonString = await rootBundle.loadString("assets/json/category.json");
      final result = json.decode(jsonString);
      final resultList = result["category"];
      List<HYCategoryModel> categories = [];
      for(var json in resultList){
        categories.add(HYCategoryModel.fromJson(json));
      }
      return categories;
    }
}