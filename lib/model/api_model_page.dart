class api_model {
  int? id;
  String? titel;
  String? description;
  int? price;
  int? stock;
  String? category;
  List? img;

  api_model({required this.id,
    required this.titel,
    required this.description,
    required this.price,
    required this.stock,
    required this.category,
    required this.img});


  factory api_model.api_model(Map data){
    return api_model(id: data['id'],
        titel: data['titel'],
        description: data['description'],
        price: data['price'],
        stock: data['stock'],
        category: data['category'],
        img: data['img']);
  }
}
