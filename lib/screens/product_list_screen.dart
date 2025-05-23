import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/product.dart';
import '../providers/cart_provider.dart';
import 'product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      id: 1,
      name: 'iPhone 14 Pro',
      description: 'Experience the future of mobile technology with the latest iPhone 14 Pro. Featuring a stunning Super Retina XDR display, powerful A16 Bionic chip, and revolutionary camera system.',
      price: 999.99,
      imageUrl: 'https://picsum.photos/200',
      category: 'Smartphones',
      rating: 4.8,
      reviewCount: 1250,
      features: [
        '6.1-inch Super Retina XDR display',
        'A16 Bionic chip',
        '48MP Main camera',
        'Always-On display',
        'Emergency SOS via satellite',
      ],
      specifications: {
        'Storage': '256GB',
        'Color': 'Space Black',
        'Battery': 'Up to 23 hours',
        'Water Resistance': 'IP68',
        'Operating System': 'iOS 16',
      },
    ),
    Product(
      id: 2,
      name: 'MacBook Pro M2',
      description: 'The most powerful MacBook Pro ever is here. With the blazing-fast M2 Pro or M2 Max chip — the first of a new generation of Apple silicon.',
      price: 1999.99,
      imageUrl: 'https://picsum.photos/201',
      category: 'Laptops',
      rating: 4.9,
      reviewCount: 850,
      features: [
        '14-inch Liquid Retina XDR display',
        'M2 Pro chip',
        'Up to 22 hours battery life',
        '1080p FaceTime HD camera',
        'Six-speaker sound system',
      ],
      specifications: {
        'Memory': '16GB',
        'Storage': '512GB SSD',
        'Display': '14-inch Liquid Retina XDR',
        'Ports': 'HDMI, SDXC, MagSafe 3',
        'Weight': '3.5 pounds',
      },
    ),
    Product(
      id: 3,
      name: 'Sony WH-1000XM5',
      description: 'Experience the next level of noise cancellation with Sony\'s WH-1000XM5 headphones. Premium sound quality meets ultimate comfort.',
      price: 399.99,
      imageUrl: 'https://picsum.photos/202',
      category: 'Audio',
      rating: 4.7,
      reviewCount: 2300,
      features: [
        'Industry-leading noise cancellation',
        '30-hour battery life',
        'Hi-Res Audio',
        'Multi-point connection',
        'Touch controls',
      ],
      specifications: {
        'Bluetooth': '5.2',
        'Weight': '250g',
        'Battery Life': '30 hours',
        'Charging Time': '3.5 hours',
        'Noise Cancellation': 'Yes',
      },
    ),
    Product(
      id: 4,
      name: 'Apple Watch Series 8',
      description: 'The most advanced Apple Watch ever. Featuring a powerful new sensor and app experience, designed to help you be more active, stay healthy, and sleep better.',
      price: 399.99,
      imageUrl: 'https://picsum.photos/203',
      category: 'Wearables',
      rating: 4.6,
      reviewCount: 1800,
      features: [
        'Always-On Retina display',
        'Advanced health features',
        'GPS + Cellular',
        'Swimproof',
        'Up to 18 hours battery life',
      ],
      specifications: {
        'Case Size': '45mm',
        'Material': 'Aluminum',
        'Band': 'Sport Band',
        'Water Resistance': '50m',
        'Battery Life': '18 hours',
      },
    ),
    Product(
      id: 5,
      name: 'Samsung Galaxy S23 Ultra',
      description: 'Capture the night with the revolutionary 200MP camera system. Experience the power of Snapdragon 8 Gen 2 and a massive 5000mAh battery.',
      price: 1199.99,
      imageUrl: 'https://picsum.photos/204',
      category: 'Smartphones',
      rating: 4.7,
      reviewCount: 950,
      features: [
        '6.8-inch Dynamic AMOLED 2X',
        '200MP Main Camera',
        'S Pen included',
        '5000mAh battery',
        'IP68 water resistance',
      ],
      specifications: {
        'Storage': '512GB',
        'RAM': '12GB',
        'Battery': '5000mAh',
        'Display': '6.8-inch QHD+',
        'Operating System': 'Android 13',
      },
    ),
    Product(
      id: 6,
      name: 'iPad Pro M2',
      description: 'Supercharged by the M2 chip, iPad Pro is the ultimate iPad experience with the most advanced display, cameras, and connectivity.',
      price: 899.99,
      imageUrl: 'https://picsum.photos/205',
      category: 'Tablets',
      rating: 4.8,
      reviewCount: 1200,
      features: [
        '12.9-inch Liquid Retina XDR display',
        'M2 chip',
        'ProMotion technology',
        'Thunderbolt 4',
        '5G capable',
      ],
      specifications: {
        'Storage': '256GB',
        'Display': '12.9-inch XDR',
        'Chip': 'M2',
        'Battery': 'Up to 10 hours',
        'Weight': '1.5 pounds',
      },
    ),
    Product(
      id: 7,
      name: 'Nintendo Switch OLED',
      description: 'The newest member of the Nintendo Switch family features a vibrant 7-inch OLED screen, enhanced audio, and a wide adjustable stand.',
      price: 349.99,
      imageUrl: 'https://picsum.photos/206',
      category: 'Gaming',
      rating: 4.9,
      reviewCount: 2800,
      features: [
        '7-inch OLED screen',
        'Enhanced audio',
        'Wide adjustable stand',
        '64GB internal storage',
        'LAN port in dock',
      ],
      specifications: {
        'Display': '7-inch OLED',
        'Storage': '64GB',
        'Battery Life': '4.5-9 hours',
        'Resolution': '1280x720',
        'Weight': '0.93 pounds',
      },
    ),
    Product(
      id: 8,
      name: 'DJI Mini 3 Pro',
      description: 'Capture stunning aerial footage with this lightweight, powerful drone. Features 4K video, obstacle avoidance, and extended flight time.',
      price: 759.99,
      imageUrl: 'https://picsum.photos/207',
      category: 'Drones',
      rating: 4.8,
      reviewCount: 650,
      features: [
        '4K/60fps video',
        'Obstacle avoidance',
        '34-minute flight time',
        'Under 249g weight',
        'Vertical shooting',
      ],
      specifications: {
        'Weight': '249g',
        'Camera': '48MP',
        'Video': '4K/60fps',
        'Flight Time': '34 minutes',
        'Range': '12km',
      },
    ),
  ];

  ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: products.length,
        itemBuilder: (ctx, i) => ProductGridItem(products[i]),
      ),
    );
  }
}

class ProductGridItem extends StatefulWidget {
  final Product product;

  const ProductGridItem(this.product, {super.key});

  @override
  State<ProductGridItem> createState() => _ProductGridItemState();
}

class _ProductGridItemState extends State<ProductGridItem> with SingleTickerProviderStateMixin {
  bool isHovered = false;
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.05).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onHoverChanged(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
      if (isHovered) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHoverChanged(true),
      onExit: (_) => _onHoverChanged(false),
      child: AnimatedBuilder(
        animation: _scaleAnimation,
        builder: (context, child) => Transform.scale(
          scale: _scaleAnimation.value,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(widget.product),
                ),
              );
            },
            child: Card(
              elevation: isHovered ? 8 : 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: isHovered ? Theme.of(context).primaryColor : Colors.transparent,
                    width: 2,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                            child: Image.network(
                              widget.product.imageUrl,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                          Positioned(
                            top: 8,
                            right: 8,
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.star, color: Colors.amber, size: 16),
                                  const SizedBox(width: 4),
                                  Text(
                                    widget.product.rating.toString(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (isHovered)
                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.1),
                                  borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                                ),
                                child: Center(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Text(
                                      'View Details',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.product.category,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            widget.product.name,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '\$${widget.product.price.toStringAsFixed(2)}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                              const SizedBox(height: 8),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Provider.of<CartProvider>(context, listen: false)
                                        .addItem(widget.product);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('Added to cart!'),
                                        duration: Duration(seconds: 2),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: const Text('Add to Cart'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
} 