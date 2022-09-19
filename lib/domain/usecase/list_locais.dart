import 'package:get/get.dart';
import 'package:newenglish/core/failures/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:newenglish/core/usecase/usecase.dart';
import 'package:newenglish/data/local_repository.dart';
import 'package:newenglish/domain/entities/local.dart';

class ListLocal implements UseCase<List<Local>, NoParams> {
  
  LocalRepository _repository = Get.find();

  @override
  Future<Either<Failure, List<Local>>> call(NoParams params) {
    return _repository.all(); 
  }
  
}