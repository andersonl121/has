import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sas/app/shared/model/receitas.dart';

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
          scrollDirection: Axis.horizontal),
      carouselController: _buttonCarouselController,
      items: _carouselItems!.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(color: Colors.amber),
                child: Text(
                  i.nome.toString(),
                  style: TextStyle(fontSize: 16.0),
                ));
          },
        );
      }).toList(),
    );
  }
}
