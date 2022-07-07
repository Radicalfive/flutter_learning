import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/custom/widget_container.dart';

final data = <dynamic>[
  Colors.blue[50],
  Colors.blue[100],
  Colors.blue[200],
  Colors.blue[300],
  Colors.blue[400],
  Colors.blue[500],
  Colors.blue[600],
  Colors.blue[700],
  Colors.blue[800],
  Colors.blue[900],
];

String colorString(dynamic color) =>
    "#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase()}";

final statelessList = <ContainerInfo>[
  ContainerInfo('Container', '用于容纳单个子组件的容器组件。集成了若干个单子组件的功能，如内外边距、形变、装饰、约束等。',
      '/container'),
  ContainerInfo(
      'Text', '用于容纳单个子组件的容器组件,拥有的属性非常多，足够满足适应需求，核心样式由style属性控制。', '/text'),
  ContainerInfo(
      'ListView',
      '可容纳多个子组件，可以通过builder、separated、custom等构造。有内边距、是否反向、滑动控制器等属性。',
      '/listview'),
  ContainerInfo(
      'GridView',
      '以网格的形式容纳多个组件,可以通过count、extent、custom、builder等构造，有内边距、是否反向、滑动控制等属性。',
      '/gridview'),
  ContainerInfo('SingleChildScrollView', '使一个组件具有滑动的效果，可指定滑动的方向、是否反向、滑动控制器等属性。',
      '/singlechildscrollview'),
  ContainerInfo(
      'PageView', '容纳多个组件的页面，可对它们进行滑动切换，指定滑动方向、是否反向、滑动控制器等属性。', '/pageview'),
  ContainerInfo(
      'CircleAvatar', '可将一张图片变成圆形，中间可以放置一个组件。可指定半径、前景色、背景色等。', '/circleavatar'),
  ContainerInfo('Chip', '一个横向的圆边小条，可以包含左中右三个组件。可以指定颜色、阴影色和点击事件。', '/chip'),
  ContainerInfo('InputChip', '和Chip组件类似，集成了点击、删除、选择事件为一体，注意：点击事件和选择事件不能同时存在。',
      '/inputchip'),
  ContainerInfo('FilterChip', '和Chip组件类似，具有选中与否的属性和选中事件，当选中时左侧组件上层会被 √ 遮罩',
      '/filterchip'),
  ContainerInfo(
      'ChoiceChip', '和Chip组件类似，有一些选择的属性，可以指定选中时的颜色，阴影色和选择事件。', '/choicechip'),
  ContainerInfo(
      'ActionChip', '和Chip组件类似，有一些点击的熟悉，可以指定点击时的阴影深浅、点击事件。', '/actionchip'),
  ContainerInfo(
      'Theme', '可通过Theme.of获取ThemeData对象，也可以指定主题应用于Theme的后代组件', '/theme'),
  ContainerInfo('GestureDetector', '组件手势事件的检测器，可接受长按、双击、按下、松开、移动等事件，并可获取触点信息',
      '/gesturedetector'),
  ContainerInfo(
      'UserAccountDrawerHeader',
      'Flutter提供的一个通用展示结构，相应位置可插入组件，很方便地对特定条目，常用于Drawer中',
      '/useraccountdrawerheader'),
  ContainerInfo('ButtonWidget', '各类Button组件', '/button'),
  ContainerInfo('CardWidget', '卡片组件，基于Material组件实现，用于将单个组件卡片化。', '/card'),
  ContainerInfo(
      'VisiblityWidget', '显隐组件，控制一个组件显示或隐藏，可设置隐藏后的占位组件。', '/visiblity'),
  ContainerInfo('ListTileWidget',
      'Flutter提供的一个通用列表条目结构，为左中右结构。相应位置可插入组件，可以很方便地应对特定的条目。', '/listtile'),
  ContainerInfo(
      'CheckboxListTileWidget',
      'Flutter提供的一个通用列表条目结构，为左中结构，尾部是一个Checkbox。相应位置可插入组件，可以很方便地应对特定的条目。',
      '/checkboxlisttile'),
  ContainerInfo(
      'SwitchListTileWidget',
      'Flutter提供的一个通用列表条目结构，为左中结构，尾部是一个Switch。相应位置可插入组件，可以很方便地进行切换。',
      '/switchlisttile'),
  ContainerInfo(
      'RadioListTileWidget',
      'Flutter提供的一个通用列表条目结构，为左中结构，尾部是一个Radio。相应位置可插入组件，可以很方便地进行切换。',
      '/radiolisttile'),
  ContainerInfo('GridTileWidget', 'Flutter提供的一个通用列表条目结构，可指定头、尾、子组件，常用与网格列表.',
      '/gridtile'),
  ContainerInfo('AboutListTileWidget',
      '一个点击条目，点击时可以弹出应用相关信息，可指定应用图标、应用名、应用版本号等信息和内部的子组件列表。', '/aboutlisttile'),
  ContainerInfo(
      'SpacerWidget',
      '只能用于Row、Column和Flex布局中，可利用剩余空间进行占位，使用flex属性可以给多个Spacer按比例分配空间。',
      '/spacer'),
  ContainerInfo('AlertDialogWidget',
      '一个通用的对话框结构，可指定头、中、尾处的组件。拥有标题、内容的文字样式和边距、影深、形状等属性。', '/alertdialog'),
  ContainerInfo(
      'DialogWidget', '最简易的对话框面板，伴晗一个内容组件，可指定影深、背景色、形状等属性。', '/dialog'),
  ContainerInfo('AboutDialogWidget',
      '应用的简介对话框，可指定应用图标、应用名、应用版本号等信息和内部的字组件列表，点击左侧按钮可以调转到证书页。', '/aboutdialog'),
  ContainerInfo('SimpleDialogWidget', '简单的对话框，可指定头、中部的组件。拥有的样式文字和边框、影深、形状等属性。',
      '/simpledialog'),
  ContainerInfo(
      'DayPickerWidget', '日期选择组件，可指定当前日期、选中日期、展示月份等，接受日期选中事件。', '/daypicker'),
  ContainerInfo('SafeAreaWidget', '通过添加内边距，来适配一些手机本身特殊性（圆角、刘海屏等）而所造成的布局问题。',
      '/safearea_widget'),
  ContainerInfo('MaterialBannerWidget', 'Material风格的横幅组件，支持左中右或左中下结构、可指定边距背景色等',
      '/materialbanner_widget'),
  ContainerInfo(
      'NavigationToolbarWidget',
      '左中右模式的通用结构组件，可指定中间组件距左侧边距及是否居中。源码在AppBar等导航条结构中有使用它。',
      '/navigationtoolbar_widget'),
  ContainerInfo('PlaceholderWidget', '一个矩形和叉叉的占位组件，可指定颜色、线宽、宽高等属性。',
      '/placeholder_widget'),
  ContainerInfo('IconWidget', '各类图标组件', '/icon_widget'),
  ContainerInfo('DividerWidget', '各类分割线组件', '/divider_widget'),
  ContainerInfo('MyPreferredSizeWidget', '其他组件（幕布层、返回按钮组件、关闭按钮组件）', '/mypreferredsize_widget'),
  ContainerInfo('CupertinoWidget', 'IOS风格的弹出选择结构以及一些IOS原生的样式', '/cupertion_widget'),

];

final statefulList = <ContainerInfo>[
  ContainerInfo(
      'Image', '用于显示一张图片，可以从文件、内存、网络、资源里加载，可以指定适应方式、样式、颜色混合模式、重复模式。', '/image'),
  ContainerInfo(
      'SliverAppBar', 'SliverAppBar组件可以实现页面头部区域展开、折叠的效果。', '/sliverappbar'),
  ContainerInfo(
      'AnimatedContainer',
      '集alignment、padding、color、decoration、width、height、constraints、margin、transform于一身，'
          '这些属性皆可动画，可指定动画的时长和曲线，有动画结束事件。',
      '/animatedcontainer'),
  ContainerInfo('AnimatedBuilder',
      '通过 builder 使动画对应的节点变为局部更新，且可避免子组件刷新，减少构建事件，提高动画性能。', '/animatedbuilder'),
  ContainerInfo('AnimatedList', '强化版的ListView，可以对item进行动画处理，比如在添加、删除item时的动画。',
      '/animatedlist'),
  ContainerInfo(
      'AnimatedSwitcher',
      '当子组件变化时执行动画，需要指定子组件的key进行标识。动画方式可以自定义，能指定动画时长、动画曲线等属性。',
      '/animatedswitcher'),
  ContainerInfo('AnimatedEffect', '能让子组件进行Opacity(透明度)动画，可指定时长和曲线，有动画结束事件。',
      '/animatedeffect'),
  ContainerInfo(
      'Material', 'Material风格组件的核心，可指定颜色、影深、类型、阴影颜色、形状等属性。', '/material'),
  ContainerInfo(
      'MaterialApp', 'Material 应用的顶级组件，包含路由生成器、主题、语言、主页等属性。', '/materialapp'),
  ContainerInfo(
      'WillPopScope',
      '当一个界面中有 WillPopScope 组件时，在页面返回时会触发回调，决定是否返回。可用于二次确认退出的场景。',
      '/willpopscope'),
  ContainerInfo(
      'Hero', '可指定标签名，两个界面跳转时具有相同标签的组件会进行共享动画。一个界面中不能存在两个同名的Hero标签。', '/hero'),
  ContainerInfo(
      'FutureBuilder',
      '可指定一个Future对象，能够监听异步执行的状态，并在构造器中根据状态构建不同的界面。'
          '注意该Flutter对象不能和FlutterBuilder同时创建，否则可能过度刷新。',
      '/futurebuilder'),
  ContainerInfo(
      'TransitionEffect', '旋转变换、缩放变换、尺寸变换、位置变换、对齐变换等。', '/transitioneffect')
];
