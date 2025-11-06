import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_demos/controller/home_controller.dart';
import 'package:my_flutter_demos/controller/week_demo_controller.dart';
import 'package:my_flutter_demos/page/basic_widget_page.dart';
import 'package:my_flutter_demos/page/bottom_navigation_bar_page.dart';
import 'package:my_flutter_demos/page/center_page.dart';
import 'package:my_flutter_demos/page/colum_page.dart';
import 'package:my_flutter_demos/page/container_page.dart';
import 'package:my_flutter_demos/page/expaned_page.dart';
import 'package:my_flutter_demos/page/grid_view_page.dart';
import 'package:my_flutter_demos/page/image_page.dart';
import 'package:my_flutter_demos/page/list_view_page.dart';
import 'package:my_flutter_demos/page/padding_page.dart';
import 'package:my_flutter_demos/page/practice_1_page.dart';
import 'package:my_flutter_demos/page/row_page.dart';
import 'package:my_flutter_demos/page/scaffold_page.dart';
import 'package:my_flutter_demos/page/stack_page.dart';
import 'package:my_flutter_demos/page/tab_bar_page.dart';
import 'package:my_flutter_demos/page/text_field_page.dart';
import 'package:my_flutter_demos/page/text_page.dart';
import 'package:my_flutter_demos/page/week_demo_page.dart';
import 'package:my_flutter_demos/weeks_demo/week10_table.dart';
import 'package:my_flutter_demos/weeks_demo/week11_sliver_app_bar.dart';
import 'package:my_flutter_demos/weeks_demo/week12_sliver_list_grid.dart';
import 'package:my_flutter_demos/weeks_demo/week13_fade_in_image.dart';
import 'package:my_flutter_demos/weeks_demo/week14_stream_builder.dart';
import 'package:my_flutter_demos/weeks_demo/week15_inherited_model.dart';
import 'package:my_flutter_demos/weeks_demo/week16_clip_r_rect.dart';
import 'package:my_flutter_demos/weeks_demo/week17_hero.dart';
import 'package:my_flutter_demos/weeks_demo/week18_custom_paint.dart';
import 'package:my_flutter_demos/weeks_demo/week19_tooltip.dart';
import 'package:my_flutter_demos/weeks_demo/week1_safearea.dart';
import 'package:my_flutter_demos/weeks_demo/week20_fitted_box.dart';
import 'package:my_flutter_demos/weeks_demo/week21_layout_builder.dart';
import 'package:my_flutter_demos/weeks_demo/week22_absorb_pointer.dart';
import 'package:my_flutter_demos/weeks_demo/week23_transform.dart';
import 'package:my_flutter_demos/weeks_demo/week24_back_drop_filter.dart';
import 'package:my_flutter_demos/weeks_demo/week25_align.dart';
import 'package:my_flutter_demos/weeks_demo/week26_position.dart';
import 'package:my_flutter_demos/weeks_demo/week27_animated_builder.dart';
import 'package:my_flutter_demos/weeks_demo/week28_dismissible.dart';
import 'package:my_flutter_demos/weeks_demo/week29_sizedbox.dart';
import 'package:my_flutter_demos/weeks_demo/week2_expanded.dart';
import 'package:my_flutter_demos/weeks_demo/week30_value_listenable_builder.dart';
import 'package:my_flutter_demos/weeks_demo/week31_draggable.dart';
import 'package:my_flutter_demos/weeks_demo/week3_wrap.dart';
import 'package:my_flutter_demos/weeks_demo/week4_animated_container.dart';
import 'package:my_flutter_demos/weeks_demo/week5_opacity.dart';
import 'package:my_flutter_demos/weeks_demo/week6_future_builder.dart';
import 'package:my_flutter_demos/weeks_demo/week7_fade_transition.dart';
import 'package:my_flutter_demos/weeks_demo/week8_floating_action_button.dart';
import 'package:my_flutter_demos/weeks_demo/week9_page_view.dart';

import 'controller/basic_widget_controller.dart';
import 'my_home_page.dart';

class AppRountes {
  static const String home = '/';
  static const String basicWidgets = '/basicWidgets';
  static const String weekDemos = '/weekDemos';
  static const String scaffoldAppBar = '/scaffoldAppBar';
  static const String text = '/Text';
  static const String textField = '/TextField';
  static const String image = '/Image';
  static const String container = '/Container';
  static const String padding = '/Padding';
  static const String center = '/Center';
  static const String stack = '/Stack';
  static const String colum = '/Colum';
  static const String row = '/Row';
  static const String expanded = '/Expanded';
  static const String listView = '/ListView';
  static const String gridView = '/GridView';
  static const String tabBar = '/TabBar';
  static const String bottomNavigationBar = '/BottomNavigationBar';
  static const String practice_1 = '/practice_1';
  static const String practice_2 = '/practice_2';
  static const String practice_3 = '/practice_3';
  static const String practice_4 = '/practice_4';
  static const String practice_5 = '/practice_5';

  static const String weekDemo1 = '/weekDemo1';
  static const String weekDemo2 = '/weekDemo2';
  static const String weekDemo3 = '/weekDemo3';
  static const String weekDemo4 = '/weekDemo4';
  static const String weekDemo5 = '/weekDemo5';
  static const String weekDemo6 = '/weekDemo6';
  static const String weekDemo7 = '/weekDemo7';
  static const String weekDemo8 = '/weekDemo8';
  static const String weekDemo9 = '/weekDemo9';
  static const String weekDemo10 = '/weekDemo10';
  static const String weekDemo11 = '/weekDemo11';
  static const String weekDemo12 = '/weekDemo12';
  static const String weekDemo13 = '/weekDemo13';
  static const String weekDemo14 = '/weekDemo14';
  static const String weekDemo15 = '/weekDemo15';
  static const String weekDemo16 = '/weekDemo16';
  static const String weekDemo17 = '/weekDemo17';
  static const String weekDemo18 = '/weekDemo18';
  static const String weekDemo19 = '/weekDemo19';
  static const String weekDemo20 = '/weekDemo20';
  static const String weekDemo21 = '/weekDemo21';
  static const String weekDemo22 = '/weekDemo22';
  static const String weekDemo23 = '/weekDemo23';
  static const String weekDemo24 = '/weekDemo24';
  static const String weekDemo25 = '/weekDemo25';
  static const String weekDemo26 = '/weekDemo26';
  static const String weekDemo27 = '/weekDemo27';
  static const String weekDemo28 = '/weekDemo28';
  static const String weekDemo29 = '/weekDemo29';
  static const String weekDemo30 = '/weekDemo30';
  static const String weekDemo31 = '/weekDemo31';

  static final List<GetPage> pages = [
    GetPage(
      name: home,
      page: () => MyHomePage(),
      binding: BindingsBuilder(() {
        Get.lazyPut<HomeController>(() => HomeController());
      }),
    ),
    GetPage(
      name: basicWidgets,
      page: () => BasicWidgetPage(),
      binding: BindingsBuilder(() {
        Get.lazyPut<BasicWidgetController>(() => BasicWidgetController());
      }),
    ),
    GetPage(
      name: weekDemos,
      page: () => WeekDemoPage(),
      binding: BindingsBuilder(() {
        Get.lazyPut<WeekDemoController>(() => WeekDemoController());
      }),
    ),

    GetPage(name: scaffoldAppBar, page: () => ScaffoldPage()),
    GetPage(name: text, page: () => TextPage()),
    GetPage(name: textField, page: () => TextFieldPage()),
    GetPage(name: image, page: () => ImagePage()),
    GetPage(name: container, page: () => ContainerPage()),
    GetPage(name: padding, page: () => PaddingPage()),
    GetPage(name: center, page: () => CenterPage()),
    GetPage(name: stack, page: () => StackPage()),
    GetPage(name: colum, page: () => ColumPage()),
    GetPage(name: row, page: () => RowPage()),
    GetPage(name: expanded, page: () => ExpanedPage()),
    GetPage(name: listView, page: () => ListViewPage()),
    GetPage(name: gridView, page: () => GridViewPage()),
    GetPage(name: tabBar, page: () => TabBarPage()),
    GetPage(name: bottomNavigationBar, page: () => BottomNavigationBarPage()),
    GetPage(name: practice_1, page: () => Practice1Page()),

    GetPage(name: weekDemo1, page: () => Week1()),
    GetPage(name: weekDemo2, page: () => Week2()),
    GetPage(name: weekDemo3, page: () => Week3()),
    GetPage(name: weekDemo4, page: () => Week4()),
    GetPage(name: weekDemo5, page: () => Week5()),
    GetPage(name: weekDemo6, page: () => Week6()),
    GetPage(name: weekDemo7, page: () => Week7()),
    GetPage(name: weekDemo8, page: () => Week8()),
    GetPage(name: weekDemo9, page: () => Week9()),
    GetPage(name: weekDemo10, page: () => Week10()),

    GetPage(name: weekDemo11, page: () => Week11()),
    GetPage(name: weekDemo12, page: () => Week12()),
    GetPage(name: weekDemo13, page: () => Week13()),
    GetPage(name: weekDemo14, page: () => Week14()),
    GetPage(name: weekDemo15, page: () => Week15()),
    GetPage(name: weekDemo16, page: () => Week16()),
    GetPage(name: weekDemo17, page: () => Week17()),
    GetPage(name: weekDemo18, page: () => Week18()),
    GetPage(name: weekDemo19, page: () => Week19()),
    GetPage(name: weekDemo20, page: () => Week20()),

    GetPage(name: weekDemo21, page: () => Week21()),
    GetPage(name: weekDemo22, page: () => Week22()),
    GetPage(name: weekDemo23, page: () => Week23()),
    GetPage(name: weekDemo24, page: () => Week24()),
    GetPage(name: weekDemo25, page: () => Week25()),
    GetPage(name: weekDemo26, page: () => Week26()),
    GetPage(name: weekDemo27, page: () => Week27()),
    GetPage(name: weekDemo28, page: () => Week28()),
    GetPage(name: weekDemo29, page: () => Week29()),
    GetPage(name: weekDemo30, page: () => Week30()),
    GetPage(name: weekDemo31, page: () => Week31()),
  ];
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'my flutter demos',
      initialRoute: AppRountes.home,
      theme: ThemeData(primarySwatch: Colors.blue),
      getPages: AppRountes.pages,
      // home: MyHomePage(),
    );
  }
}
