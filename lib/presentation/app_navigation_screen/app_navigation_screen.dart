import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:basri_s_application12/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              userName: "Login".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Home Page".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homePageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Top Playlists".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.topPlaylistsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "List".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.listScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Settings".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.settingsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Favorites".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.favoritesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Profile".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Artists".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.artistsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Artist".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.artistScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Albums".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.albumsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Album Details".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.albumDetailsScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String userName,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  userName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
