import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_flutter/cart_provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartProvider>().cart;

    return Scaffold(
      appBar: AppBar(
        title: Text('Cart', style: Theme.of(context).badgeTheme.textStyle),
        centerTitle: true,
      ),

      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          final cartItem = cart[index];

          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(cartItem['imageUrl'] as String),
            ),
            title: Text(
              cartItem['title'].toString(),

              style: Theme.of(context).textTheme.titleMedium,
            ),
            subtitle: Text('size: ${cartItem['size']}'),

            trailing: IconButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        'REMOVE PRODUCT',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      content: Text(
                        "are you sure you want to delete this item!",
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'No',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),

                        TextButton(
                          onPressed: () {
                            context.read<CartProvider>().addRemove(cartItem);
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Yes',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              icon: Icon(Icons.delete, color: Colors.red),
            ),
          );
        },
      ),
    );
  }
}
