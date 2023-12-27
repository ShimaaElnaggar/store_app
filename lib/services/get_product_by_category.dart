
import 'package:store/helper/api.dart';
import 'package:store/models/produt_model.dart';
class CategoryService{
  Future<List<ProductModel>> getCategory({required String cityName}) async
  {
    List<dynamic> data = await Api().get(url:"https://fakestoreapi.com/products/category/$cityName");


  List<ProductModel> productList = [];

  for (int i = 0; i < data.length; i++) {
    productList.add(ProductModel.fromJson(data[i]));
  }
  return productList;

  }
  }
