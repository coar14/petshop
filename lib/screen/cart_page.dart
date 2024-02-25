import 'package:flutter/material.dart';
import 'package:petshop/constant/bottom_navbar.dart';
import 'package:petshop/constant/list.dart';
import 'package:petshop/providers/cart_provider.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: cartProvider.getCartItemCount() == 0
          ? const Center(
              child: Text('Your shopping cart is empty.'),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cartProvider.getCartItemCount(),
                    itemBuilder: (context, index) {
                      final cartItem = cartProvider.cartItems[index];
                      return buildCartItem(context, cartItem);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Total:',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$${cartProvider.getTotalPrice().toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Confirm Checkout'),
                          content: const Text(
                              'Are you sure you want to proceed to checkout and clear your cart?'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // Close the dialog
                              },
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                Provider.of<CartProvider>(context,
                                        listen: false)
                                    .clearCart();
                                Navigator.of(context).pop(); // Close the dialog
                              },
                              child: const Text('Proceed'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent, // Background color
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Proceed to Checkout',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
      bottomNavigationBar: BottomNav(
        selectedIndex: 2,
        onTabTapped: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, '/home');
          } else if (index == 1) {
            Navigator.pushReplacementNamed(context, '/catalog');
          } else if (index == 2) {
            // Already on Cart screen, no need to navigate
          } else if (index == 3) {
            Navigator.pushReplacementNamed(context, '/profile');
          }
        },
      ),
    );
  }

  Widget buildCartItem(BuildContext context, Pet cartItem) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(cartItem.imagePath),
      ),
      title: Text(cartItem.name),
      subtitle: Text('\$${cartItem.price.toStringAsFixed(2)}'),
      trailing: IconButton(
        icon: const Icon(Icons.remove_circle),
        onPressed: () {
          Provider.of<CartProvider>(context, listen: false)
              .removeFromCart(cartItem);
        },
      ),
    );
  }
}
