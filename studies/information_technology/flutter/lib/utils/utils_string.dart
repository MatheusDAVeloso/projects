int? getTheLastSpaceIndex(String text) {
  if (text[text.length - 1] == ' ') {
    return text.length - 1;
  }

  for (int i = 2; i < text.length; i++) {
    if (text[text.length - i] == ' ') {
      return text.length - i;
    }
  }

  return null;
}
