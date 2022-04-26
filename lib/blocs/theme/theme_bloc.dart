import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:switch_theme/theme/themes.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState()) {
    on<ChangeThemeEvent>(_handleChangeTheme);
  }

  _handleChangeTheme(ChangeThemeEvent event, Emitter<ThemeState> emit) {
    emit(state.copyWith(theme: event.theme));
  }
}
