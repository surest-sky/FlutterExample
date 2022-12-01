## Go router

## go 和 push 的区别
 
- go 的路由 如果是子路由，那么则为跳转到新路线, 否则推入到当前导航堆栈
- push 推送到当前导航堆栈中


## Api

- go
- push
- goNamed
- pushNamed
- replace


## 使用方法

main.dart

    final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        name: 'home',
        builder: (BuildContext context, GoRouterState state) {
          return const AppPage();
        },
        routes: [
          GoRoute(
            path: 'detail',
            builder: (context, state) => const DetailPage(),
          ),
          GoRoute(
            path: 'modal',
            pageBuilder: (context, state) => const MaterialPage(
              fullscreenDialog: true,
              child: ModalPage(),
            ),
          )
        ],
      ),
      GoRoute(
        path: '/router',
        name: 'router',
        builder: (BuildContext context, GoRouterState state) {
          return const RoutePage();
        },
      ),
      GoRoute(
        path: '/user',
        name: 'user',
        builder: (BuildContext context, GoRouterState state) {
          return const UserPage();
        },
      ),
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (BuildContext context, GoRouterState state) {
          return const LoginPage();
        },
      ),
    ],
    redirect: (BuildContext context, GoRouterState state) {
      if (state.location == '/user') {
        return '/login';
      }
      return state.location;
    });

    ...

    @override
    Widget build(BuildContext context) {
        return MaterialApp.router(
            routerConfig: _router,
        );
    }


## 使用 redirect 进行重定向

    redirect: (BuildContext context, GoRouterState state) {
      if (state.location == '/user') {
        return '/login';
      }
      return state.location;
    });

## 设定路由初始化

    initialLocation: '/page2',

## 路由传参

### query 参数

    发送端: context.go('/search?query=kitties');

    接收端:  
    final params = state.queryParams;
    final UserModel user = UserModel.fromJson(params);
    return MaterialPage(
      fullscreenDialog: true,
      child: ModalPage(user: user),
    );

### 其他参数

    void _tap() => context.go('/family', extra: _family);

### 动态刷新路由

    GRouter {
        ...
        refreshListenable: loginInfo,
        // refreshListenable: GoRouterRefreshStream(streamController.stream),
    }

## 参考文章

    https://juejin.cn/post/7047035390003249189#heading-32