class ScreenUtil {
  static ScreenUtil? screen;
  ScreenUtil._();
  final Map<String, int> _dicionario = <String, int>{};

  static ScreenUtil? getScreen() {
    screen ??= ScreenUtil._();
    return screen;
  }

  void addValue(String rotulo, int value) {
    _dicionario['rotulo'] = value;
  }

  int? getValue(String rotulo) {
    return _dicionario[rotulo];
  }
}
