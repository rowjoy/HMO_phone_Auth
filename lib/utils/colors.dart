class COLOR {
  static coustomColors(String colorhexcode) {
    String colors = '0xff' + colorhexcode;
    colors = colors.replaceAll('#', '');
    int colorint = int.parse(colors);
    return colorint;
  }
}
