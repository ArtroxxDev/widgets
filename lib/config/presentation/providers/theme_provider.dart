import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider =
    StateProvider((ref) => false); //Para mantener algunas piezas de estado

final colorListProvider = Provider((ref) => colorList); //provider es inmutable

final selectedColorProvider = StateProvider((ref) => 0);

final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

//Controller o Notifier

class ThemeNotifier extends StateNotifier<AppTheme> {
  //el estado es una nueva instancia de apptheme
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
