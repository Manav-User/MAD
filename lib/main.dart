import 'package:flutter/material.dart';
import 'models/product.dart';
import 'screens/cart_screen.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const PetShopApp());
}

class PetShopApp extends StatefulWidget {
  const PetShopApp({super.key});

  @override
  State<PetShopApp> createState() => _PetShopAppState();
}

class _PetShopAppState extends State<PetShopApp> {
  final List<Product> _cart = <Product>[];
  int _tabIndex = 0;
  bool _isLoggedIn = false;
  String _userName = 'Your Name';
  String _userEmail = 'your.email@example.com';
  String? _avatarPath;

  void _addToCart(Product product) {
    setState(() {
      _cart.add(product);
    });
  }

  void _removeFromCart(Product product) {
    setState(() {
      _cart.remove(product);
    });
  }

  void _clearCart() {
    setState(() {
      _cart.clear();
    });
  }

  void _handleLogin({
    required String email,
    required String name,
  }) {
    setState(() {
      _isLoggedIn = true;
      _userEmail = email;
      _userName = name.isNotEmpty ? name : 'Pet Lover';
    });
  }

  void _handleLogout() {
    setState(() {
      _isLoggedIn = false;
      _tabIndex = 0;
      _cart.clear();
    });
  }

  void _updateProfile({
    String? name,
    String? avatarPath,
  }) {
    setState(() {
      if (name != null && name.isNotEmpty) {
        _userName = name;
      }
      if (avatarPath != null) {
        _avatarPath = avatarPath;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: _isLoggedIn
          ? Scaffold(
              body: SafeArea(
                child: IndexedStack(
                  index: _tabIndex,
                  children: <Widget>[
                    HomeScreen(onAddToCart: _addToCart),
                    ProfileScreen(
                      name: _userName,
                      email: _userEmail,
                      avatarPath: _avatarPath,
                      onProfileChanged: _updateProfile,
                      onLogout: _handleLogout,
                    ),
                    CartScreen(
                      cartItems: List<Product>.unmodifiable(_cart),
                      onRemove: _removeFromCart,
                      onClear: _clearCart,
                    ),
                  ],
                ),
              ),
              bottomNavigationBar: NavigationBar(
                selectedIndex: _tabIndex,
                onDestinationSelected: (int index) {
                  setState(() {
                    _tabIndex = index;
                  });
                },
                destinations: <NavigationDestination>[
                  const NavigationDestination(
                    icon: Icon(Icons.home_outlined),
                    selectedIcon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  const NavigationDestination(
                    icon: Icon(Icons.person_outline),
                    selectedIcon: Icon(Icons.person),
                    label: 'Profile',
                  ),
                  NavigationDestination(
                    icon: Badge(
                      isLabelVisible: _cart.isNotEmpty,
                      label: Text('${_cart.length}'),
                      child: const Icon(Icons.shopping_cart_outlined),
                    ),
                    selectedIcon: Badge(
                      isLabelVisible: _cart.isNotEmpty,
                      label: Text('${_cart.length}'),
                      child: const Icon(Icons.shopping_cart),
                    ),
                    label: 'Cart',
                  ),
                ],
              ),
            )
          : LoginScreen(
              onLogin: _handleLogin,
            ),
    );
  }
}
