enum LottieAnimation {
  dataNotFound(name: "data_not_found"),
  empty(name: "empty2"),
  error(name: "error"),
  loading(name: "loading"),
  smallError(name: "small_error");

  final String name;
  const LottieAnimation({required this.name});
}
