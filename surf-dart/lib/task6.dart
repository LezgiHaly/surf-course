
// Класс товара
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

// интерфейс 
abstract class Filter {

   bool apply(Product products);
}

// фильтрация по категорям
class CategoryFilter implements Filter{

  final String category;

  CategoryFilter (this.category);
  
  @override
  bool apply(Product products) {
    return products.category == category;
  }
}

// фильрация по цене
class PriceFilter implements Filter {

  final int price;

  PriceFilter (this.price);

  @override
   bool apply(Product products) {
    return products.price <= price;
  }

}

// фильтрация по количеству на складе 
class QuantityFilter implements Filter {

  final int quantity;
  QuantityFilter(this.quantity);
    @override
  bool apply(Product products) {
   return products.quantity < quantity;
  }
}

// фильтрация списка
 void applyFilter(List<Product> products, Filter filter) {
  final filteredProducts = products.where((e) => filter.apply(e));
  print(filteredProducts);
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

applyFilter(products, CategoryFilter('вода'));

applyFilter(products, PriceFilter(25));

applyFilter(products, QuantityFilter(50));

}