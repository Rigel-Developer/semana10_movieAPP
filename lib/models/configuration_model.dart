
class ConfigurationModel {
  Images? images;
  List<String>? changeKeys;

  ConfigurationModel({this.images, this.changeKeys});

  ConfigurationModel.fromJson(Map<String, dynamic> json) {
    if(json["images"] is Map) {
      images = json["images"] == null ? null : Images.fromJson(json["images"]);
    }
    if(json["change_keys"] is List) {
      changeKeys = json["change_keys"] == null ? null : List<String>.from(json["change_keys"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(images != null) {
      _data["images"] = images?.toJson();
    }
    if(changeKeys != null) {
      _data["change_keys"] = changeKeys;
    }
    return _data;
  }
}

class Images {
  String? baseUrl;
  String? secureBaseUrl;
  List<String>? backdropSizes;
  List<String>? logoSizes;
  List<String>? posterSizes;
  List<String>? profileSizes;
  List<String>? stillSizes;

  Images({this.baseUrl, this.secureBaseUrl, this.backdropSizes, this.logoSizes, this.posterSizes, this.profileSizes, this.stillSizes});

  Images.fromJson(Map<String, dynamic> json) {
    if(json["base_url"] is String) {
      baseUrl = json["base_url"];
    }
    if(json["secure_base_url"] is String) {
      secureBaseUrl = json["secure_base_url"];
    }
    if(json["backdrop_sizes"] is List) {
      backdropSizes = json["backdrop_sizes"] == null ? null : List<String>.from(json["backdrop_sizes"]);
    }
    if(json["logo_sizes"] is List) {
      logoSizes = json["logo_sizes"] == null ? null : List<String>.from(json["logo_sizes"]);
    }
    if(json["poster_sizes"] is List) {
      posterSizes = json["poster_sizes"] == null ? null : List<String>.from(json["poster_sizes"]);
    }
    if(json["profile_sizes"] is List) {
      profileSizes = json["profile_sizes"] == null ? null : List<String>.from(json["profile_sizes"]);
    }
    if(json["still_sizes"] is List) {
      stillSizes = json["still_sizes"] == null ? null : List<String>.from(json["still_sizes"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["base_url"] = baseUrl;
    _data["secure_base_url"] = secureBaseUrl;
    if(backdropSizes != null) {
      _data["backdrop_sizes"] = backdropSizes;
    }
    if(logoSizes != null) {
      _data["logo_sizes"] = logoSizes;
    }
    if(posterSizes != null) {
      _data["poster_sizes"] = posterSizes;
    }
    if(profileSizes != null) {
      _data["profile_sizes"] = profileSizes;
    }
    if(stillSizes != null) {
      _data["still_sizes"] = stillSizes;
    }
    return _data;
  }
}