import 'dart:convert';
import 'dart:math';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:food_recipe/model/recipe_model.dart';
import 'package:http/http.dart' as http;

class RecipeFood {
  
  Future<RecipeModel> getRecipe(String querey1) async {
    var response = await http.get(Uri.parse(
        "https://api.edamam.com/search?q=$querey1&app_id=3e05db63&app_key=94fc1d35a0754ed774910532b4107545"));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print(data);

      return RecipeModel.fromJson(data);
    } else {
      throw Exception("false");
    }
  }
}
