
class RecipeModel {
  String? q;
  int? from;
  int? to;
  bool? more;
  int? count;
  List<Hits>? hits;

  RecipeModel({this.q, this.from, this.to, this.more, this.count, this.hits});

  RecipeModel.fromJson(Map<String, dynamic> json) {
    if(json["q"] is String) {
      q = json["q"];
    }
    if(json["from"] is int) {
      from = json["from"];
    }
    if(json["to"] is int) {
      to = json["to"];
    }
    if(json["more"] is bool) {
      more = json["more"];
    }
    if(json["count"] is int) {
      count = json["count"];
    }
    if(json["hits"] is List) {
      hits = json["hits"] == null ? null : (json["hits"] as List).map((e) => Hits.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["q"] = q;
    _data["from"] = from;
    _data["to"] = to;
    _data["more"] = more;
    _data["count"] = count;
    if(hits != null) {
      _data["hits"] = hits?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Hits {
  Recipe? recipe;

  Hits({this.recipe});

  Hits.fromJson(Map<String, dynamic> json) {
    if(json["recipe"] is Map) {
      recipe = json["recipe"] == null ? null : Recipe.fromJson(json["recipe"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(recipe != null) {
      _data["recipe"] = recipe?.toJson();
    }
    return _data;
  }
}

class Recipe {
  String? uri;
  String? label;
  String? image;
  String? source;
  String? url;
  String? shareAs;
  int? yield;
  List<String>? dietLabels;
  List<String>? healthLabels;
  List<String>? cautions;
  List<String>? ingredientLines;
  List<Ingredients>? ingredients;
  double? calories;
  double? totalWeight;
  int? totalTime;
  List<String>? cuisineType;
  List<String>? mealType;
  List<String>? dishType;
  TotalNutrients? totalNutrients;
  TotalDaily? totalDaily;
  List<Digest>? digest;

  Recipe({this.uri, this.label, this.image, this.source, this.url, this.shareAs, this.yield, this.dietLabels, this.healthLabels, this.cautions, this.ingredientLines, this.ingredients, this.calories, this.totalWeight, this.totalTime, this.cuisineType, this.mealType, this.dishType, this.totalNutrients, this.totalDaily, this.digest});

  Recipe.fromJson(Map<String, dynamic> json) {
    if(json["uri"] is String) {
      uri = json["uri"];
    }
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
    if(json["source"] is String) {
      source = json["source"];
    }
    if(json["url"] is String) {
      url = json["url"];
    }
    if(json["shareAs"] is String) {
      shareAs = json["shareAs"];
    }
    if(json["yield"] is int) {
      yield = json["yield"];
    }
    if(json["dietLabels"] is List) {
      dietLabels = json["dietLabels"] == null ? null : List<String>.from(json["dietLabels"]);
    }
    if(json["healthLabels"] is List) {
      healthLabels = json["healthLabels"] == null ? null : List<String>.from(json["healthLabels"]);
    }
    if(json["cautions"] is List) {
      cautions = json["cautions"] == null ? null : List<String>.from(json["cautions"]);
    }
    if(json["ingredientLines"] is List) {
      ingredientLines = json["ingredientLines"] == null ? null : List<String>.from(json["ingredientLines"]);
    }
    if(json["ingredients"] is List) {
      ingredients = json["ingredients"] == null ? null : (json["ingredients"] as List).map((e) => Ingredients.fromJson(e)).toList();
    }
    if(json["calories"] is double) {
      calories = json["calories"];
    }
    if(json["totalWeight"] is double) {
      totalWeight = json["totalWeight"];
    }
    if(json["totalTime"] is int) {
      totalTime = json["totalTime"];
    }
    if(json["cuisineType"] is List) {
      cuisineType = json["cuisineType"] == null ? null : List<String>.from(json["cuisineType"]);
    }
    if(json["mealType"] is List) {
      mealType = json["mealType"] == null ? null : List<String>.from(json["mealType"]);
    }
    if(json["dishType"] is List) {
      dishType = json["dishType"] == null ? null : List<String>.from(json["dishType"]);
    }
    if(json["totalNutrients"] is Map) {
      totalNutrients = json["totalNutrients"] == null ? null : TotalNutrients.fromJson(json["totalNutrients"]);
    }
    if(json["totalDaily"] is Map) {
      totalDaily = json["totalDaily"] == null ? null : TotalDaily.fromJson(json["totalDaily"]);
    }
    if(json["digest"] is List) {
      digest = json["digest"] == null ? null : (json["digest"] as List).map((e) => Digest.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["uri"] = uri;
    _data["label"] = label;
    _data["image"] = image;
    _data["source"] = source;
    _data["url"] = url;
    _data["shareAs"] = shareAs;
    _data["yield"] = yield;
    if(dietLabels != null) {
      _data["dietLabels"] = dietLabels;
    }
    if(healthLabels != null) {
      _data["healthLabels"] = healthLabels;
    }
    if(cautions != null) {
      _data["cautions"] = cautions;
    }
    if(ingredientLines != null) {
      _data["ingredientLines"] = ingredientLines;
    }
    if(ingredients != null) {
      _data["ingredients"] = ingredients?.map((e) => e.toJson()).toList();
    }
    _data["calories"] = calories;
    _data["totalWeight"] = totalWeight;
    _data["totalTime"] = totalTime;
    if(cuisineType != null) {
      _data["cuisineType"] = cuisineType;
    }
    if(mealType != null) {
      _data["mealType"] = mealType;
    }
    if(dishType != null) {
      _data["dishType"] = dishType;
    }
    if(totalNutrients != null) {
      _data["totalNutrients"] = totalNutrients?.toJson();
    }
    if(totalDaily != null) {
      _data["totalDaily"] = totalDaily?.toJson();
    }
    if(digest != null) {
      _data["digest"] = digest?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Digest {
  String? label;
  String? tag;
  String? schemaOrgTag;
  double? total;
  bool? hasRdi;
  double? daily;
  String? unit;
  List<Sub>? sub;

  Digest({this.label, this.tag, this.schemaOrgTag, this.total, this.hasRdi, this.daily, this.unit, this.sub});

  Digest.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["tag"] is String) {
      tag = json["tag"];
    }
    if(json["schemaOrgTag"] is String) {
      schemaOrgTag = json["schemaOrgTag"];
    }
    if(json["total"] is double) {
      total = json["total"];
    }
    if(json["hasRDI"] is bool) {
      hasRdi = json["hasRDI"];
    }
    if(json["daily"] is double) {
      daily = json["daily"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
    if(json["sub"] is List) {
      sub = json["sub"] == null ? null : (json["sub"] as List).map((e) => Sub.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["tag"] = tag;
    _data["schemaOrgTag"] = schemaOrgTag;
    _data["total"] = total;
    _data["hasRDI"] = hasRdi;
    _data["daily"] = daily;
    _data["unit"] = unit;
    if(sub != null) {
      _data["sub"] = sub?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Sub {
  String? label;
  String? tag;
  String? schemaOrgTag;
  double? total;
  bool? hasRdi;
  double? daily;
  String? unit;

  Sub({this.label, this.tag, this.schemaOrgTag, this.total, this.hasRdi, this.daily, this.unit});

  Sub.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["tag"] is String) {
      tag = json["tag"];
    }
    if(json["schemaOrgTag"] is String) {
      schemaOrgTag = json["schemaOrgTag"];
    }
    if(json["total"] is double) {
      total = json["total"];
    }
    if(json["hasRDI"] is bool) {
      hasRdi = json["hasRDI"];
    }
    if(json["daily"] is double) {
      daily = json["daily"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["tag"] = tag;
    _data["schemaOrgTag"] = schemaOrgTag;
    _data["total"] = total;
    _data["hasRDI"] = hasRdi;
    _data["daily"] = daily;
    _data["unit"] = unit;
    return _data;
  }
}

class TotalDaily {
  EnercKcal1? enercKcal;
  Fat1? fat;
  Fasat1? fasat;
  Chocdf1? chocdf;
  Fibtg1? fibtg;
  Procnt1? procnt;
  Chole1? chole;
  Na1? na;
  Ca1? ca;
  Mg1? mg;
  K1? k;
  Fe1? fe;
  Zn1? zn;
  P1? p;
  VitaRae1? vitaRae;
  Vitc1? vitc;
  Thia1? thia;
  Ribf1? ribf;
  Nia1? nia;
  Vitb6A1? vitb6A;
  Foldfe1? foldfe;
  Vitb121? vitb12;
  Vitd1? vitd;
  Tocpha1? tocpha;
  Vitk11? vitk1;

  TotalDaily({this.enercKcal, this.fat, this.fasat, this.chocdf, this.fibtg, this.procnt, this.chole, this.na, this.ca, this.mg, this.k, this.fe, this.zn, this.p, this.vitaRae, this.vitc, this.thia, this.ribf, this.nia, this.vitb6A, this.foldfe, this.vitb12, this.vitd, this.tocpha, this.vitk1});

  TotalDaily.fromJson(Map<String, dynamic> json) {
    if(json["ENERC_KCAL"] is Map) {
      enercKcal = json["ENERC_KCAL"] == null ? null : EnercKcal1.fromJson(json["ENERC_KCAL"]);
    }
    if(json["FAT"] is Map) {
      fat = json["FAT"] == null ? null : Fat1.fromJson(json["FAT"]);
    }
    if(json["FASAT"] is Map) {
      fasat = json["FASAT"] == null ? null : Fasat1.fromJson(json["FASAT"]);
    }
    if(json["CHOCDF"] is Map) {
      chocdf = json["CHOCDF"] == null ? null : Chocdf1.fromJson(json["CHOCDF"]);
    }
    if(json["FIBTG"] is Map) {
      fibtg = json["FIBTG"] == null ? null : Fibtg1.fromJson(json["FIBTG"]);
    }
    if(json["PROCNT"] is Map) {
      procnt = json["PROCNT"] == null ? null : Procnt1.fromJson(json["PROCNT"]);
    }
    if(json["CHOLE"] is Map) {
      chole = json["CHOLE"] == null ? null : Chole1.fromJson(json["CHOLE"]);
    }
    if(json["NA"] is Map) {
      na = json["NA"] == null ? null : Na1.fromJson(json["NA"]);
    }
    if(json["CA"] is Map) {
      ca = json["CA"] == null ? null : Ca1.fromJson(json["CA"]);
    }
    if(json["MG"] is Map) {
      mg = json["MG"] == null ? null : Mg1.fromJson(json["MG"]);
    }
    if(json["K"] is Map) {
      k = json["K"] == null ? null : K1.fromJson(json["K"]);
    }
    if(json["FE"] is Map) {
      fe = json["FE"] == null ? null : Fe1.fromJson(json["FE"]);
    }
    if(json["ZN"] is Map) {
      zn = json["ZN"] == null ? null : Zn1.fromJson(json["ZN"]);
    }
    if(json["P"] is Map) {
      p = json["P"] == null ? null : P1.fromJson(json["P"]);
    }
    if(json["VITA_RAE"] is Map) {
      vitaRae = json["VITA_RAE"] == null ? null : VitaRae1.fromJson(json["VITA_RAE"]);
    }
    if(json["VITC"] is Map) {
      vitc = json["VITC"] == null ? null : Vitc1.fromJson(json["VITC"]);
    }
    if(json["THIA"] is Map) {
      thia = json["THIA"] == null ? null : Thia1.fromJson(json["THIA"]);
    }
    if(json["RIBF"] is Map) {
      ribf = json["RIBF"] == null ? null : Ribf1.fromJson(json["RIBF"]);
    }
    if(json["NIA"] is Map) {
      nia = json["NIA"] == null ? null : Nia1.fromJson(json["NIA"]);
    }
    if(json["VITB6A"] is Map) {
      vitb6A = json["VITB6A"] == null ? null : Vitb6A1.fromJson(json["VITB6A"]);
    }
    if(json["FOLDFE"] is Map) {
      foldfe = json["FOLDFE"] == null ? null : Foldfe1.fromJson(json["FOLDFE"]);
    }
    if(json["VITB12"] is Map) {
      vitb12 = json["VITB12"] == null ? null : Vitb121.fromJson(json["VITB12"]);
    }
    if(json["VITD"] is Map) {
      vitd = json["VITD"] == null ? null : Vitd1.fromJson(json["VITD"]);
    }
    if(json["TOCPHA"] is Map) {
      tocpha = json["TOCPHA"] == null ? null : Tocpha1.fromJson(json["TOCPHA"]);
    }
    if(json["VITK1"] is Map) {
      vitk1 = json["VITK1"] == null ? null : Vitk11.fromJson(json["VITK1"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(enercKcal != null) {
      _data["ENERC_KCAL"] = enercKcal?.toJson();
    }
    if(fat != null) {
      _data["FAT"] = fat?.toJson();
    }
    if(fasat != null) {
      _data["FASAT"] = fasat?.toJson();
    }
    if(chocdf != null) {
      _data["CHOCDF"] = chocdf?.toJson();
    }
    if(fibtg != null) {
      _data["FIBTG"] = fibtg?.toJson();
    }
    if(procnt != null) {
      _data["PROCNT"] = procnt?.toJson();
    }
    if(chole != null) {
      _data["CHOLE"] = chole?.toJson();
    }
    if(na != null) {
      _data["NA"] = na?.toJson();
    }
    if(ca != null) {
      _data["CA"] = ca?.toJson();
    }
    if(mg != null) {
      _data["MG"] = mg?.toJson();
    }
    if(k != null) {
      _data["K"] = k?.toJson();
    }
    if(fe != null) {
      _data["FE"] = fe?.toJson();
    }
    if(zn != null) {
      _data["ZN"] = zn?.toJson();
    }
    if(p != null) {
      _data["P"] = p?.toJson();
    }
    if(vitaRae != null) {
      _data["VITA_RAE"] = vitaRae?.toJson();
    }
    if(vitc != null) {
      _data["VITC"] = vitc?.toJson();
    }
    if(thia != null) {
      _data["THIA"] = thia?.toJson();
    }
    if(ribf != null) {
      _data["RIBF"] = ribf?.toJson();
    }
    if(nia != null) {
      _data["NIA"] = nia?.toJson();
    }
    if(vitb6A != null) {
      _data["VITB6A"] = vitb6A?.toJson();
    }
    if(foldfe != null) {
      _data["FOLDFE"] = foldfe?.toJson();
    }
    if(vitb12 != null) {
      _data["VITB12"] = vitb12?.toJson();
    }
    if(vitd != null) {
      _data["VITD"] = vitd?.toJson();
    }
    if(tocpha != null) {
      _data["TOCPHA"] = tocpha?.toJson();
    }
    if(vitk1 != null) {
      _data["VITK1"] = vitk1?.toJson();
    }
    return _data;
  }
}

class Vitk11 {
  String? label;
  double? quantity;
  String? unit;

  Vitk11({this.label, this.quantity, this.unit});

  Vitk11.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Tocpha1 {
  String? label;
  double? quantity;
  String? unit;

  Tocpha1({this.label, this.quantity, this.unit});

  Tocpha1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Vitd1 {
  String? label;
  double? quantity;
  String? unit;

  Vitd1({this.label, this.quantity, this.unit});

  Vitd1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Vitb121 {
  String? label;
  double? quantity;
  String? unit;

  Vitb121({this.label, this.quantity, this.unit});

  Vitb121.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Foldfe1 {
  String? label;
  double? quantity;
  String? unit;

  Foldfe1({this.label, this.quantity, this.unit});

  Foldfe1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Vitb6A1 {
  String? label;
  double? quantity;
  String? unit;

  Vitb6A1({this.label, this.quantity, this.unit});

  Vitb6A1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Nia1 {
  String? label;
  double? quantity;
  String? unit;

  Nia1({this.label, this.quantity, this.unit});

  Nia1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Ribf1 {
  String? label;
  double? quantity;
  String? unit;

  Ribf1({this.label, this.quantity, this.unit});

  Ribf1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Thia1 {
  String? label;
  double? quantity;
  String? unit;

  Thia1({this.label, this.quantity, this.unit});

  Thia1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Vitc1 {
  String? label;
  double? quantity;
  String? unit;

  Vitc1({this.label, this.quantity, this.unit});

  Vitc1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class VitaRae1 {
  String? label;
  double? quantity;
  String? unit;

  VitaRae1({this.label, this.quantity, this.unit});

  VitaRae1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class P1 {
  String? label;
  double? quantity;
  String? unit;

  P1({this.label, this.quantity, this.unit});

  P1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Zn1 {
  String? label;
  double? quantity;
  String? unit;

  Zn1({this.label, this.quantity, this.unit});

  Zn1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Fe1 {
  String? label;
  double? quantity;
  String? unit;

  Fe1({this.label, this.quantity, this.unit});

  Fe1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class K1 {
  String? label;
  double? quantity;
  String? unit;

  K1({this.label, this.quantity, this.unit});

  K1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Mg1 {
  String? label;
  double? quantity;
  String? unit;

  Mg1({this.label, this.quantity, this.unit});

  Mg1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Ca1 {
  String? label;
  double? quantity;
  String? unit;

  Ca1({this.label, this.quantity, this.unit});

  Ca1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Na1 {
  String? label;
  double? quantity;
  String? unit;

  Na1({this.label, this.quantity, this.unit});

  Na1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Chole1 {
  String? label;
  double? quantity;
  String? unit;

  Chole1({this.label, this.quantity, this.unit});

  Chole1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Procnt1 {
  String? label;
  double? quantity;
  String? unit;

  Procnt1({this.label, this.quantity, this.unit});

  Procnt1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Fibtg1 {
  String? label;
  double? quantity;
  String? unit;

  Fibtg1({this.label, this.quantity, this.unit});

  Fibtg1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Chocdf1 {
  String? label;
  double? quantity;
  String? unit;

  Chocdf1({this.label, this.quantity, this.unit});

  Chocdf1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Fasat1 {
  String? label;
  double? quantity;
  String? unit;

  Fasat1({this.label, this.quantity, this.unit});

  Fasat1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Fat1 {
  String? label;
  double? quantity;
  String? unit;

  Fat1({this.label, this.quantity, this.unit});

  Fat1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class EnercKcal1 {
  String? label;
  double? quantity;
  String? unit;

  EnercKcal1({this.label, this.quantity, this.unit});

  EnercKcal1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class TotalNutrients {
  EnercKcal? enercKcal;
  Fat? fat;
  Fasat? fasat;
  Fatrn? fatrn;
  Fams? fams;
  Fapu? fapu;
  Chocdf? chocdf;
  ChocdfNet? chocdfNet;
  Fibtg? fibtg;
  Sugar? sugar;
  SugarAdded? sugarAdded;
  Procnt? procnt;
  Chole? chole;
  Na? na;
  Ca? ca;
  Mg? mg;
  K? k;
  Fe? fe;
  Zn? zn;
  P? p;
  VitaRae? vitaRae;
  Vitc? vitc;
  Thia? thia;
  Ribf? ribf;
  Nia? nia;
  Vitb6A? vitb6A;
  Foldfe? foldfe;
  Folfd? folfd;
  Folac? folac;
  Vitb12? vitb12;
  Vitd? vitd;
  Tocpha? tocpha;
  Vitk1? vitk1;
  SugarAlcohol? sugarAlcohol;
  Water? water;

  TotalNutrients({this.enercKcal, this.fat, this.fasat, this.fatrn, this.fams, this.fapu, this.chocdf, this.chocdfNet, this.fibtg, this.sugar, this.sugarAdded, this.procnt, this.chole, this.na, this.ca, this.mg, this.k, this.fe, this.zn, this.p, this.vitaRae, this.vitc, this.thia, this.ribf, this.nia, this.vitb6A, this.foldfe, this.folfd, this.folac, this.vitb12, this.vitd, this.tocpha, this.vitk1, this.sugarAlcohol, this.water});

  TotalNutrients.fromJson(Map<String, dynamic> json) {
    if(json["ENERC_KCAL"] is Map) {
      enercKcal = json["ENERC_KCAL"] == null ? null : EnercKcal.fromJson(json["ENERC_KCAL"]);
    }
    if(json["FAT"] is Map) {
      fat = json["FAT"] == null ? null : Fat.fromJson(json["FAT"]);
    }
    if(json["FASAT"] is Map) {
      fasat = json["FASAT"] == null ? null : Fasat.fromJson(json["FASAT"]);
    }
    if(json["FATRN"] is Map) {
      fatrn = json["FATRN"] == null ? null : Fatrn.fromJson(json["FATRN"]);
    }
    if(json["FAMS"] is Map) {
      fams = json["FAMS"] == null ? null : Fams.fromJson(json["FAMS"]);
    }
    if(json["FAPU"] is Map) {
      fapu = json["FAPU"] == null ? null : Fapu.fromJson(json["FAPU"]);
    }
    if(json["CHOCDF"] is Map) {
      chocdf = json["CHOCDF"] == null ? null : Chocdf.fromJson(json["CHOCDF"]);
    }
    if(json["CHOCDF.net"] is Map) {
      chocdfNet = json["CHOCDF.net"] == null ? null : ChocdfNet.fromJson(json["CHOCDF.net"]);
    }
    if(json["FIBTG"] is Map) {
      fibtg = json["FIBTG"] == null ? null : Fibtg.fromJson(json["FIBTG"]);
    }
    if(json["SUGAR"] is Map) {
      sugar = json["SUGAR"] == null ? null : Sugar.fromJson(json["SUGAR"]);
    }
    if(json["SUGAR.added"] is Map) {
      sugarAdded = json["SUGAR.added"] == null ? null : SugarAdded.fromJson(json["SUGAR.added"]);
    }
    if(json["PROCNT"] is Map) {
      procnt = json["PROCNT"] == null ? null : Procnt.fromJson(json["PROCNT"]);
    }
    if(json["CHOLE"] is Map) {
      chole = json["CHOLE"] == null ? null : Chole.fromJson(json["CHOLE"]);
    }
    if(json["NA"] is Map) {
      na = json["NA"] == null ? null : Na.fromJson(json["NA"]);
    }
    if(json["CA"] is Map) {
      ca = json["CA"] == null ? null : Ca.fromJson(json["CA"]);
    }
    if(json["MG"] is Map) {
      mg = json["MG"] == null ? null : Mg.fromJson(json["MG"]);
    }
    if(json["K"] is Map) {
      k = json["K"] == null ? null : K.fromJson(json["K"]);
    }
    if(json["FE"] is Map) {
      fe = json["FE"] == null ? null : Fe.fromJson(json["FE"]);
    }
    if(json["ZN"] is Map) {
      zn = json["ZN"] == null ? null : Zn.fromJson(json["ZN"]);
    }
    if(json["P"] is Map) {
      p = json["P"] == null ? null : P.fromJson(json["P"]);
    }
    if(json["VITA_RAE"] is Map) {
      vitaRae = json["VITA_RAE"] == null ? null : VitaRae.fromJson(json["VITA_RAE"]);
    }
    if(json["VITC"] is Map) {
      vitc = json["VITC"] == null ? null : Vitc.fromJson(json["VITC"]);
    }
    if(json["THIA"] is Map) {
      thia = json["THIA"] == null ? null : Thia.fromJson(json["THIA"]);
    }
    if(json["RIBF"] is Map) {
      ribf = json["RIBF"] == null ? null : Ribf.fromJson(json["RIBF"]);
    }
    if(json["NIA"] is Map) {
      nia = json["NIA"] == null ? null : Nia.fromJson(json["NIA"]);
    }
    if(json["VITB6A"] is Map) {
      vitb6A = json["VITB6A"] == null ? null : Vitb6A.fromJson(json["VITB6A"]);
    }
    if(json["FOLDFE"] is Map) {
      foldfe = json["FOLDFE"] == null ? null : Foldfe.fromJson(json["FOLDFE"]);
    }
    if(json["FOLFD"] is Map) {
      folfd = json["FOLFD"] == null ? null : Folfd.fromJson(json["FOLFD"]);
    }
    if(json["FOLAC"] is Map) {
      folac = json["FOLAC"] == null ? null : Folac.fromJson(json["FOLAC"]);
    }
    if(json["VITB12"] is Map) {
      vitb12 = json["VITB12"] == null ? null : Vitb12.fromJson(json["VITB12"]);
    }
    if(json["VITD"] is Map) {
      vitd = json["VITD"] == null ? null : Vitd.fromJson(json["VITD"]);
    }
    if(json["TOCPHA"] is Map) {
      tocpha = json["TOCPHA"] == null ? null : Tocpha.fromJson(json["TOCPHA"]);
    }
    if(json["VITK1"] is Map) {
      vitk1 = json["VITK1"] == null ? null : Vitk1.fromJson(json["VITK1"]);
    }
    if(json["Sugar.alcohol"] is Map) {
      sugarAlcohol = json["Sugar.alcohol"] == null ? null : SugarAlcohol.fromJson(json["Sugar.alcohol"]);
    }
    if(json["WATER"] is Map) {
      water = json["WATER"] == null ? null : Water.fromJson(json["WATER"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(enercKcal != null) {
      _data["ENERC_KCAL"] = enercKcal?.toJson();
    }
    if(fat != null) {
      _data["FAT"] = fat?.toJson();
    }
    if(fasat != null) {
      _data["FASAT"] = fasat?.toJson();
    }
    if(fatrn != null) {
      _data["FATRN"] = fatrn?.toJson();
    }
    if(fams != null) {
      _data["FAMS"] = fams?.toJson();
    }
    if(fapu != null) {
      _data["FAPU"] = fapu?.toJson();
    }
    if(chocdf != null) {
      _data["CHOCDF"] = chocdf?.toJson();
    }
    if(chocdfNet != null) {
      _data["CHOCDF.net"] = chocdfNet?.toJson();
    }
    if(fibtg != null) {
      _data["FIBTG"] = fibtg?.toJson();
    }
    if(sugar != null) {
      _data["SUGAR"] = sugar?.toJson();
    }
    if(sugarAdded != null) {
      _data["SUGAR.added"] = sugarAdded?.toJson();
    }
    if(procnt != null) {
      _data["PROCNT"] = procnt?.toJson();
    }
    if(chole != null) {
      _data["CHOLE"] = chole?.toJson();
    }
    if(na != null) {
      _data["NA"] = na?.toJson();
    }
    if(ca != null) {
      _data["CA"] = ca?.toJson();
    }
    if(mg != null) {
      _data["MG"] = mg?.toJson();
    }
    if(k != null) {
      _data["K"] = k?.toJson();
    }
    if(fe != null) {
      _data["FE"] = fe?.toJson();
    }
    if(zn != null) {
      _data["ZN"] = zn?.toJson();
    }
    if(p != null) {
      _data["P"] = p?.toJson();
    }
    if(vitaRae != null) {
      _data["VITA_RAE"] = vitaRae?.toJson();
    }
    if(vitc != null) {
      _data["VITC"] = vitc?.toJson();
    }
    if(thia != null) {
      _data["THIA"] = thia?.toJson();
    }
    if(ribf != null) {
      _data["RIBF"] = ribf?.toJson();
    }
    if(nia != null) {
      _data["NIA"] = nia?.toJson();
    }
    if(vitb6A != null) {
      _data["VITB6A"] = vitb6A?.toJson();
    }
    if(foldfe != null) {
      _data["FOLDFE"] = foldfe?.toJson();
    }
    if(folfd != null) {
      _data["FOLFD"] = folfd?.toJson();
    }
    if(folac != null) {
      _data["FOLAC"] = folac?.toJson();
    }
    if(vitb12 != null) {
      _data["VITB12"] = vitb12?.toJson();
    }
    if(vitd != null) {
      _data["VITD"] = vitd?.toJson();
    }
    if(tocpha != null) {
      _data["TOCPHA"] = tocpha?.toJson();
    }
    if(vitk1 != null) {
      _data["VITK1"] = vitk1?.toJson();
    }
    if(sugarAlcohol != null) {
      _data["Sugar.alcohol"] = sugarAlcohol?.toJson();
    }
    if(water != null) {
      _data["WATER"] = water?.toJson();
    }
    return _data;
  }
}

class Water {
  String? label;
  double? quantity;
  String? unit;

  Water({this.label, this.quantity, this.unit});

  Water.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class SugarAlcohol {
  String? label;
  int? quantity;
  String? unit;

  SugarAlcohol({this.label, this.quantity, this.unit});

  SugarAlcohol.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is int) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Vitk1 {
  String? label;
  double? quantity;
  String? unit;

  Vitk1({this.label, this.quantity, this.unit});

  Vitk1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Tocpha {
  String? label;
  double? quantity;
  String? unit;

  Tocpha({this.label, this.quantity, this.unit});

  Tocpha.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Vitd {
  String? label;
  double? quantity;
  String? unit;

  Vitd({this.label, this.quantity, this.unit});

  Vitd.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Vitb12 {
  String? label;
  double? quantity;
  String? unit;

  Vitb12({this.label, this.quantity, this.unit});

  Vitb12.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Folac {
  String? label;
  int? quantity;
  String? unit;

  Folac({this.label, this.quantity, this.unit});

  Folac.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is int) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Folfd {
  String? label;
  double? quantity;
  String? unit;

  Folfd({this.label, this.quantity, this.unit});

  Folfd.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Foldfe {
  String? label;
  double? quantity;
  String? unit;

  Foldfe({this.label, this.quantity, this.unit});

  Foldfe.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Vitb6A {
  String? label;
  double? quantity;
  String? unit;

  Vitb6A({this.label, this.quantity, this.unit});

  Vitb6A.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Nia {
  String? label;
  double? quantity;
  String? unit;

  Nia({this.label, this.quantity, this.unit});

  Nia.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Ribf {
  String? label;
  double? quantity;
  String? unit;

  Ribf({this.label, this.quantity, this.unit});

  Ribf.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Thia {
  String? label;
  double? quantity;
  String? unit;

  Thia({this.label, this.quantity, this.unit});

  Thia.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Vitc {
  String? label;
  double? quantity;
  String? unit;

  Vitc({this.label, this.quantity, this.unit});

  Vitc.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class VitaRae {
  String? label;
  double? quantity;
  String? unit;

  VitaRae({this.label, this.quantity, this.unit});

  VitaRae.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class P {
  String? label;
  double? quantity;
  String? unit;

  P({this.label, this.quantity, this.unit});

  P.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Zn {
  String? label;
  double? quantity;
  String? unit;

  Zn({this.label, this.quantity, this.unit});

  Zn.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Fe {
  String? label;
  double? quantity;
  String? unit;

  Fe({this.label, this.quantity, this.unit});

  Fe.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class K {
  String? label;
  double? quantity;
  String? unit;

  K({this.label, this.quantity, this.unit});

  K.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Mg {
  String? label;
  double? quantity;
  String? unit;

  Mg({this.label, this.quantity, this.unit});

  Mg.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Ca {
  String? label;
  double? quantity;
  String? unit;

  Ca({this.label, this.quantity, this.unit});

  Ca.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Na {
  String? label;
  double? quantity;
  String? unit;

  Na({this.label, this.quantity, this.unit});

  Na.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Chole {
  String? label;
  double? quantity;
  String? unit;

  Chole({this.label, this.quantity, this.unit});

  Chole.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Procnt {
  String? label;
  double? quantity;
  String? unit;

  Procnt({this.label, this.quantity, this.unit});

  Procnt.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class SugarAdded {
  String? label;
  int? quantity;
  String? unit;

  SugarAdded({this.label, this.quantity, this.unit});

  SugarAdded.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is int) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Sugar {
  String? label;
  double? quantity;
  String? unit;

  Sugar({this.label, this.quantity, this.unit});

  Sugar.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Fibtg {
  String? label;
  double? quantity;
  String? unit;

  Fibtg({this.label, this.quantity, this.unit});

  Fibtg.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class ChocdfNet {
  String? label;
  double? quantity;
  String? unit;

  ChocdfNet({this.label, this.quantity, this.unit});

  ChocdfNet.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Chocdf {
  String? label;
  double? quantity;
  String? unit;

  Chocdf({this.label, this.quantity, this.unit});

  Chocdf.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Fapu {
  String? label;
  double? quantity;
  String? unit;

  Fapu({this.label, this.quantity, this.unit});

  Fapu.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Fams {
  String? label;
  double? quantity;
  String? unit;

  Fams({this.label, this.quantity, this.unit});

  Fams.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Fatrn {
  String? label;
  double? quantity;
  String? unit;

  Fatrn({this.label, this.quantity, this.unit});

  Fatrn.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Fasat {
  String? label;
  double? quantity;
  String? unit;

  Fasat({this.label, this.quantity, this.unit});

  Fasat.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Fat {
  String? label;
  double? quantity;
  String? unit;

  Fat({this.label, this.quantity, this.unit});

  Fat.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class EnercKcal {
  String? label;
  double? quantity;
  String? unit;

  EnercKcal({this.label, this.quantity, this.unit});

  EnercKcal.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    _data["quantity"] = quantity;
    _data["unit"] = unit;
    return _data;
  }
}

class Ingredients {
  String? text;
  double? quantity;
  String? measure;
  String? food;
  int? weight;
  String? foodCategory;
  String? foodId;
  String? image;

  Ingredients({this.text, this.quantity, this.measure, this.food, this.weight, this.foodCategory, this.foodId, this.image});

  Ingredients.fromJson(Map<String, dynamic> json) {
    if(json["text"] is String) {
      text = json["text"];
    }
    if(json["quantity"] is double) {
      quantity = json["quantity"];
    }
    if(json["measure"] is String) {
      measure = json["measure"];
    }
    if(json["food"] is String) {
      food = json["food"];
    }
    if(json["weight"] is int) {
      weight = json["weight"];
    }
    if(json["foodCategory"] is String) {
      foodCategory = json["foodCategory"];
    }
    if(json["foodId"] is String) {
      foodId = json["foodId"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["text"] = text;
    _data["quantity"] = quantity;
    _data["measure"] = measure;
    _data["food"] = food;
    _data["weight"] = weight;
    _data["foodCategory"] = foodCategory;
    _data["foodId"] = foodId;
    _data["image"] = image;
    return _data;
  }
}