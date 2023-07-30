

class Product  {
  final int id;
  final String category;
  final String name;
  final int price;
  final int quantity;

  Product(this.id, this.category, this.name, this.price, this.quantity);

  @override
  String toString(){
    return "$id $category $name $price рублей $quantity шт. \n";
  }
 
  
}


abstract class Filter {
   apply (List<Product> products) { 
  } 
}

class CategoryFilter implements Filter{

  final String category;

  CategoryFilter (this.category);
  
  @override
  List<Product> apply(List<Product> products) {
    return products.where((e) => e.category == category).toList();
  }
}


class PriceFilter implements Filter {

  final int price;

  PriceFilter (this.price);

  @override
  apply(List<Product> products) {

   return products.where((e) => e.price <= price).toList();
    
  }

}


class QuantityFilter implements Filter {

  final int quantity;


  QuantityFilter(this.quantity);
  
  @override
  apply(List<Product> products) {
   return products.where((e) => e.quantity < quantity).toList();
  }

}



void main () {
  final products =[
   Product(1, 'хлеб', 'Бородинский', 500, 5),
   Product(2, 'хлеб', 'Белый', 200, 15),
   Product(3, 'молоко', 'Полосатый кот', 50, 53),
   Product(4, 'молоко', 'Коровка', 50, 53),
   Product(5, 'вода', 'Апельсин', 25, 100),
   Product(6, 'вода', 'Бородинский', 500, 5),
  ];

  applyFilter (List list, Filter filter) {
 return filter.apply(products);
}

final resultCategory = applyFilter(products, CategoryFilter('вода'));

print(resultCategory);

final resultPrice = applyFilter(products, PriceFilter(25));
print(resultPrice);

final resultQuantity = applyFilter(products, QuantityFilter(50));
print(resultQuantity);

}