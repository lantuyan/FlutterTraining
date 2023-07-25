import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:google_fonts/google_fonts.dart';

class CartDetailsView extends StatefulWidget {
  const CartDetailsView(
      {required this.product, required this.onAddProduct, super.key});

  final Product product;

  final Function(Product product) onAddProduct;

  @override
  State<CartDetailsView> createState() => _CartDetailsViewState();
}

class _CartDetailsViewState extends State<CartDetailsView> {
  late String heroTage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            // vertical: 24,
          ),
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              SizedBox(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SafeArea(
                        child: SizedBox(
                          height: 350,
                          width: 350,
                          child: Hero(
                            tag: "${widget.product.id}$heroTage",
                            child: Image.asset(
                              widget.product.imageUrl,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        widget.product.title,
                        style: GoogleFonts.lexendDeca(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "500 g",
                        style: GoogleFonts.quicksand().copyWith(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(25),
                              ),
                              border: Border.all(
                                color: Colors.grey.shade500,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      widget.product.quantity--;
                                    });
                                  },
                                  icon: const Icon(Icons.remove),
                                ),
                                Text(
                                  '${widget.product.quantity}',
                                  style: GoogleFonts.lexendDeca(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      widget.product.quantity++;
                                    });
                                    
                                  },
                                  icon: const Icon(Icons.add),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "\$ ${widget.product.price}",
                            style: GoogleFonts.lexendDeca(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'About The Product:',
                        style: GoogleFonts.lexendDeca(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        widget.product.description,
                        style: GoogleFonts.lexendDeca(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      const SizedBox(height: 180),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 120,
                child: Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      // top: 50.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 24),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Colors.blue.shade800,
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                          ),
                          ),
                          onPressed: () {
                            setState(() {
                              heroTage = "cart";
                            });
                            widget.onAddProduct(widget.product);
                            Navigator.of(context).pop('Yes');
                          },
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.sizeOf(context).width /2,
                            child: Center(
                              child: Text(
                                'Add to Cart',
                                style: GoogleFonts.lexendDeca(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ), 
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
