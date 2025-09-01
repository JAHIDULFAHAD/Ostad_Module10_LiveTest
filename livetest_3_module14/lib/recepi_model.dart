class RecepiModel{
  late String title;
  late String description;
  late List<String> ingredients;

  RecepiModel.fromJson(Map<String,dynamic> recepijson){
    title = recepijson['title'];
    description = recepijson['description'];
    ingredients = List<String>.from(recepijson['ingredients']);
  }

}