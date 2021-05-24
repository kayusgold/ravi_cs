// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

ProductModel productModelFromJson(String str) =>
    ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
    this.products,
    this.params,
  });

  List<Product> products;
  Params params;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        products: List<Product>.from(
            json["products"].map((x) => Product.fromJson(x))),
        params: Params.fromJson(json["params"]),
      );

  Map<String, dynamic> toJson() => {
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
        "params": params.toJson(),
      };
}

class Params {
  Params({
    this.area,
    this.useCaching,
    this.extend,
    this.customExtend,
    this.pname,
    this.pshort,
    this.pfull,
    this.pkeywords,
    this.feature,
    this.type,
    this.page,
    this.action,
    this.filterVariants,
    this.featuresHash,
    this.limit,
    this.bid,
    this.match,
    this.tracking,
    this.getFrontendUrls,
    this.itemsPerPage,
    this.applyDisabledFilters,
    this.loadProductsExtraData,
    this.storefront,
    this.sortBy,
    this.sortOrder,
    this.includeChildVariations,
    this.groupChildVariations,
    this.sortOrderRev,
    this.totalItems,
  });

  Area area;
  bool useCaching;
  List<String> extend;
  List<dynamic> customExtend;
  String pname;
  String pshort;
  String pfull;
  String pkeywords;
  List<dynamic> feature;
  String type;
  int page;
  String action;
  List<dynamic> filterVariants;
  String featuresHash;
  int limit;
  int bid;
  String match;
  List<dynamic> tracking;
  bool getFrontendUrls;
  int itemsPerPage;
  String applyDisabledFilters;
  bool loadProductsExtraData;
  dynamic storefront;
  SortBy sortBy;
  String sortOrder;
  bool includeChildVariations;
  bool groupChildVariations;
  String sortOrderRev;
  String totalItems;

  factory Params.fromJson(Map<String, dynamic> json) => Params(
        area: areaValues.map[json["area"]],
        useCaching: json["use_caching"],
        extend: List<String>.from(json["extend"].map((x) => x)),
        customExtend: List<dynamic>.from(json["custom_extend"].map((x) => x)),
        pname: json["pname"],
        pshort: json["pshort"],
        pfull: json["pfull"],
        pkeywords: json["pkeywords"],
        feature: List<dynamic>.from(json["feature"].map((x) => x)),
        type: json["type"],
        page: json["page"],
        action: json["action"],
        filterVariants:
            List<dynamic>.from(json["filter_variants"].map((x) => x)),
        featuresHash: json["features_hash"],
        limit: json["limit"],
        bid: json["bid"],
        match: json["match"],
        tracking: List<dynamic>.from(json["tracking"].map((x) => x)),
        getFrontendUrls: json["get_frontend_urls"],
        itemsPerPage: json["items_per_page"],
        applyDisabledFilters: json["apply_disabled_filters"],
        loadProductsExtraData: json["load_products_extra_data"],
        storefront: json["storefront"],
        sortBy: sortByValues.map[json["sort_by"]],
        sortOrder: json["sort_order"],
        includeChildVariations: json["include_child_variations"],
        groupChildVariations: json["group_child_variations"],
        sortOrderRev: json["sort_order_rev"],
        totalItems: json["total_items"],
      );

  Map<String, dynamic> toJson() => {
        "area": areaValues.reverse[area],
        "use_caching": useCaching,
        "extend": List<dynamic>.from(extend.map((x) => x)),
        "custom_extend": List<dynamic>.from(customExtend.map((x) => x)),
        "pname": pname,
        "pshort": pshort,
        "pfull": pfull,
        "pkeywords": pkeywords,
        "feature": List<dynamic>.from(feature.map((x) => x)),
        "type": type,
        "page": page,
        "action": action,
        "filter_variants": List<dynamic>.from(filterVariants.map((x) => x)),
        "features_hash": featuresHash,
        "limit": limit,
        "bid": bid,
        "match": match,
        "tracking": List<dynamic>.from(tracking.map((x) => x)),
        "get_frontend_urls": getFrontendUrls,
        "items_per_page": itemsPerPage,
        "apply_disabled_filters": applyDisabledFilters,
        "load_products_extra_data": loadProductsExtraData,
        "storefront": storefront,
        "sort_by": sortByValues.reverse[sortBy],
        "sort_order": sortOrder,
        "include_child_variations": includeChildVariations,
        "group_child_variations": groupChildVariations,
        "sort_order_rev": sortOrderRev,
        "total_items": totalItems,
      };
}

enum Area { A, M }

final areaValues = EnumValues({"A": Area.A, "M": Area.M});

enum SortBy { PRODUCT, FEATURE_VARIANT }

final sortByValues = EnumValues(
    {"feature_variant": SortBy.FEATURE_VARIANT, "product": SortBy.PRODUCT});

class Product {
  Product({
    this.productId,
    this.product,
    this.productType,
    this.parentProductId,
    this.productCode,
    this.status,
    this.companyId,
    this.listPrice,
    this.amount,
    this.weight,
    this.length,
    this.width,
    this.height,
    this.shippingFreight,
    this.lowAvailLimit,
    this.timestamp,
    this.updatedTimestamp,
    this.usergroupIds,
    this.isEdp,
    this.edpShipping,
    this.unlimitedDownload,
    this.tracking,
    this.freeShipping,
    this.zeroPriceAction,
    this.isPbp,
    this.isOp,
    this.isOper,
    this.isReturnable,
    this.returnPeriod,
    this.availSince,
    this.outOfStockActions,
    this.localization,
    this.minQty,
    this.maxQty,
    this.qtyStep,
    this.listQtyCount,
    this.taxIds,
    this.ageVerification,
    this.ageLimit,
    this.optionsType,
    this.exceptionsType,
    this.detailsLayout,
    this.shippingParams,
    this.facebookObjType,
    this.buyNowUrl,
    this.price,
    this.categoryIds,
    this.seoName,
    this.seoPath,
    this.mainCategory,
    this.variationFeatures,
    this.mainPair,
    this.basePrice,
    this.selectedOptions,
    this.hasOptions,
    this.productOptions,
    this.listDiscount,
    this.listDiscountPrc,
    this.discounts,
    this.productFeatures,
    this.qtyContent,
    this.premoderationReason,
    this.imagePairs,
    this.averageRating,
    this.discussionType,
    this.discussionThreadId,
  });

  String productId;
  String product;
  Type productType;
  String parentProductId;
  String productCode;
  Area status;
  String companyId;
  String listPrice;
  String amount;
  String weight;
  String length;
  String width;
  String height;
  String shippingFreight;
  String lowAvailLimit;
  String timestamp;
  String updatedTimestamp;
  String usergroupIds;
  AgeVerification isEdp;
  AgeVerification edpShipping;
  AgeVerification unlimitedDownload;
  Tracking tracking;
  AgeVerification freeShipping;
  ZeroPriceAction zeroPriceAction;
  IsPbp isPbp;
  AgeVerification isOp;
  AgeVerification isOper;
  IsPbp isReturnable;
  String returnPeriod;
  String availSince;
  AgeVerification outOfStockActions;
  String localization;
  String minQty;
  String maxQty;
  String qtyStep;
  String listQtyCount;
  String taxIds;
  AgeVerification ageVerification;
  String ageLimit;
  Type optionsType;
  ExceptionsType exceptionsType;
  DetailsLayout detailsLayout;
  String shippingParams;
  String facebookObjType;
  String buyNowUrl;
  String price;
  List<int> categoryIds;
  String seoName;
  String seoPath;
  int mainCategory;
  List<dynamic> variationFeatures;
  MainPair mainPair;
  String basePrice;
  List<dynamic> selectedOptions;
  bool hasOptions;
  List<dynamic> productOptions;
  int listDiscount;
  String listDiscountPrc;
  Discounts discounts;
  dynamic productFeatures;
  List<dynamic> qtyContent;
  String premoderationReason;
  Map<String, MainPair> imagePairs;
  dynamic averageRating;
  Tracking discussionType;
  String discussionThreadId;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        productId: json["product_id"],
        product: json["product"],
        productType: typeValues.map[json["product_type"]],
        parentProductId: json["parent_product_id"],
        productCode: json["product_code"],
        status: areaValues.map[json["status"]],
        companyId: json["company_id"],
        listPrice: json["list_price"],
        amount: json["amount"],
        weight: json["weight"],
        length: json["length"],
        width: json["width"],
        height: json["height"],
        shippingFreight: json["shipping_freight"],
        lowAvailLimit: json["low_avail_limit"],
        timestamp: json["timestamp"],
        updatedTimestamp: json["updated_timestamp"],
        usergroupIds: json["usergroup_ids"],
        isEdp: ageVerificationValues.map[json["is_edp"]],
        edpShipping: ageVerificationValues.map[json["edp_shipping"]],
        unlimitedDownload:
            ageVerificationValues.map[json["unlimited_download"]],
        tracking: trackingValues.map[json["tracking"]],
        freeShipping: ageVerificationValues.map[json["free_shipping"]],
        zeroPriceAction: zeroPriceActionValues.map[json["zero_price_action"]],
        isPbp: isPbpValues.map[json["is_pbp"]],
        isOp: ageVerificationValues.map[json["is_op"]],
        isOper: ageVerificationValues.map[json["is_oper"]],
        isReturnable: isPbpValues.map[json["is_returnable"]],
        returnPeriod: json["return_period"],
        availSince: json["avail_since"],
        outOfStockActions:
            ageVerificationValues.map[json["out_of_stock_actions"]],
        localization: json["localization"],
        minQty: json["min_qty"],
        maxQty: json["max_qty"],
        qtyStep: json["qty_step"],
        listQtyCount: json["list_qty_count"],
        taxIds: json["tax_ids"],
        ageVerification: ageVerificationValues.map[json["age_verification"]],
        ageLimit: json["age_limit"],
        optionsType: typeValues.map[json["options_type"]],
        exceptionsType: exceptionsTypeValues.map[json["exceptions_type"]],
        detailsLayout: detailsLayoutValues.map[json["details_layout"]],
        shippingParams: json["shipping_params"],
        facebookObjType: json["facebook_obj_type"],
        buyNowUrl: json["buy_now_url"],
        price: json["price"],
        categoryIds: List<int>.from(json["category_ids"].map((x) => x)),
        seoName: json["seo_name"],
        seoPath: json["seo_path"],
        mainCategory: json["main_category"],
        variationFeatures:
            List<dynamic>.from(json["variation_features"].map((x) => x)),
        mainPair: MainPair.fromJson(json["main_pair"]),
        basePrice: json["base_price"],
        selectedOptions:
            List<dynamic>.from(json["selected_options"].map((x) => x)),
        hasOptions: json["has_options"],
        productOptions:
            List<dynamic>.from(json["product_options"].map((x) => x)),
        listDiscount:
            json["list_discount"] == null ? null : json["list_discount"],
        listDiscountPrc: json["list_discount_prc"] == null
            ? null
            : json["list_discount_prc"],
        discounts: Discounts.fromJson(json["discounts"]),
        productFeatures: json["product_features"],
        qtyContent: List<dynamic>.from(json["qty_content"].map((x) => x)),
        premoderationReason: json["premoderation_reason"],
        imagePairs: json["image_pairs"] == null
            ? null
            : Map.from(json["image_pairs"]).map(
                (k, v) => MapEntry<String, MainPair>(k, MainPair.fromJson(v))),
        averageRating: json["average_rating"],
        discussionType: json["discussion_type"] == null
            ? null
            : trackingValues.map[json["discussion_type"]],
        discussionThreadId: json["discussion_thread_id"] == null
            ? null
            : json["discussion_thread_id"],
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "product": product,
        "product_type": typeValues.reverse[productType],
        "parent_product_id": parentProductId,
        "product_code": productCode,
        "status": areaValues.reverse[status],
        "company_id": companyId,
        "list_price": listPrice,
        "amount": amount,
        "weight": weight,
        "length": length,
        "width": width,
        "height": height,
        "shipping_freight": shippingFreight,
        "low_avail_limit": lowAvailLimit,
        "timestamp": timestamp,
        "updated_timestamp": updatedTimestamp,
        "usergroup_ids": usergroupIds,
        "is_edp": ageVerificationValues.reverse[isEdp],
        "edp_shipping": ageVerificationValues.reverse[edpShipping],
        "unlimited_download": ageVerificationValues.reverse[unlimitedDownload],
        "tracking": trackingValues.reverse[tracking],
        "free_shipping": ageVerificationValues.reverse[freeShipping],
        "zero_price_action": zeroPriceActionValues.reverse[zeroPriceAction],
        "is_pbp": isPbpValues.reverse[isPbp],
        "is_op": ageVerificationValues.reverse[isOp],
        "is_oper": ageVerificationValues.reverse[isOper],
        "is_returnable": isPbpValues.reverse[isReturnable],
        "return_period": returnPeriod,
        "avail_since": availSince,
        "out_of_stock_actions":
            ageVerificationValues.reverse[outOfStockActions],
        "localization": localization,
        "min_qty": minQty,
        "max_qty": maxQty,
        "qty_step": qtyStep,
        "list_qty_count": listQtyCount,
        "tax_ids": taxIds,
        "age_verification": ageVerificationValues.reverse[ageVerification],
        "age_limit": ageLimit,
        "options_type": typeValues.reverse[optionsType],
        "exceptions_type": exceptionsTypeValues.reverse[exceptionsType],
        "details_layout": detailsLayoutValues.reverse[detailsLayout],
        "shipping_params": shippingParams,
        "facebook_obj_type": facebookObjType,
        "buy_now_url": buyNowUrl,
        "price": price,
        "category_ids": List<dynamic>.from(categoryIds.map((x) => x)),
        "seo_name": seoName,
        "seo_path": seoPath,
        "main_category": mainCategory,
        "variation_features":
            List<dynamic>.from(variationFeatures.map((x) => x)),
        "main_pair": mainPair.toJson(),
        "base_price": basePrice,
        "selected_options": List<dynamic>.from(selectedOptions.map((x) => x)),
        "has_options": hasOptions,
        "product_options": List<dynamic>.from(productOptions.map((x) => x)),
        "list_discount": listDiscount == null ? null : listDiscount,
        "list_discount_prc": listDiscountPrc == null ? null : listDiscountPrc,
        "discounts": discounts.toJson(),
        "product_features": productFeatures,
        "qty_content": List<dynamic>.from(qtyContent.map((x) => x)),
        "premoderation_reason": premoderationReason,
        "image_pairs": imagePairs == null
            ? null
            : Map.from(imagePairs)
                .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "average_rating": averageRating,
        "discussion_type": discussionType == null
            ? null
            : trackingValues.reverse[discussionType],
        "discussion_thread_id":
            discussionThreadId == null ? null : discussionThreadId,
      };
}

enum AgeVerification { N }

final ageVerificationValues = EnumValues({"N": AgeVerification.N});

enum DetailsLayout { DEFAULT }

final detailsLayoutValues = EnumValues({"default": DetailsLayout.DEFAULT});

class Discounts {
  Discounts({
    this.a,
    this.p,
  });

  int a;
  int p;

  factory Discounts.fromJson(Map<String, dynamic> json) => Discounts(
        a: json["A"],
        p: json["P"],
      );

  Map<String, dynamic> toJson() => {
        "A": a,
        "P": p,
      };
}

enum Tracking { B }

final trackingValues = EnumValues({"B": Tracking.B});

enum ExceptionsType { F }

final exceptionsTypeValues = EnumValues({"F": ExceptionsType.F});

class MainPair {
  MainPair({
    this.pairId,
    this.imageId,
    this.detailedId,
    this.position,
    this.objectId,
    this.objectType,
    this.detailed,
    this.icon,
  });

  String pairId;
  String imageId;
  String detailedId;
  String position;
  String objectId;
  SortBy objectType;
  Detailed detailed;
  Detailed icon;

  factory MainPair.fromJson(Map<String, dynamic> json) => MainPair(
        pairId: json["pair_id"],
        imageId: json["image_id"],
        detailedId: json["detailed_id"],
        position: json["position"],
        objectId: json["object_id"],
        objectType: sortByValues.map[json["object_type"]],
        detailed: json["detailed"] == null
            ? null
            : Detailed.fromJson(json["detailed"]),
        icon: json["icon"] == null ? null : Detailed.fromJson(json["icon"]),
      );

  Map<String, dynamic> toJson() => {
        "pair_id": pairId,
        "image_id": imageId,
        "detailed_id": detailedId,
        "position": position,
        "object_id": objectId,
        "object_type": sortByValues.reverse[objectType],
        "detailed": detailed == null ? null : detailed.toJson(),
        "icon": icon == null ? null : icon.toJson(),
      };
}

class Detailed {
  Detailed({
    this.objectId,
    this.objectType,
    this.type,
    this.imagePath,
    this.alt,
    this.imageX,
    this.imageY,
    this.httpImagePath,
    this.httpsImagePath,
    this.absolutePath,
    this.relativePath,
    this.isHighRes,
  });

  String objectId;
  SortBy objectType;
  Area type;
  String imagePath;
  String alt;
  String imageX;
  String imageY;
  String httpImagePath;
  String httpsImagePath;
  String absolutePath;
  String relativePath;
  bool isHighRes;

  factory Detailed.fromJson(Map<String, dynamic> json) => Detailed(
        objectId: json["object_id"] == null ? null : json["object_id"],
        objectType: json["object_type"] == null
            ? null
            : sortByValues.map[json["object_type"]],
        type: json["type"] == null ? null : areaValues.map[json["type"]],
        imagePath: json["image_path"],
        alt: json["alt"],
        imageX: json["image_x"],
        imageY: json["image_y"],
        httpImagePath: json["http_image_path"],
        httpsImagePath: json["https_image_path"],
        absolutePath: json["absolute_path"],
        relativePath: json["relative_path"],
        isHighRes: json["is_high_res"],
      );

  Map<String, dynamic> toJson() => {
        "object_id": objectId == null ? null : objectId,
        "object_type":
            objectType == null ? null : sortByValues.reverse[objectType],
        "type": type == null ? null : areaValues.reverse[type],
        "image_path": imagePath,
        "alt": alt,
        "image_x": imageX,
        "image_y": imageY,
        "http_image_path": httpImagePath,
        "https_image_path": httpsImagePath,
        "absolute_path": absolutePath,
        "relative_path": relativePath,
        "is_high_res": isHighRes,
      };
}

enum IsPbp { Y }

final isPbpValues = EnumValues({"Y": IsPbp.Y});

enum Type { P }

final typeValues = EnumValues({"P": Type.P});

class ProductFeaturesClass {
  ProductFeaturesClass({
    this.the18,
  });

  The18 the18;

  factory ProductFeaturesClass.fromJson(Map<String, dynamic> json) =>
      ProductFeaturesClass(
        the18: The18.fromJson(json["18"]),
      );

  Map<String, dynamic> toJson() => {
        "18": the18.toJson(),
      };
}

class The18 {
  The18({
    this.featureId,
    this.value,
    this.valueInt,
    this.variantId,
    this.featureType,
    this.description,
    this.prefix,
    this.suffix,
    this.variant,
    this.parentId,
    this.displayOnHeader,
    this.displayOnCatalog,
    this.displayOnProduct,
    this.featureCode,
    this.featuresHash,
    this.variants,
  });

  String featureId;
  String value;
  dynamic valueInt;
  String variantId;
  String featureType;
  String description;
  String prefix;
  String suffix;
  String variant;
  String parentId;
  IsPbp displayOnHeader;
  AgeVerification displayOnCatalog;
  AgeVerification displayOnProduct;
  String featureCode;
  String featuresHash;
  Map<String, Variant> variants;

  factory The18.fromJson(Map<String, dynamic> json) => The18(
        featureId: json["feature_id"],
        value: json["value"],
        valueInt: json["value_int"],
        variantId: json["variant_id"],
        featureType: json["feature_type"],
        description: json["description"],
        prefix: json["prefix"],
        suffix: json["suffix"],
        variant: json["variant"],
        parentId: json["parent_id"],
        displayOnHeader: isPbpValues.map[json["display_on_header"]],
        displayOnCatalog: ageVerificationValues.map[json["display_on_catalog"]],
        displayOnProduct: ageVerificationValues.map[json["display_on_product"]],
        featureCode: json["feature_code"],
        featuresHash: json["features_hash"],
        variants: Map.from(json["variants"])
            .map((k, v) => MapEntry<String, Variant>(k, Variant.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "feature_id": featureId,
        "value": value,
        "value_int": valueInt,
        "variant_id": variantId,
        "feature_type": featureType,
        "description": description,
        "prefix": prefix,
        "suffix": suffix,
        "variant": variant,
        "parent_id": parentId,
        "display_on_header": isPbpValues.reverse[displayOnHeader],
        "display_on_catalog": ageVerificationValues.reverse[displayOnCatalog],
        "display_on_product": ageVerificationValues.reverse[displayOnProduct],
        "feature_code": featureCode,
        "features_hash": featuresHash,
        "variants": Map.from(variants)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class Variant {
  Variant({
    this.value,
    this.valueInt,
    this.variantId,
    this.variant,
    this.imagePairs,
  });

  String value;
  dynamic valueInt;
  String variantId;
  String variant;
  MainPair imagePairs;

  factory Variant.fromJson(Map<String, dynamic> json) => Variant(
        value: json["value"],
        valueInt: json["value_int"],
        variantId: json["variant_id"],
        variant: json["variant"],
        imagePairs: MainPair.fromJson(json["image_pairs"]),
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "value_int": valueInt,
        "variant_id": variantId,
        "variant": variant,
        "image_pairs": imagePairs.toJson(),
      };
}

enum ZeroPriceAction { R }

final zeroPriceActionValues = EnumValues({"R": ZeroPriceAction.R});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
