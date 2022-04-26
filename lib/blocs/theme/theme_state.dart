part of 'theme_bloc.dart';

class ThemeState extends Equatable {
  final AppTheme theme;
  const ThemeState({this.theme = AppTheme.light});

  ThemeState copyWith({required AppTheme theme}) {
    return ThemeState(
      theme: theme,
    );
  }

  @override
  List<Object> get props => [theme];
}
