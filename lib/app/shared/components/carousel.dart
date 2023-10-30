import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sas/app/shared/model/receitas.dart';

import 'aText.dart';

class Carousel extends StatelessWidget {
  CarouselController? _buttonCarouselController = CarouselController();
  List<Receitas>? _carouselItems;

  Carousel(this._buttonCarouselController, this._carouselItems);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: 400.0,
          enableInfiniteScroll: true,
          scrollPhysics: NeverScrollableScrollPhysics()),
      carouselController: _buttonCarouselController,
      items: _carouselItems!.map((i) {
        String receitaName = i.nome.toString();

        return Builder(
          builder: (BuildContext context) {
            return Center(
                child: AText(
              text: receitaName,
              size: 16.0,
            ));
          },
        );
      }).toList(),
    );
  }
}
