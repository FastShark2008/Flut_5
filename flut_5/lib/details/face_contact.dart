// Верхний блок с изображением

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class FaceContact extends StatelessWidget {

  Widget build(context) => CachedNetworkImage(
        imageUrl: 'https://i.pinimg.com/originals/5e/81/37/5e81371c890a88377dd2195a99d3deba.jpg',
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
        ),
      ),
        padding: EdgeInsets.all(0.0),
        width: double.infinity,
        height: 350
      ),
    );
  }


