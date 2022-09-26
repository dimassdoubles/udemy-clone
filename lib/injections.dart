import 'package:get_it/get_it.dart';
import 'package:udemy_clone/presentation/cubits/page_cubit.dart';

GetIt getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerSingleton<PageCubit>(PageCubit());
}
