import 'package:mobx/mobx.dart';
part 'future_controller.g.dart';

class FutureController = FutureControllerBase with _$FutureController;

abstract class FutureControllerBase with Store {
  @observable
  var nomeFuture = ObservableFuture.value('');
  // var nomeFuture = Future.value('').asObservable();

  Future<void> buscarNome() async {
    final buscaNomeFuture =
        Future.delayed(Duration(seconds: 2), () => 'Enzo Zamineli').asObservable();
    nomeFuture = ObservableFuture(buscaNomeFuture);
    // nomeFuture = buscaNomeFuture.asObservable();

    // nomeFuture = Future.delayed(Duration(seconds: 2), () => 'Enzo Zamineli').asObservable();
    // return 'Enzo Zamineli';
  }
}
