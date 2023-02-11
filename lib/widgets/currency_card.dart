import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String text;
  final String price;
  final String unit;
  final bool isInverted;
  final IconData icon;

  final _black = const Color(0xff1f2123);

  const CurrencyCard({
    super.key,
    required this.text,
    required this.price,
    required this.unit,
    required this.isInverted,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isInverted ? Colors.white : _black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: isInverted ? _black : Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      '6 428',
                      style: TextStyle(
                        fontSize: 20,
                        color: isInverted ? _black : Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'EUR',
                      style: TextStyle(
                        fontSize: 20,
                        color: isInverted
                            ? _black.withOpacity(0.8)
                            : Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(
                  -5,
                  12,
                ),
                child: Icon(
                  icon,
                  color: isInverted ? _black : Colors.white,
                  size: 88,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
