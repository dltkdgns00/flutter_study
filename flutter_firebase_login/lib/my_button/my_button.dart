import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

	MyButton({this.image, this.text, this.color, this.radius, this.onPressed});

	final Widget? image;
	final Widget? text;
	final Color? color;
	final double? radius;
	final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
						height: 50.0,
						child: ElevatedButton(
							child: Row(
								mainAxisAlignment: MainAxisAlignment.spaceEvenly,
								children: [
									image!,
									text!,
									Opacity(
										opacity: 0.0,
										child: Image.asset('images/glogo.png'),
									)
								]
							),
							onPressed: onPressed,
							style: ElevatedButton.styleFrom(
							backgroundColor: color,
						),
						),
						shape: RoundedRectangleBorder(
							borderRadius: BorderRadius.all(
								Radius.circular(radius!),
							)
						),
					);
  }
}