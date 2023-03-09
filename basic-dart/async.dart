Future<String> getName() {
  return Future.delayed(
    Duration(seconds: 1), (() {
      return "Kan Ouivirach";
    }),
  );
}