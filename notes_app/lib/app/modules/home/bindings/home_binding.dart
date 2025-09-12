import 'package:get/get.dart';
import '../../../data/repositories/note_repository.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NoteRepository>(() => NoteRepository());
    Get.lazyPut<HomeController>(() => HomeController(noteRepository: Get.find()));
  }
}
