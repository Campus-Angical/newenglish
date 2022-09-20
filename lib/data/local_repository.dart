import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:newenglish/core/failures/failures.dart';
import 'package:newenglish/domain/entities/local.dart';

class LocalRepository {

  List<Local> locais = [
    Local('Restaurante', Icons.food_bank, Color.fromARGB(255, 237, 179, 193)),
    Local('Escola', Icons.school, Color.fromARGB(255, 254, 215, 184)),
    Local('Transporte', Icons.bus_alert, Color.fromARGB(255, 254, 242, 184)),
    Local('Saudação', Icons.waving_hand, Color.fromARGB(255, 237, 179, 183)),
    Local('Saúde', Icons.healing, Color.fromARGB(255, 254, 215, 184)),
    Local('Viagem', Icons.travel_explore, Color.fromARGB(255, 254, 242, 184))
    
  ];

  Future<Either<Failure, List<Local>>> all() async {
    await Future.delayed(Duration(seconds: 3));
    return right(locais);
  }

}