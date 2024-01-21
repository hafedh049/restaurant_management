import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../globals.dart';

class ProductTile extends StatefulWidget {
  const ProductTile({super.key, required this.callback, required this.data});

  final Map<String, dynamic> data;
  final void Function() callback;

  @override
  State<ProductTile> createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (bool value) => setState(() => _isHovered = value),
      onTap: widget.callback,
      hoverColor: transparent,
      splashColor: transparent,
      highlightColor: transparent,
      child: AnimatedScale(
        duration: 300.ms,
        scale: _isHovered ? 1.01 : 1,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: white,
            boxShadow: <BoxShadow>[BoxShadow(color: black.withOpacity(.2), offset: const Offset(-5, 2), blurStyle: BlurStyle.outer)],
          ),
          child: Row(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), image: DecorationImage(image: AssetImage(widget.data["picture"]), fit: BoxFit.cover)),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(widget.data["title"], style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: brown)),
                  const SizedBox(height: 10),
                  Text(widget.data["rating"], style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: yellow)),
                ],
              ),
              const Spacer(),
              Text(widget.data["price"], style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: brown)),
            ],
          ),
        ),
      ),
    );
  }
}
