part of 'di.dart';

final sl = GetIt.instance;

late Box<dynamic> _box;

Future<void> init() async {
  initHive();

  sl.registerLazySingleton(
    () => Dio()
      ..options = BaseOptions(
        baseUrl: "https://api.systematicdev.uz/pos-api/",
        contentType: 'application/json',
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
      ),
  );

  sl<Dio>().interceptors.addAll([
    InterceptorsWrapper(onRequest: (options, handler) {
      options.data ??= {};
      options.headers.addAll(localSource.header());
      handler.next(options);
    }),
    RetryInterceptor(
      dio: sl<Dio>(),
      logPrint: (message) {},
      toNoInternetPageNavigator: () async {
        log('No Internet bro #%@%');
      },
      refreshTokenFunction: () async {
        await localSource.clear();
        await Navigator.of(rootNavigatorKey.currentContext!)
            .pushNamedAndRemoveUntil(
          Routes.auth,
          (route) => false,
        );
      },
    ),
  ]);

  sl
    ..registerLazySingleton<LocalSource>(
      () => LocalSource(_box),
    )
    ..registerFactory<MainBloc>(() => MainBloc())
    ..registerFactory<SplashBloc>(
      () => SplashBloc(),
    );
}

Future<void> initHive() async {
  const String boxName = Constants.boxName;
  final Directory directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  _box = await Hive.openBox<dynamic>(boxName);
}
