import 'package:flutter/material.dart';

class DataBox extends StatelessWidget {
  final IconData icon;
  final String name;
  final Function()? onTap;
  DataBox({super.key, required this.icon, required this.name, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        InkWell(
          onTap: onTap,
          child: Container(
            height: 100,
            width: 170,
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
                borderRadius: BorderRadius.circular(20)),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    size: 35,
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      name,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              )
            ]),
          ),
        ),
      ]),
    );
  }
}
