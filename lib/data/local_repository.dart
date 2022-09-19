import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:newenglish/core/failures/failures.dart';
import 'package:newenglish/domain/entities/local.dart';

class LocalRepository {

  List<Local> locais = [
    Local('Restaurante', Icons.food_bank),
    Local('Escola', Icons.school),
    Local('Transporte', Icons.bus_alert)
  ];

  Future<Either<Failure, List<Local>>> all() async {
    await Future.delayed(Duration(seconds: 3));
    return right(locais);
  }

}