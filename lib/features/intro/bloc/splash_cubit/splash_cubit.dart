import 'package:bloc/bloc.dart';

part 'splash_state.dart';
part 'connection_status.dart';

class SplashCubitCubit extends Cubit<SplashState> {
  SplashCubitCubit() : super(SplashState(connectionStatus: ConnectionInitial()));
}
