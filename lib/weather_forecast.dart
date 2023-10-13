import 'package:flutter/material.dart';

class ForecastItem extends StatelessWidget {
  final String time;
  final IconData icon;
  final String temp;
  const ForecastItem(
      {super.key, required this.time, required this.icon, required this.temp});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        elevation: 6,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          width: 100,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                time,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 8),
              Icon(
                icon,
                size: 32,
              ),
              Text(
                temp,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
