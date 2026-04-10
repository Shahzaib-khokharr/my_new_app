import 'package:flutter/material.dart';
                           
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedSize = '14"';
  int quantity = 2;
  bool isFavorite = false;

  final List<String> sizes = ['10"', '14"', '16"'];
  final List<String> ingredientEmojis = ['🥚', '🥩', '🌿', '🍅', '🧀'];

   @override
  Widget build(BuildContext context) {
    final Color withAlpha = const Color(0xFFFF6B35).withAlpha(26);
    return Scaffold(
      backgroundColor: Colors.white,
      body: 
         Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 10),
                      child: Row(
                        children: [
                          Container(
                              width: 38,
                              height: 38,
                              decoration: BoxDecoration(
                                color: const Color(0xFFF2F2F2),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: const Icon(Icons.chevron_left,
                                  color: Color(0xFF333333), size: 22),
                            ),
                          const SizedBox(width: 15),
                          const Text('Details',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 124, 124, 124))),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Stack(
                        clipBehavior: Clip.none, 
                        alignment: Alignment.topCenter,
                        children: [
                          Container(
                            height: 180,
                            width: double.infinity,
                            margin: const EdgeInsets.only(top: 70),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 107, 21).withAlpha(102),
                              borderRadius: BorderRadius.circular(22),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            child: Container(
                              width: 200,
                              height: 200,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                child: Text('🍕',
                                    style: TextStyle(fontSize: 110)),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 12,
                            right: 12,
                            child: Container(
                                width: 34,
                                height: 34,
                                decoration: BoxDecoration(
                                  color: withAlpha,
                                  borderRadius: BorderRadius.circular(100),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withAlpha(26),
                                        blurRadius: 8,
                                        offset: const Offset(0, 2))
                                  ],
                                ),
                                child: Icon(
                                  isFavorite
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: isFavorite
                                      ? Colors.red
                                      : const Color(0xFFCCCCCC),
                                  size: 17,
                                ),
                              ),
                           
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 14, 16, 0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: const Color(0xFFEEEEEE)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withAlpha(13),
                                blurRadius: 6,
                                offset: const Offset(0, 1))
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 22,
                              height: 22,
                              decoration: const BoxDecoration(
                                  color: Color(0xFFFF6B35),
                                  shape: BoxShape.circle),
                              child: const Icon(Icons.home,
                                  color: Colors.white, size: 12),
                            ),
                            const SizedBox(width: 7),
                            const Text('Uttora Coffe House',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF333333))),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
                      child: Text('Pizza Calzone European',
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF1A1A1A),
                              letterSpacing: -0.3,
                              height: 1.2)),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 6, 16, 0),
                      child: Text(
                          'Prosciutto e funghi is a pizza variety that is\ntopped with tomato sauce,',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey.shade400,
                              height: 1.5)),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 14, 16, 0),
                      child: Row(
                        children: [
                          _InfoItem(
                              icon: Icons.star_border_rounded,
                              iconColor: const Color(0xFFFFC107),
                              label: '4.7'),
                          const SizedBox(width: 18),
                          _InfoItem(
                              icon: Icons.delivery_dining_outlined,
                              iconColor: Colors.grey.shade400,
                              label: 'Free'),
                          const SizedBox(width: 18),
                          _InfoItem(
                              icon: Icons.access_time_rounded,
                              iconColor: Colors.grey.shade400,
                              label: '20 min'),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16, 20, 16, 10),
                      child: Text('SIZE:',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 66, 66, 66),
                              letterSpacing: 1.0)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: sizes.map((size) {
                          final bool active = selectedSize == size;
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: active
                                      ? const Color(0xFFFF6B35)
                                      : const Color(0xFFF2F2F2),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                alignment: Alignment.center,
                                child: Text(size,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: active
                                            ? Colors.white
                                            : const Color(0xFF666666))),
                              ),
                          );
                        }).toList(),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16, 20, 16, 10),
                      child: Text('INGRIDENTS',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFAAAAAA),
                              letterSpacing: 1.0)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: ingredientEmojis.map((emoji) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              width: 52,
                              height: 52,
                              decoration: BoxDecoration(
                                color:
                                    const Color(0xFFFF6B35).withAlpha(26),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              alignment: Alignment.center,
                              child: Text(emoji,
                                  style: const TextStyle(fontSize: 22)),
                            ),
                          );
                        }).toList(),
                      ),
                    ),

                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(18, 14, 18, 14),
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(top: BorderSide(color: Color(0xFFF2F2F2))),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('\$32',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF1A1A1A))),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFF1C1C2E),
                        borderRadius: BorderRadius.circular(28)),
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        _QtyButton(
                            icon: Icons.remove,
                            onTap: () {
                              if (quantity > 1) setState(() => quantity--);
                            }),
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 13),
                          child: Text('$quantity',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700)),
                        ),
                        _QtyButton(
                            icon: Icons.add,
                            onTap: () => setState(() => quantity++)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}

class _InfoItem extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String label;
  const _InfoItem(
      {required this.icon, required this.iconColor, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: 16),
        const SizedBox(width: 5),
        Text(label,
            style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF555555))),
      ],
    );
  }
}

class _QtyButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const _QtyButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
            color: Colors.white.withAlpha(20), shape: BoxShape.circle),
        child: Icon(icon, color: Colors.white, size: 16),
      ),
    );
  }
}