import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:ham_app/models/cart_item.dart';
import 'package:intl/intl.dart';
import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    Food(
      name: "Cheseburger Deluxe",
      description:
          "Tender beef, fresh tomatoes, and crunchy pickles blend together in each bite.",
      imagePath: "lib/image/hamburger/ham1.png",
      price: 0.99,
      category: FoodCategory.burger,
      availableAddons: [
        Addon(name: "Extra Chese", price: 0.99),
        Addon(name: "Bacon", price: 2.99),
        Addon(name: "Extra Chese", price: 1.99),
      ],
    ),
    Food(
      name: "Double CheseBurger",
      description:
          "A fantastic combination of tender grilled chicken and the distinctive flavor of BBQ sauce",
      imagePath: "lib/image/hamburger/ham2.png",
      price: 1.22,
      category: FoodCategory.burger,
      availableAddons: [
        Addon(name: "Grilled Onions", price: 1.56),
        Addon(name: "Bacon", price: 5.15),
        Addon(name: "Extra BBQ", price: 6.22),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description:
          "For those who prefer a vegetarian lifestyle, our kale burger is the perfect choice",
      imagePath: "lib/image/hamburger/ham3.png",
      price: 5.57,
      category: FoodCategory.burger,
      availableAddons: [
        Addon(name: "Vegan Chese", price: 0.99),
        Addon(name: "Grilled Mushrooms", price: 3.42),
        Addon(name: "Extra Chese", price: 1.99),
      ],
    ),
    Food(
      name: "Aloha Burger",
      description:
          "The unique flavor of savory portobello mushrooms blends with melted cheese and fresh greens, creating a distinctive and delicious burger",
      imagePath: "lib/image/hamburger/ham4.png",
      price: 6.45,
      category: FoodCategory.burger,
      availableAddons: [
        Addon(name: "Terset Chese", price: 5.43),
        Addon(name: "Extra Pineapple", price: 8.45),
        Addon(name: "Bacon", price: 0.99),
      ],
    ),
    Food(
      name: "Blue Moon Burger",
      description:
          "The salmon burger offers a luxurious and nutritious culinary experience for seafood lovers.",
      imagePath: "lib/image/hamburger/ham5.png",
      price: 10.56,
      category: FoodCategory.burger,
      availableAddons: [
        Addon(name: "Fried Egg", price: 7.55),
        Addon(name: "Spicy Mayo", price: 8.99),
        Addon(name: "Extra Chese", price: 1.99),
      ],
    ),
    // salads
    Food(
      name: "Caesar Salad",
      description:
          "A classic Caesar salad featuring crisp romaine lettuce, crunchy croutons, tangy Caesar dressing, and grated Parmesan cheese",
      imagePath: "lib/image/salads/salads1.jpg",
      price: 3.57,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 10.99),
        Addon(name: "Anchovies", price: 1.49),
        Addon(name: "Extra Parmesan", price: 6.17),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "The Greek salad offers a refreshing mix of crisp lettuce, juicy tomatoes, cucumber slices, briny Kalamata olives, and tangy feta cheese, drizzled with a zesty lemon-oregano dressing",
      imagePath: "lib/image/salads/salads2.jpg",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Chese", price: 6.22),
        Addon(name: "Bacon", price: 4.79),
        Addon(name: "Extra Chese", price: 5.60),
      ],
    ),
    Food(
      name: "Quinoa Salads",
      description:
          "A simple yet elegant Caprese salad showcasing slices of ripe tomatoes, fresh mozzarella cheese, and fragrant basil leaves, drizzled with extra virgin olive oil and balsamic glaze",
      imagePath: "lib/image/salads/salads3.jpg",
      price: 7.56,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Avocado", price: 0.99),
        Addon(name: "Feta Chese", price: 2.99),
        Addon(name: "Grilles Chicken", price: 1.99),
      ],
    ),
    Food(
      name: "Asian Sesame Salads",
      description:
          "The Cobb salad is a hearty ensemble of mixed greens, grilled chicken breast, crispy bacon, hard-boiled eggs, ripe avocado, juicy tomatoes, and crumbled blue cheese, served with a creamy ranch dressing",
      imagePath: "lib/image/salads/salads4.jpg",
      price: 1.54,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Bacon", price: 1.35),
        Addon(name: "Extra Chicken", price: 4.32),
        Addon(name: "Avonia", price: 12.67),
      ],
    ),
    Food(
      name: "Thai Beef Salad",
      description:
          "A vibrant Thai beef salad featuring tender slices of grilled beef, crisp mixed greens, sliced red onions, cherry tomatoes, cucumber, and fresh herbs, tossed in a tangy-sweet dressing made with lime juice, fish sauce, and chili",
      imagePath: "lib/image/salads/salads5.jpg",
      price: 4.34,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Sour Cream", price: 0.99),
        Addon(name: "Pico de Gallo", price: 1.99),
        Addon(name: "Extra Chese", price: 5.99),
      ],
    ),

    //sides
    Food(
      name: "Sweet Potato Fries",
      description:
          "Crispy golden fries tossed in a savory blend of minced garlic, grated Parmesan cheese, and chopped parsley, offering a flavorful twist on the classic side.",
      imagePath: "lib/image/sides/side1.jpg",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Chese Sauce", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Extra Chese", price: 1.99),
      ],
    ),
    Food(
      name: "Onion Rings",
      description:
          "Tender Brussel sprouts roasted to perfection with olive oil, garlic, and a sprinkle of sea salt, resulting in a caramelized exterior and a deliciously nutty flavor.",
      imagePath: "lib/image/sides/side2.jpg",
      price: 3.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Ranch Dip", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Extra Chese", price: 1.99),
      ],
    ),
    Food(
      name: "Garlich Bread",
      description:
          "Oven-baked sweet potato wedges seasoned with a mix of cinnamon, paprika, and a touch of brown sugar, delivering a delightful balance of sweet and savory flavors.",
      imagePath: "lib/image/sides/side3.jpg",
      price: 5.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Galic", price: 0.99),
        Addon(name: "Mozzarella Chese", price: 1.49),
        Addon(name: "Marinara Dip", price: 1.99),
      ],
    ),
    Food(
      name: "Loaded Sweet Potato Fries",
      description:
          "A refreshing coleslaw salad made with finely shredded cabbage, grated carrots, and creamy dressing, offering a crisp texture and a hint of tanginess.",
      imagePath: "lib/image/sides/side4.jpg",
      price: 4.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Sour Scream", price: 0.99),
        Addon(name: "Bacon Bits", price: 1.49),
        Addon(name: "Green Onion", price: 1.99),
      ],
    ),
    Food(
      name: "Crispy Mac & Cheese Bites",
      description:
          "Juicy ears of corn grilled to perfection and brushed with melted butter, sprinkled with a pinch of salt and freshly ground black pepper, offering a smoky sweetness with every bite.",
      imagePath: "lib/image/sides/side5.jpg",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Bacon Bits", price: 0.99),
        Addon(name: "Slices", price: 1.49),
        Addon(name: "Sriracha Drizzle", price: 1.99),
      ],
    ),

    //desserts
    Food(
      name: "Chocolate Brownie",
      description:
          "Indulge in the rich decadence of a warm chocolate lava cake, with a molten center that oozes out upon the first bite.",
      imagePath: "lib/image/desserts/des1.jpg",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whipper Cream", price: 1.99),
      ],
    ),
    Food(
      name: "Cheesecake",
      description:
          "Savor the creamy richness of a classic New York-style cheesecake, with a buttery graham cracker crust and a smooth, velvety filling",
      imagePath: "lib/image/desserts/des2.jpg",
      price: 6.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry Topping", price: 0.99),
        Addon(name: "Blueberry Compote", price: 1.49),
        Addon(name: "Chocolate Chips", price: 1.99),
      ],
    ),
    Food(
      name: "Apple Pie",
      description:
          "Delight in the layers of espresso-soaked ladyfingers and creamy mascarpone cheese, dusted with cocoa powder for a touch of bitterness and richness",
      imagePath: "lib/image/desserts/des3.jpg",
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Camamel Sauce", price: 0.99),
        Addon(name: "Vanilla Ice Cream", price: 1.49),
        Addon(name: "Cinnamon Spice", price: 1.99),
      ],
    ),
    Food(
      name: "Red Velvet Lava Cake",
      description:
          "Enjoy a medley of fresh seasonal fruits atop a buttery pastry crust filled with smooth pastry cream",
      imagePath: "lib/image/desserts/des4.jpg",
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Raspberry Sauce", price: 0.99),
        Addon(name: "Cream Cheese Icing", price: 1.49),
        Addon(name: "Extra Chese", price: 1.99),
      ],
    ),
    Food(
      name: "Key Lime Pie",
      description:
          "Transport yourself to the sunny shores of Florida with a tangy and refreshing key lime pie. Made with a zesty lime filling and a buttery graham cracker crust",
      imagePath: "lib/image/desserts/des5.jpg",
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Chese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Extra Chese", price: 1.99),
      ],
    ),

    //drinks

    Food(
      name: "Lemonnade",
      description:
          "Refresh yourself with the vibrant green hues and earthy flavors of an iced matcha latte",
      imagePath: "lib/image/drinks/drinks1.jpg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Strawberry Flavor", price: 0.99),
        Addon(name: "Mint Leavers", price: 2.99),
        Addon(name: "Ginger Zest", price: 1.99),
      ],
    ),
    Food(
      name: "Iced Tea",
      description:
          "Transport yourself to tropical paradise with a creamy and refreshing mango lassi.",
      imagePath: "lib/image/drinks/drinks2.jpg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Peach Flavor", price: 0.99),
        Addon(name: "Lemon slices", price: 2.99),
        Addon(name: "Honey", price: 1.99),
      ],
    ),
    Food(
      name: "Classic Mojito",
      description:
          "Enjoy the crisp and invigorating flavors of a classic mojito",
      imagePath: "lib/image/drinks/drinks3.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Protein Powder", price: 0.99),
        Addon(name: "Milk", price: 2.99),
        Addon(name: "Cheese", price: 1.99),
      ],
    ),
    Food(
      name: "Iced Caramel Macchiato",
      description:
          "Treat yourself to the indulgent flavors of an iced caramel macchiato",
      imagePath: "lib/image/drinks/drinks4.jpg",
      price: 3.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Mint", price: 0.99),
        Addon(name: "Raspberry Puree", price: 2.99),
        Addon(name: "Extra Chese", price: 1.99),
      ],
    ),
    Food(
      name: "Watermelon Agua Fresca",
      description:
          "Quench your thirst with the light and hydrating taste of watermelon agua fresca",
      imagePath: "lib/image/drinks/drinks5.jpg",
      price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Shot of Espresso", price: 0.99),
        Addon(name: "Hazelnut Syrup", price: 0.49),
        Addon(name: "Whipper Cream", price: 1.99),
      ],
    ),
  ];
  String _deliveryAddress = 'Quang Ngai';
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  final List<CartItem> _cart = [];

  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool IsSameFood = item.food == food;
      bool IsSameAddons =
          ListEquality().equals(item.selectAddons, selectedAddons);
      return IsSameFood && IsSameAddons;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(food: food, selectAddons: selectedAddons),
      );
    }
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (_cart[cartIndex].quantity > 1) {
      _cart[cartIndex].quantity--;
    } else {
      _cart.removeAt(cartIndex);
    }
    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  void updateDeliveryAddress(String address) {
    _deliveryAddress = address;
    notifyListeners();
  }

  int get cartItemCount {
    return cart.fold<int>(0, (total, cartItem) => total + cartItem.quantity);
  }

  String displayCardReceipt() {
    final receipt = StringBuffer();
    receipt.write("Here's your receipt");
    receipt.writeln();
    receipt.writeln();
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("------------------------------------------");
    receipt.writeln();
    for (final cardItem in _cart) {
      receipt.writeln(
          "${cardItem.quantity} x ${cardItem.food.name} - ${_formatPrice(cardItem.food.price)}");
      receipt.writeln();
      if (cardItem.selectAddons.isNotEmpty) {
        receipt.writeln("Add-ons: ${_formatAddons(cardItem.selectAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("------------------------------------------");
    receipt.writeln("");
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln("");
    receipt.writeln("Delivering to: $deliveryAddress");
    return receipt.toString();
  }

  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
