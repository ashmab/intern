// import 'controller/login_controller.dart';
// import 'package:flutt/core/app_export.dart';
// import 'package:flutt/core/widgets/CustomButtonGray9001.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// class LoginScreen extends GetWidget<LoginController> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             backgroundColor: ColorConstant.white_A700,
//             resizeToAvoidBottomInset: true,
//             body: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Expanded(
//                       child: SingleChildScrollView(
//                           child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Container(
//                                     child: Stack(children: [
//                                       Padding(
//                                           padding:
//                                           EdgeInsets.only(bottom: getVerticalSize(4)),
//                                           child: SvgPicture.asset(ImageConstant.img_frame,
//                                               height: getVerticalSize(445),
//                                               width: getHorizontalSize(375),
//                                               fit: BoxFit.cover)),
//                                       Padding(
//                                           padding: EdgeInsets.only(
//                                               left: getHorizontalSize(46),
//                                               top: getVerticalSize(419),
//                                               right: getHorizontalSize(46)),
//                                           child: Text("msg_your_home_servi".tr,
//                                               textAlign: TextAlign.center,
//                                               style: AppStyle.textStyleRalewaybold22
//                                                   .copyWith(fontSize: getFontSize(22))))
//                                     ])),
//                                 Padding(
//                                     padding: EdgeInsets.only(
//                                         left: getHorizontalSize(72),
//                                         top: getVerticalSize(15),
//                                         right: getHorizontalSize(73)),
//                                     child: Text("msg_continue_with_p".tr,
//                                         textAlign: TextAlign.left,
//                                         style: AppStyle.textStyleIntermedium15
//                                             .copyWith(fontSize: getFontSize(15)))),
//                                 Container(
//                                     margin: EdgeInsets.only(
//                                         left: getHorizontalSize(26),
//                                         top: getVerticalSize(28),
//                                         right: getHorizontalSize(27)),
//                                     decoration: BoxDecoration(
//                                         color: ColorConstant.gray_101,
//                                         borderRadius: BorderRadius.circular(
//                                             getHorizontalSize(15))),
//                                     child: Stack(children: [
//                                       Container(
//                                           width: getHorizontalSize(327),
//                                           margin: EdgeInsets.only(
//                                               top: getVerticalSize(14),
//                                               bottom: getVerticalSize(13)),
//                                           child: Row(
//                                               mainAxisAlignment:
//                                               MainAxisAlignment.start,
//                                               children: [
//                                                 Padding(
//                                                     padding: EdgeInsets.only(
//                                                         left: getHorizontalSize(14),
//                                                         top: getVerticalSize(5),
//                                                         bottom: getVerticalSize(6)),
//                                                     child: SvgPicture.asset(
//                                                         ImageConstant
//                                                             .img_unitedstatesofamerica_1_1,
//                                                         height: getHorizontalSize(25),
//                                                         width: getHorizontalSize(25),
//                                                         fit: BoxFit.cover)),
//                                                 Padding(
//                                                     padding: EdgeInsets.only(
//                                                         left: getHorizontalSize(11),
//                                                         top: getVerticalSize(9),
//                                                         bottom: getVerticalSize(9)),
//                                                     child: Text("lbl_usa".tr,
//                                                         textAlign: TextAlign.left,
//                                                         style: AppStyle
//                                                             .textStyleRobotolight15
//                                                             .copyWith(
//                                                             fontSize:
//                                                             getFontSize(15)))),
//                                                 Padding(
//                                                     padding: EdgeInsets.only(
//                                                         left: getHorizontalSize(10),
//                                                         top: getVerticalSize(7),
//                                                         bottom: getVerticalSize(8)),
//                                                     child: Text("lbl_1".tr,
//                                                         textAlign: TextAlign.left,
//                                                         style: AppStyle
//                                                             .textStyleRobotolight18
//                                                             .copyWith(
//                                                             fontSize:
//                                                             getFontSize(18)))),
//                                                 Padding(
//                                                     padding: EdgeInsets.only(
//                                                         left: getHorizontalSize(6),
//                                                         top: getVerticalSize(13),
//                                                         bottom: getVerticalSize(15)),
//                                                     child: Image.asset(
//                                                         ImageConstant.img_polygon_1_1,
//                                                         height: getVerticalSize(7.07),
//                                                         width: getHorizontalSize(11.24),
//                                                         fit: BoxFit.cover)),
//                                                 Container(
//                                                     height: getVerticalSize(36),
//                                                     width: getHorizontalSize(0.5),
//                                                     margin: EdgeInsets.only(
//                                                         left: getHorizontalSize(9)),
//                                                     decoration: BoxDecoration(
//                                                         color: ColorConstant.gray_601)),
//                                                 Expanded(
//                                                     child: Padding(
//                                                         padding: EdgeInsets.only(
//                                                             left: getHorizontalSize(12),
//                                                             top: getVerticalSize(9),
//                                                             right:
//                                                             getHorizontalSize(12),
//                                                             bottom: getVerticalSize(9)),
//                                                         child: Text(
//                                                             "msg_enter_mobile_nu".tr,
//                                                             overflow:
//                                                             TextOverflow.ellipsis,
//                                                             textAlign: TextAlign.left,
//                                                             style: AppStyle
//                                                                 .textStyleInterregular15_1
//                                                                 .copyWith(
//                                                                 fontSize:
//                                                                 getFontSize(
//                                                                     15)))))
//                                               ]))
//                                     ])),
//                                 Padding(
//                                     padding: EdgeInsets.only(
//                                         left: getHorizontalSize(26),
//                                         top: getVerticalSize(20),
//                                         right: getHorizontalSize(27)),
//                                     child: CustomButtonGray9001(
//                                         text: "lbl_sign_up".tr,
//                                         height: getVerticalSize(63),
//                                         width: getHorizontalSize(322),
//                                         fontSize: 17)),
//                                 Padding(
//                                     padding: EdgeInsets.only(
//                                         left: getHorizontalSize(115),
//                                         top: getVerticalSize(12),
//                                         right: getHorizontalSize(115)),
//                                     child: Text("msg_view_other_opti".tr,
//                                         textAlign: TextAlign.left,
//                                         style: AppStyle.textStyleIntermedium13
//                                             .copyWith(fontSize: getFontSize(13)))),
//                                 GestureDetector(
//                                     onTap: () {
//                                       onTapTxtAlreadyhavean();
//                                     },
//                                     child: Padding(
//                                         padding: EdgeInsets.only(
//                                             left: getHorizontalSize(40),
//                                             top: getVerticalSize(29),
//                                             right: getHorizontalSize(40),
//                                             bottom: getVerticalSize(45)),
//                                         child: Text("msg_already_have_an".tr,
//                                             textAlign: TextAlign.center,
//                                             style: AppStyle
//                                                 .textStyleHelveticaNeuemedium14
//                                                 .copyWith(fontSize: getFontSize(14)))))
//                               ])))
//                 ])));
//   }
//
//   onTapTxtAlreadyhavean() {
//     Get.toNamed(AppRoutes.loginOldUsersScreen);
//   }
// }
