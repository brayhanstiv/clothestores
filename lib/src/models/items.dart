//Packages
import 'dart:convert';

// Models
import 'package:clothesstore/src/models/item.dart';

class Items {
  Items({
    required this.siteId,
    required this.countryDefaultTimeZone,
    required this.query,
    required this.paging,
    required this.results,
    required this.secondaryResults,
    required this.relatedResults,
    required this.sort,
    required this.availableSorts,
    required this.filters,
    required this.availableFilters,
  });

  String siteId, countryDefaultTimeZone;
  Map<String, dynamic> paging, sort;
  List<Item> results;
  List secondaryResults,
      relatedResults,
      availableSorts,
      filters,
      availableFilters;
  dynamic query;

  factory Items.fromJson(Map<String, dynamic> json) => Items(
        siteId: json["site_id"],
        countryDefaultTimeZone: json["country_default_time_zone"],
        query: json["query"],
        paging: json["paging"],
        results: List<Item>.from(json["results"].map((x) => Item.fromJson(x))),
        secondaryResults: json["secondary_results"],
        relatedResults: json["related_results"],
        sort: json["sort"],
        availableSorts: json["available_sorts"],
        filters: json["filters"],
        availableFilters: json["available_filters"],
      );

  Map<String, dynamic> toJson() => {
        "site_id": siteId,
        "country_default_time_zone": countryDefaultTimeZone,
        "query": query,
        "paging": paging,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
        "secondary_results": secondaryResults,
        "related_results": relatedResults,
        "sort": sort,
        "available_sorts": availableSorts,
        "filters": filters,
        "available_filters": availableFilters,
      };
}

Items itemFromJson(String str) => Items.fromJson(json.decode(str));
String itemToJson(Items data) => json.encode(data.toJson());
