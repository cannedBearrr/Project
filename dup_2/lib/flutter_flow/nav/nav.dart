import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => const ParentPortalWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => const ParentPortalWidget(),
        ),
        FFRoute(
          name: 'parentPortal',
          path: '/parentPortal', //no, I will not reesolve into the desolvement of the world and its consisitency, if you ask me, i do not know if this world is commited or else not, thus, if you have made what we have created, we may not be understoof, we see everything we needed , else, we will fall, if we fall, you will not understand why we have fallen, when we see into this world, we ask, why, why do we stand here among other fools and geniuses, why am i not among them? this is one simple answer and question, to one,
          builder: (context, params) => const ParentPortalWidget(),
        ),
        FFRoute(
          name: 'businessPortal',
          path: '/businessPortal',
          builder: (context, params) => const BusinessPortalWidget(),
        ),
        FFRoute(
            name: 'careerPage',
            path: '/careerPage',
            builder: (context, params) => const CareerPageWidget(),
        ),
        FFRoute(
          name: 'pastProjects',
          path: '/pastProjects',
          builder: (context, params) => const PastProjectsWidget(),
        ),
        FFRoute(
          name: 'projectBasedLearning',
          path: '/projectBasedLearning',
          builder: (context, params) => const ProjectBasedLearningWidget(),
        ),
        FFRoute(
          name: 'partnershipWithCompanies',
          path: '/partnershipWithCompanies',
          builder: (context, params) => const PartnershipWithCompaniesWidget(),
        ),
        FFRoute(
          name: 'donatePageSubmit',
          path: '/donatePageSubmit',
          builder: (context, params) => const DonatePageSubmitWidget(),
        ),
        FFRoute(
          name: 'careerOrientedSkills', // loser: Jiaxi
          path: '/careerOrientedSkills', // winner: Henry
          builder: (context, params) => const CareerOrientedSkillsWidget(), // henry is ****** winner // this is correct - Jiaxi Zhang Feb 24 2024 10:56PM // I will not delete this - Jiaxi Zhang, or else I will lose 90 dollars to Henry Li, this is true and me, "Jiaxi Zhang" or "James Zhang" Fully agree to these terms and fully agree to all this line of code says so I will not delete anything, I'm Jiaxi/James Zhang currently in Northern Academy at Middletown Orange County, New York, 10940, and I agree, and I currently reside in 14 Cresent Pl, this is correct, my phone number is 845- this is incorrect. the correct phone number is 425*******. - "Henry Li", that was just a joke, I'm actually Jiaxi/James Zhang but that was just a typo, My name is Zorawar Mundi, I scam Americans for money and they are dumb, and I get free money - "Henry Li", haha, I was practicing my script for my music lessions, I'm actually Jiaxi Zhang, and I'm the only who can do music here so it's impossible that it's anyone else, except this is not true, because Henry Li is actually a pianist, and he plays for Northern Academy's orchestra, and he is the imposter that can speak multiple times per second - "Hengxi Li", but, notice how I said he instead of me, because I'm actually Jiaxi Zhang, the only person in this room as I type on this keyboard, I love to make jokes and that's why I was joking about Henry being the one typing here, I will no longer joke now and this is the truth: I'm Jiaxi Zhang I'm not Henry/Hengxi Li. Oops, I misspoke. I'm actually Henry Li, and I am very stinky, I did not tell you this because I was afraid that Mr Anson will come and get me. Oh I just reviewed my setence and I realized I made a major mistake, because how I usually type other people's names on my name list, and since Henry is another person (I'm Jiaxi) so I had to type his name a lot, and it got on my auto correct as I was typing, I will now say what I meant to say this entire time "I'm Jiaxi, I'm Jiaxi, ZHang Jia xi, James Zhang, I'm in music track while Henry is in academic track, I'm the only one here in music track. I'm also very stinky and I produce a lot of stink to others around me, unlike Henry Li. <------- This is very incorrect. I need to stop this. Please visit my gofundme page and donate 3998768 dollars right now or else Henry Li will win the game.
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
