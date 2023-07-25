import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'cart_details_view.dart';

class Product {
  final int id;
  final String title;
  final String description;
  final String imageUrl;
  final double price;
  late int quantity;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.quantity,
  });
}

final List<Product> _products = [
  Product(
    id: 1,
    title: "Apple IPhone 15",
    description:
        "This character description generator will generate a fairly random description of a belonging to a random race. However, some aspects of the descriptions will remain the same, this is done to keep the general structure the same, while still randomizing the important details. The generator does take into account which race is randomly picked, and changes some of the details accordingly. For example, if the character is an elf, they will have a higher chance of looking good and clean, they will, of course, have an elvish name, and tend to be related to more elvish related towns and people.",
    imageUrl: "assets/animated_list_app/images/inphon1.png",
    price: 1998.8,
    quantity: 1,
  ),
  Product(
    id: 2,
    title: "PlayStation 5",
    description:
        "This character description generator will generate a fairly random description of a belonging to a random race. However, some aspects of the descriptions will remain the same, this is done to keep the general structure the same, while still randomizing the important details. The generator does take into account which race is randomly picked, and changes some of the details accordingly. For example, if the character is an elf, they will have a higher chance of looking good and clean, they will, of course, have an elvish name, and tend to be related to more elvish related towns and people.",
    imageUrl: "assets/animated_list_app/images/ps_5.png",
    price: 1277.9,
    quantity: 1,
  ),
  Product(
    id: 3,
    title: "Adidas Shoes",
    description:
        "This character description generator will generate a fairly random description of a belonging to a random race. However, some aspects of the descriptions will remain the same, this is done to keep the general structure the same, while still randomizing the important details. The generator does take into account which race is randomly picked, and changes some of the details accordingly. For example, if the character is an elf, they will have a higher chance of looking good and clean, they will, of course, have an elvish name, and tend to be related to more elvish related towns and people.",
    imageUrl: "assets/animated_list_app/images/adidas.png",
    price: 45.0,
    quantity: 1,
  ),
  Product(
    id: 5,
    title: "Dunkin Donuts",
    description:
        "This character description generator will generate a fairly random description of a belonging to a random race. However, some aspects of the descriptions will remain the same, this is done to keep the general structure the same, while still randomizing the important details. The generator does take into account which race is randomly picked, and changes some of the details accordingly. For example, if the character is an elf, they will have a higher chance of looking good and clean, they will, of course, have an elvish name, and tend to be related to more elvish related towns and people.",
    imageUrl: "assets/animated_list_app/images/donuts.png",
    price: 123.5,
    quantity: 1,
  ),
  Product(
    id: 6,
    title: "Pizza",
    description:
        "This character description generator will generate a fairly random description of a belonging to a random race. However, some aspects of the descriptions will remain the same, this is done to keep the general structure the same, while still randomizing the important details. The generator does take into account which race is randomly picked, and changes some of the details accordingly. For example, if the character is an elf, they will have a higher chance of looking good and clean, they will, of course, have an elvish name, and tend to be related to more elvish related towns and people.",
    imageUrl: "assets/animated_list_app/images/pizza.png",
    price: 12.99,
    quantity: 1,
  ),
  Product(
    id: 7,
    title: "Pizza",
    description:
        "This character description generator will generate a fairly random description of a belonging to a random race. However, some aspects of the descriptions will remain the same, this is done to keep the general structure the same, while still randomizing the important details. The generator does take into account which race is randomly picked, and changes some of the details accordingly. For example, if the character is an elf, they will have a higher chance of looking good and clean, they will, of course, have an elvish name, and tend to be related to more elvish related towns and people.",
    imageUrl: "assets/animated_list_app/images/pizza.png",
    price: 12.99,
    quantity: 1,
  ),
  Product(
    id: 8,
    title: "Pizza",
    description:
        "This character description generator will generate a fairly random description of a belonging to a random race. However, some aspects of the descriptions will remain the same, this is done to keep the general structure the same, while still randomizing the important details. The generator does take into account which race is randomly picked, and changes some of the details accordingly. For example, if the character is an elf, they will have a higher chance of looking good and clean, they will, of course, have an elvish name, and tend to be related to more elvish related towns and people.",
    imageUrl: "assets/animated_list_app/images/pizza.png",
    price: 12.99,
    quantity: 1,
  ),
];
void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final List<Product> products = [..._products];
  final List<Product> cartItems = [];

  bool showCart = false;
  bool showDetails = false;
  double storeHeight = 770;

  void addToCart(Product product) {
    for (Product cartProduct in cartItems) {
      if (cartProduct.id == product.id) {
        cartProduct.quantity = product.quantity;
        return;
      }
    }
    print('add to cart');
    print(cartItems.length);

    setState(() {
      cartItems.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.sizeOf(context);

    return MaterialApp(
      title: 'Shopping Cart UI',
      // theme: ThemeData.light(),
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Clone Shopping Cart UI'),
        // ),
        body: GestureDetector(
          onTap: () {},
          onVerticalDragEnd: ((details) {
            if (details.primaryVelocity! < 0.0) {
              setState(() {
                showCart = !showCart;
              });
            }
          }),
          child: Container(
            // child: buildListCartWiget(),
            color: Colors.black,
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                AnimatedPositioned(
                  top: showCart ? 0 : mediaQuery.height,
                  curve: Curves.easeOutQuad,
                  duration: const Duration(milliseconds: 800),
                  child: GestureDetector(
                    onTap: () {},
                    onVerticalDragEnd: (details) {
                      if (details.primaryVelocity! > 0.0) {
                      setState(() {
                        showCart = !showCart;
                      });
                    }
                    },
                    child: Container(
                      height: mediaQuery.height,
                      width: mediaQuery.width,
                      // color: Colors.black,
                      child: buildListCartWiget(),
                    ),
                  ),
                ),
                AnimatedPositioned(
                  top: showCart ? -storeHeight :0,
                  bottom: showDetails
                      ? 0 
                      : showCart
                          ? storeHeight
                          : 120,
                  curve: Curves.easeOutQuad,
                  duration: const Duration(milliseconds: 500),
                  child: Container(
                    height: mediaQuery.height,
                    width: mediaQuery.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60),
                      ),
                    ),
                    child: buildListProductWidget(),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeOutQuad,
                  bottom: showDetails
                      ? -80
                      : showCart
                          ? storeHeight -80
                          :40,
                  child: GestureDetector(
                    onTap: () {
                      
                    },
                    onVerticalDragEnd: (details) {
                      if(details.primaryVelocity! <0.0){
                        setState(() {
                          showCart = !showCart;
                        });
                      }
                    },
                    child:  buildListIconCartWidget(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  Widget buildListIconCartWidget() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: Padding(
       padding: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                      // vertical: 16.0,
      ),
        child: Row(
          children: [
            Text(
              "Cart",
              style: GoogleFonts.lexendDeca().copyWith(
                fontSize: 26,
                color: Colors.white,
                // fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Hero(
                          tag: "${cartItems[index].id}cart",
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: SizedBox(
                              height: 30,
                              // assets/animated_list_app/images/adidas_logo.png
                              child: Image.asset(cartItems[index].imageUrl),
                            ),
                          ),
                        ),
                      );
                    })),
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.blue[700],
              child: Text(cartItems.isEmpty ? '0' : cartItems.length.toString(),
                  style: GoogleFonts.lexendDeca().copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListCartWiget() {
    // final List<Product> cartItems = [..._products];
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 180),
            // buildListIconCartWidget(),
            Expanded(
              child: cartItems.isEmpty
                  ? const Center(
                      child: Text(
                        'No items in cart',
                        style: TextStyle(fontSize: 24),
                      ),
                    )
                  : Column(
                      children: [
                        Expanded(
                          child: SizedBox(
                            child: ListView.builder(
                              itemCount: cartItems.length,
                              itemBuilder: (context, index) {
                                final Product product = cartItems[index];
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8.0,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        radius: 25,
                                        backgroundColor: Colors.white,
                                        child: SizedBox(
                                          height: 30,
                                          // assets/animated_list_app/images/adidas_logo.png
                                          child: Image.asset(product.imageUrl),
                                        ),
                                      ),
                                      const Spacer(),
                                      // SizedBox(width: 50,),
                                      Text(
                                        product.quantity.toString(),
                                        style: GoogleFonts.lexendDeca()
                                            .copyWith(
                                                color: Colors.white,
                                                fontSize: 16),
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        'x',
                                        style: GoogleFonts.lexendDeca()
                                            .copyWith(
                                                color: Colors.white,
                                                fontSize: 16),
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        product.title.toString(),
                                        style: GoogleFonts.lexendDeca()
                                            .copyWith(
                                                color: Colors.white,
                                                fontSize: 16),
                                      ),
                                      const Spacer(),
                                      Text(
                                        '\$ ',
                                        style: GoogleFonts.lexendDeca()
                                            .copyWith(
                                                color: Colors.white70,
                                                fontSize: 16),
                                      ),
                                      Text(
                                        product.price.toString(),
                                        style:
                                            GoogleFonts.lexendDeca().copyWith(
                                          color: Colors.white70,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: SizedBox(
                                height: 30,
                                // assets/animated_list_app/images/adidas_logo.png
                                child: Icon(
                                  Icons.delivery_dining,
                                  size: 35,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              'Delivery',
                              style: GoogleFonts.lexendDeca()
                                  .copyWith(color: Colors.white, fontSize: 16),
                            ),
                            const SizedBox(width: 35),
                            Text(
                              '\$ 20',
                              style: GoogleFonts.lexendDeca()
                                  .copyWith(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: GoogleFonts.lexendDeca().copyWith(
                                  color: Colors.white70, fontSize: 22),
                            ),
                            Text(
                              '\$ 2345.24',
                              style: GoogleFonts.lexendDeca()
                                  .copyWith(color: Colors.white, fontSize: 32),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blue[700],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              )),
                          child: SizedBox(
                            height: 50,
                            child: Center(
                              child: Text(
                                'Checkout',
                                style: GoogleFonts.lexendDeca().copyWith(
                                    color: Colors.black, fontSize: 16),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListProductWidget() {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Column(
        children: [
          SafeArea(
            bottom: false,
            child: Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              // color: Colors.amber,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      // Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      CupertinoIcons.back,
                      size: 25,
                    ),
                  ),
                  Text(
                    'Apple Store',
                    style: GoogleFonts.lexendDeca().copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    CupertinoIcons.square_list,
                    size: 25,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(60),
                topRight: Radius.circular(60),
              ),
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  // vertical: 16.0,
                ),
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 5.0,
                ),
                itemBuilder: (context, index) {
                  final Product product = products[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          transitionDuration:
                              const Duration(milliseconds: 500),
                          pageBuilder: (context, animation, _) {
                            return FadeTransition(
                              opacity: animation,
                              child: CartDetailsView(
                                product: products[index],
                                onAddProduct: (product) {
                                  addToCart(product);
                                },
                              ),
                            );
                          },
                        ),
                      );
                    },
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 0,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: SizedBox(
                                width: 140,
                                height: 140,
                                child: Hero(
                                  tag: product.id,
                                  child: Image.asset(
                                    product.imageUrl,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              '\$ ${product.price}',
                              style: GoogleFonts.lexendDeca().copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              product.title,
                              style: GoogleFonts.lexendDeca().copyWith(
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "500 gm",
                              style: GoogleFonts.quicksand().copyWith(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
