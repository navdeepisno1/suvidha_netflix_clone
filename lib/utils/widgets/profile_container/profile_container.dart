import 'package:flutter/material.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({key, this.size, this.tagId}) : super(key: key);
  final double size;
  final int tagId;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'tagProfile$tagId',
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          image: DecorationImage(
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyeln-aZGncc04wWRxDiJ-pJ_KQEvxPyOpXg&usqp=CAU'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
