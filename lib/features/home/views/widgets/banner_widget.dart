import 'package:flutter/cupertino.dart';

class CustomBanner extends StatelessWidget {
  CustomBanner({super.key});
  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Image.asset("assets/images/bannar.jpg",
        height: size.height*0.22,width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
