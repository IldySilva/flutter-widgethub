part of 'theme_bloc.dart';

class ThemeState {
  final ThemeMode themeMode;

  ThemeState({required this.themeMode});
  List get props => [themeMode];
}

class ThemeInitial extends ThemeState {
  ThemeInitial({required super.themeMode});
}

class UpdateTheme extends ThemeState {
  final ThemeMode themeMode;
  UpdateTheme({required this.themeMode}) : super(themeMode: themeMode);
}
