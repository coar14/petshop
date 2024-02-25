import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:google_fonts/google_fonts.dart';
import 'package:petshop/constant/bottom_navbar.dart';
import 'package:petshop/constant/productlist.dart';
import 'package:petshop/providers/cart_provider.dart';
import 'package:petshop/screen/cart_page.dart';
import 'package:provider/provider.dart';

class TextInputWidget extends StatefulWidget {
  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 335,
      decoration: BoxDecoration(
        color: Colors.grey[350],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const SizedBox(width: 10),
          const Icon(
            Icons.search_sharp,
            color: Colors.black,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                hintText: "Search product or brand",
                hintStyle: TextStyle(
                  color: Color(0xFF7C7C7C),
                  fontSize: 14,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "Store",
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            TextInputWidget(),
            const SizedBox(height: 10),
            Expanded(
              child: ProdList(),
            ),
          ],
        ),
      ),
      floatingActionButton: CartIconButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: BottomNav(
        // Replace BottomNavigationBar with BottomNav
        selectedIndex: 1, // Catalog screen is selected
        onTabTapped: (index) {
          // Handle navigation to different screens
          if (index == 0) {
            // Navigate to Home screen
          } else if (index == 1) {
            // Already on Catalog screen
          } else if (index == 2) {
            // Navigate to Cart screen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CartScreen(),
              ),
            );
          } else if (index == 3) {
            // Navigate to Profile screen
          }
        },
      ),
    );
  }
}

class CartIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return badges.Badge(
      badgeContent: Text(
        cartProvider.getCartItemCount().toString(),
        style: TextStyle(color: Colors.white),
      ),
      position: badges.BadgePosition.topEnd(top: 5, end: 5),
      child: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CartScreen(),
            ),
          );
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}
