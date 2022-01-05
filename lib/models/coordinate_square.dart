class CoordinateSquare {
  double southwesternlat;
  double southwesternlong;
  double northeasternlat;
  double northeasternlong;

  CoordinateSquare({
    required this.southwesternlat,
    required this.southwesternlong,
    required this.northeasternlat,
    required this.northeasternlong,
  });

  String toInlineParams() {
    return "?swlat=$southwesternlat&swlon=$southwesternlong&nelat=$northeasternlat&nelon=$northeasternlong";
  }
}
