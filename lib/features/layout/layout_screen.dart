import 'package:book_a_doctor/core/helpers/extensions.dart';
import 'package:book_a_doctor/core/theming/colors.dart';
import 'package:book_a_doctor/features/book_appointment/ui/book_appointment_screen.dart';
import 'package:book_a_doctor/features/home/ui/home_screen.dart';
import 'package:book_a_doctor/features/layout/bloc/bottom_navigation_bar_cubit.dart';
import 'package:book_a_doctor/features/layout/bloc/bottom_navigation_bar_state.dart';
import 'package:book_a_doctor/features/layout/widget/bottom_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/routing/routes.dart';
import '../chat/ui/chat_screen.dart';
import '../profile/ui/profile_screen.dart';

class LayoutScreen extends StatelessWidget {
  LayoutScreen({super.key});

  final List<Widget> pages = [
    HomeScreen(),
    ChatScreen(),
    BookAppointmentScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      BottomNavigationBarCubit,
      ChangeBottomNavigationIndexState
    >(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          floatingActionButton: SizedBox(
            height: 72.h,
            width: 72.w,
            child: FloatingActionButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28.r),
              ),
              backgroundColor: ColorsManager.mainBlue,
              onPressed: () {
                context.pushNamed(Routes.searchScreen);
              },
              tooltip: "Search",
              child: SvgPicture.asset(
                "assets/svgs/search_icon.svg",
                width: 24.w,
                height: 24.w,
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          body: IndexedStack(index: state.pageIndex, children: pages),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0x08000000),
                  offset: const Offset(0, -1),
                  blurRadius: 2,
                ),
              ],
            ),
            height: 80.h,
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              currentIndex: state.pageIndex,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                if (index == 2) return;
                final realPageIndex = index > 2 ? index - 1 : index;
                context.read<BottomNavigationBarCubit>().changePageIndex(
                  newPageIndex: realPageIndex,
                );
              },
              items: [
                bottomNavBarItem(
                  icon:
                      state.pageIndex == 0
                          ? "assets/svgs/selected_home_icon.svg"
                          : "assets/svgs/unselected_home_icon.svg",
                  label: "Home",
                ),
                bottomNavBarItem(
                  icon:
                      state.pageIndex == 1
                          ? "assets/svgs/selected_message_icon.svg"
                          : "assets/svgs/unselected_message_icon.svg",
                  label: "Chat",
                ),
                bottomNavBarItem(),
                bottomNavBarItem(
                  icon:
                      state.pageIndex == 2
                          ? "assets/svgs/selected_calendar_icon.svg"
                          : "assets/svgs/unselected_calendar_icon.svg",
                  label: "Book Appointment",
                ),
                bottomNavBarItem(
                  icon:
                      state.pageIndex == 3
                          ? "assets/svgs/selected_profile_icon.svg"
                          : "assets/svgs/unselected_profile_icon.svg",
                  label: "Profile",
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
