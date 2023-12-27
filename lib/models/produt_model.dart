class ProductModel{
  final dynamic id;
  final String title;
  final dynamic price;
  final String description;
  final String category;
  final String image;
  final RatingModel ratingModel;

  ProductModel({
    required this.ratingModel,
    required this.id,
    required this.title,
    required this.image,
    required this.category,
    required this.description,
    required this.price,
  });

  factory ProductModel.fromJson(jsonData){
  return ProductModel(
      id: jsonData["id"],
      title: jsonData["title"],
      price: jsonData["price"],
      description: jsonData["description"],
      category: jsonData["category"],
      image: jsonData["image"],
      ratingModel: RatingModel.fromJson(jsonData["rating"]),
  );
  }
}

class RatingModel{
  final double rate;
  final int count;

  RatingModel({required this.rate,required this.count});

  factory RatingModel.fromJson(jsonData){
    return RatingModel(
        rate: jsonData["rate"],
        count: jsonData["count"]);
  }
}