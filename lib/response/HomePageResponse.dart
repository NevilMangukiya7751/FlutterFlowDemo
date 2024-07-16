// To parse this JSON data, do
//
//     final homepageResponses = homepageResponsesFromJson(jsondynamic);

import 'dart:convert';

HomepageResponses homepageResponsesFromJson(dynamic str) =>
    HomepageResponses.fromJson(json.decode(str));

dynamic homepageResponsesToJson(HomepageResponses data) =>
    json.encode(data.toJson());

class HomepageResponses {
  bool success;
  ContentTop contentTop;
  ContentBottom contentBottom;

  HomepageResponses({
    required this.success,
    required this.contentTop,
    required this.contentBottom,
  });

  factory HomepageResponses.fromJson(dynamic json) => HomepageResponses(
        success: json["success"],
        contentTop: ContentTop.fromJson(json["content_top"]),
        contentBottom: ContentBottom.fromJson(json["content_bottom"]),
      );

  dynamic toJson() => {
        "success": success,
        "content_top": contentTop.toJson(),
        "content_bottom": contentBottom.toJson(),
      };
}

class ContentBottom {
  List<ContentBottomModule> modules;

  ContentBottom({
    required this.modules,
  });

  factory ContentBottom.fromJson(dynamic json) => ContentBottom(
        modules: List<ContentBottomModule>.from(
            json["modules"].map((x) => ContentBottomModule.fromJson(x))),
      );

  dynamic toJson() => {
        "modules": List<dynamic>.from(modules.map((x) => x.toJson())),
      };
}

class ContentBottomModule {
  dynamic path;
  PurpleSettings settings;
  List<dynamic> data;

  ContentBottomModule({
    required this.path,
    required this.settings,
    required this.data,
  });

  factory ContentBottomModule.fromJson(dynamic json) => ContentBottomModule(
        path: json["path"],
        settings: PurpleSettings.fromJson(json["settings"]),
        data: List<dynamic>.from(json["data"].map((x) => x)),
      );

  dynamic toJson() => {
        "path": path,
        "settings": settings.toJson(),
        "data": List<dynamic>.from(data.map((x) => x)),
      };
}

class PurpleSettings {
  dynamic name;
  dynamic popup;
  dynamic status;
  dynamic moduleId;

  PurpleSettings({
    required this.name,
    required this.popup,
    required this.status,
    required this.moduleId,
  });

  factory PurpleSettings.fromJson(dynamic json) => PurpleSettings(
        name: json["name"],
        popup: json["popup"],
        status: json["status"],
        moduleId: json["module_id"],
      );

  dynamic toJson() => {
        "name": name,
        "popup": popup,
        "status": status,
        "module_id": moduleId,
      };
}

class ContentTop {
  List<ContentTopModule> modules;

  ContentTop({
    required this.modules,
  });

  factory ContentTop.fromJson(dynamic json) => ContentTop(
        modules: List<ContentTopModule>.from(
            json["modules"].map((x) => ContentTopModule.fromJson(x))),
      );

  dynamic toJson() => {
        "modules": List<dynamic>.from(modules.map((x) => x.toJson())),
      };
}

class ContentTopModule {
  dynamic path;
  FluffySettings settings;
  dynamic data;

  ContentTopModule({
    required this.path,
    required this.settings,
    required this.data,
  });

  factory ContentTopModule.fromJson(dynamic json) => ContentTopModule(
        path: json["path"],
        settings: FluffySettings.fromJson(json["settings"]),
        data: json["data"],
      );

  dynamic toJson() => {
        "path": path,
        "settings": settings.toJson(),
        "data": data,
      };
}

class DataClass {
  List<Banner>? banners;
  dynamic products;
  List<Category>? categories;
  List<Testimonial>? testimonials;
  List<Article>? articles;

  DataClass({
    this.banners,
    this.products,
    this.categories,
    this.testimonials,
    this.articles,
  });

  factory DataClass.fromJson(dynamic json) => DataClass(
        banners: json["banners"] == null
            ? []
            : List<Banner>.from(
                json["banners"]!.map((x) => Banner.fromJson(x))),
        products: json["products"],
        categories: json["categories"] == null
            ? []
            : List<Category>.from(
                json["categories"]!.map((x) => Category.fromJson(x))),
        testimonials: json["testimonials"] == null
            ? []
            : List<Testimonial>.from(
                json["testimonials"]!.map((x) => Testimonial.fromJson(x))),
        articles: json["articles"] == null
            ? []
            : List<Article>.from(
                json["articles"]!.map((x) => Article.fromJson(x))),
      );

  dynamic toJson() => {
        "banners": banners == null
            ? []
            : List<dynamic>.from(banners!.map((x) => x.toJson())),
        "products": products,
        "categories": categories == null
            ? []
            : List<dynamic>.from(categories!.map((x) => x.toJson())),
        "testimonials": testimonials == null
            ? []
            : List<dynamic>.from(testimonials!.map((x) => x.toJson())),
        "articles": articles == null
            ? []
            : List<dynamic>.from(articles!.map((x) => x.toJson())),
      };
}

class Article {
  dynamic articleId;
  dynamic articleAuthor;
  dynamic image;
  dynamic thumb;
  dynamic name;
  dynamic introText;
  dynamic href;
  dynamic date;
  dynamic day;
  dynamic year;
  dynamic month;

  Article({
    required this.articleId,
    required this.articleAuthor,
    required this.image,
    required this.thumb,
    required this.name,
    required this.introText,
    required this.href,
    required this.date,
    required this.day,
    required this.year,
    required this.month,
  });

  factory Article.fromJson(dynamic json) => Article(
        articleId: json["article_id"],
        articleAuthor: json["article_author"],
        image: json["image"],
        thumb: json["thumb"],
        name: json["name"],
        introText: json["intro_text"],
        href: json["href"],
        date: json["date"],
        day: json["day"],
        year: json["year"],
        month: json["month"],
      );

  dynamic toJson() => {
        "article_id": articleId,
        "article_author": articleAuthor,
        "image": image,
        "thumb": thumb,
        "name": name,
        "intro_text": introText,
        "href": href,
        "date": date,
        "day": day,
        "year": year,
        "month": month,
      };
}

class Banner {
  dynamic title;
  dynamic link;
  dynamic image;

  Banner({
    required this.title,
    required this.link,
    required this.image,
  });

  factory Banner.fromJson(dynamic json) => Banner(
        title: json["title"],
        link: json["link"],
        image: json["image"],
      );

  dynamic toJson() => {
        "title": title,
        "link": link,
        "image": image,
      };
}

class Category {
  dynamic categoryId;
  dynamic name;
  dynamic banner;
  dynamic href;

  Category({
    required this.categoryId,
    required this.name,
    required this.banner,
    required this.href,
  });

  factory Category.fromJson(dynamic json) => Category(
        categoryId: json["category_id"],
        name: json["name"],
        banner: json["banner"],
        href: json["href"],
      );

  dynamic toJson() => {
        "category_id": categoryId,
        "name": name,
        "banner": banner,
        "href": href,
      };
}

class Product {
  dynamic productId;
  dynamic thumb;
  dynamic name;
  dynamic description;
  dynamic price;
  dynamic special;
  dynamic tax;
  dynamic minimum;
  dynamic rating;
  dynamic href;

  Product({
    required this.productId,
    required this.thumb,
    required this.name,
    required this.description,
    required this.price,
    required this.special,
    required this.tax,
    required this.minimum,
    required this.rating,
    required this.href,
  });

  factory Product.fromJson(dynamic json) => Product(
        productId: json["product_id"],
        thumb: json["thumb"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        special: json["special"],
        tax: json["tax"],
        minimum: json["minimum"],
        rating: json["rating"],
        href: json["href"],
      );

  dynamic toJson() => {
        "product_id": productId,
        "thumb": thumb,
        "name": name,
        "description": description,
        "price": price,
        "special": special,
        "tax": tax,
        "minimum": minimum,
        "rating": rating,
        "href": href,
      };
}

class ProductsClass {
  List<Bestseller> latest;
  List<Bestseller> bestseller;
  List<Featured> featured;

  ProductsClass({
    required this.latest,
    required this.bestseller,
    required this.featured,
  });

  factory ProductsClass.fromJson(dynamic json) => ProductsClass(
        latest: List<Bestseller>.from(
            json["latest"].map((x) => Bestseller.fromJson(x))),
        bestseller: List<Bestseller>.from(
            json["bestseller"].map((x) => Bestseller.fromJson(x))),
        featured: List<Featured>.from(
            json["featured"].map((x) => Featured.fromJson(x))),
      );

  dynamic toJson() => {
        "latest": List<dynamic>.from(latest.map((x) => x.toJson())),
        "bestseller": List<dynamic>.from(bestseller.map((x) => x.toJson())),
        "featured": List<dynamic>.from(featured.map((x) => x.toJson())),
      };
}

class Bestseller {
  dynamic productId;
  dynamic thumb;
  dynamic name;
  dynamic description;
  dynamic price;
  dynamic special;
  dynamic tax;
  dynamic minimum;
  dynamic rating;
  dynamic href;

  Bestseller({
    required this.productId,
    required this.thumb,
    required this.name,
    required this.description,
    required this.price,
    required this.special,
    required this.tax,
    required this.minimum,
    required this.rating,
    required this.href,
  });

  factory Bestseller.fromJson(dynamic json) => Bestseller(
        productId: json["product_id"],
        thumb: json["thumb"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        special: json["special"],
        tax: json["tax"],
        minimum: json["minimum"],
        rating: json["rating"],
        href: json["href"],
      );

  dynamic toJson() => {
        "product_id": productId,
        "thumb": thumb,
        "name": name,
        "description": description,
        "price": price,
        "special": special,
        "tax": tax,
        "minimum": minimum,
        "rating": rating,
        "href": href,
      };
}

class Featured {
  dynamic productId;
  dynamic thumb;
  dynamic name;
  dynamic description;
  dynamic price;
  dynamic special;
  dynamic tax;
  dynamic minimum;
  int rating;
  dynamic href;

  Featured({
    required this.productId,
    required this.thumb,
    required this.name,
    required this.description,
    required this.price,
    required this.special,
    required this.tax,
    required this.minimum,
    required this.rating,
    required this.href,
  });

  factory Featured.fromJson(dynamic json) => Featured(
        productId: json["product_id"],
        thumb: json["thumb"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        special: json["special"],
        tax: json["tax"],
        minimum: json["minimum"],
        rating: json["rating"],
        href: json["href"],
      );

  dynamic toJson() => {
        "product_id": productId,
        "thumb": thumb,
        "name": name,
        "description": description,
        "price": price,
        "special": special,
        "tax": tax,
        "minimum": minimum,
        "rating": rating,
        "href": href,
      };
}

class Testimonial {
  dynamic customerName;
  dynamic image;
  dynamic content;

  Testimonial({
    required this.customerName,
    required this.image,
    required this.content,
  });

  factory Testimonial.fromJson(dynamic json) => Testimonial(
        customerName: json["customer_name"],
        image: json["image"],
        content: json["content"],
      );

  dynamic toJson() => {
        "customer_name": customerName,
        "image": image,
        "content": content,
      };
}

class FluffySettings {
  dynamic name;
  dynamic bannerId;
  dynamic effect;
  dynamic items;
  dynamic controls;
  dynamic indicators;
  dynamic interval;
  dynamic width;
  dynamic height;
  dynamic status;
  dynamic moduleId;
  dynamic moduleDescription;
  dynamic featuredProducts;
  dynamic latestProducts;
  dynamic bestsellerProducts;
  var product;
  dynamic limit;
  dynamic rows;
  dynamic itemsRows;
  dynamic title;
  var category;
  dynamic axis;
  dynamic dateFormat;

  FluffySettings({
    required this.name,
    this.bannerId,
    this.effect,
    this.items,
    this.controls,
    this.indicators,
    this.interval,
    this.width,
    this.height,
    required this.status,
    required this.moduleId,
    this.moduleDescription,
    this.featuredProducts,
    this.latestProducts,
    this.bestsellerProducts,
    this.product,
    this.limit,
    this.rows,
    this.itemsRows,
    this.title,
    this.category,
    this.axis,
    this.dateFormat,
  });

  factory FluffySettings.fromJson(dynamic json) => FluffySettings(
        name: json["name"],
        bannerId: json["banner_id"],
        effect: json["effect"],
        items: json["items"],
        controls: json["controls"],
        indicators: json["indicators"],
        interval: json["interval"],
        width: json["width"],
        height: json["height"],
        status: json["status"],
        moduleId: json["module_id"],
        moduleDescription: json["module_description"],
        featuredProducts: json["featured_products"],
        latestProducts: json["latest_products"],
        bestsellerProducts: json["bestseller_products"],
        product: json["product"] == null
            ? []
            : List<dynamic>.from(json["product"]!.map((x) => x)),
        limit: json["limit"],
        rows: json["rows"],
        itemsRows: json["items_rows"],
        title: json["title"],
        category: json["category"] == null
            ? []
            : List<dynamic>.from(json["category"]!.map((x) => x)),
        axis: json["axis"],
        dateFormat: json["date_format"],
      );

  dynamic toJson() => {
        "name": name,
        "banner_id": bannerId,
        "effect": effect,
        "items": items,
        "controls": controls,
        "indicators": indicators,
        "interval": interval,
        "width": width,
        "height": height,
        "status": status,
        "module_id": moduleId,
        "module_description": Map.from(moduleDescription!)
            .map((k, v) => MapEntry<dynamic, dynamic>(k, v.toJson())),
        "featured_products": featuredProducts,
        "latest_products": latestProducts,
        "bestseller_products": bestsellerProducts,
        "product":
            product == null ? [] : List<dynamic>.from(product!.map((x) => x)),
        "limit": limit,
        "rows": rows,
        "items_rows": itemsRows,
        "title": title?.toJson(),
        "category":
            category == null ? [] : List<dynamic>.from(category!.map((x) => x)),
        "axis": axis,
        "date_format": dateFormat,
      };
}

class ModuleDescription {
  dynamic title;
  dynamic description;

  ModuleDescription({
    required this.title,
    required this.description,
  });

  factory ModuleDescription.fromJson(dynamic json) => ModuleDescription(
        title: json["title"],
        description: json["description"],
      );

  dynamic toJson() => {
        "title": title,
        "description": description,
      };
}
