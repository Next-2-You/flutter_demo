class ProductItemModal{
  String desc;//产品描述
  String type;//产品类型
  String name;//名称
  String imageUrl;
  String point;

  ProductItemModal({
    this.desc,
    this.imageUrl,
    this.name,
    this.type,
    this.point
});

  factory ProductItemModal.fromJson(dynamic json){
    return ProductItemModal(
      desc: json['desc'],
      type: json['type'],
      name: json['name'],
      imageUrl: json['imageUrl'],
      point: json['point']
    );
  }
}

class ProductListModal{

  List<ProductItemModal> data;
  ProductListModal(this.data);

  factory ProductListModal.fromJson(List json){
    return ProductListModal(
      json.map((i) => ProductItemModal.fromJson((i))).toList()
    );
  }
}