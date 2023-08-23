import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyRow extends StatelessWidget {
  const MyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 120,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 15,
                        color: Colors.grey.shade400,
                        offset: const Offset(5, 5)),
                    const BoxShadow(
                        blurRadius: 15,
                        color: Colors.white,
                        offset: Offset(-5, -5))
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.location_on,
                      size: 30,
                    ),
                  ),
                  Container(
                    child: const Text(
                      "KAPASHERA",
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.settings,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
