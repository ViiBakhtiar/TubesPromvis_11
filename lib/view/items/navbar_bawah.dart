// ignore_for_file: library_private_types_in_public_api, must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CustomImageView extends StatelessWidget {
  ///[imagePath] parameter untuk menampilkan gambar extensi png,jpg,dll
  String? imagePath;

  double? height;
  double? width;
  Color? color;
  BoxFit? fit;
  final String placeHolder;
  Alignment? alignment;
  VoidCallback? onTap;
  EdgeInsetsGeometry? margin;
  BorderRadius? radius;
  BoxBorder? border;

  ///a [CustomImageView] it can be used for showing any type of images
  /// it will shows the placeholder image if image is not found on network image
  CustomImageView({
    this.imagePath,
    this.height,
    this.width,
    this.color,
    this.fit,
    this.alignment,
    this.onTap,
    this.radius,
    this.margin,
    this.border,
    this.placeHolder = 'assets/images/image_not_found.png',
  });

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildWidget(),
          )
        : _buildWidget();
  }

  Widget _buildWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(
        onTap: onTap,
        child: _buildCircleImage(),
      ),
    );
  }

  ///build the image with border radius
  _buildCircleImage() {
    if (radius != null) {
      return ClipRRect(
        borderRadius: radius,
        child: _buildImageWithBorder(),
      );
    } else {
      return _buildImageWithBorder();
    }
  }

  ///build the image with border and border radius style
  _buildImageWithBorder() {
    if (border != null) {
      return Container(
        decoration: BoxDecoration(
          border: border,
          borderRadius: radius,
        ),
        child: _buildImageView(),
      );
    } else {
      return _buildImageView();
    }
  }

  Widget _buildImageView() {
    if (imagePath != null && imagePath!.isNotEmpty) {
      return Image.asset(
        imagePath!,
        height: height,
        width: width,
        fit: fit ?? BoxFit.cover,
        color: color,
      );
    }
    return SizedBox();
  }
}

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

// make image (navbar icons) as a string
class ImageConstant {
  static String imgBeranda = 'assets/images/img_beranda_kuning.png';
  static String imgPostingan = 'assets/images/img_postingan.png';
  static String imgPortofolio = 'assets/images/img_portofolio.png';
  static String imgLaporan = 'assets/images/img_laporan.png';
  static String imgProfil = 'assets/images/img_profil.png';
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomNavModel> bottomNavList = [
    BottomNavModel(
      icon: ImageConstant.imgBeranda,
      type: BottomBarEnum.beranda,
    ),
    BottomNavModel(
      icon: ImageConstant.imgPostingan,
      type: BottomBarEnum.postingan,
    ),
    BottomNavModel(
      icon: ImageConstant.imgPortofolio,
      type: BottomBarEnum.portofolio,
    ),
    BottomNavModel(
      icon: ImageConstant.imgLaporan,
      type: BottomBarEnum.laporan,
    ),
    BottomNavModel(
      icon: ImageConstant.imgProfil,
      type: BottomBarEnum.profil,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withOpacity(0.8),
              blurRadius: 2,
            ),
          ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomNavList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomNavList[index].icon,
              height:35,
              width:37,
              color: Colors.grey,
            ),
            activeIcon:CustomImageView(
              imagePath: bottomNavList[index].icon,
              height:35,
              width: 41,
              color: Colors.yellow,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomNavList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  beranda,
  postingan,
  portofolio,
  laporan,
  profil,
}

class BottomNavModel {
  BottomNavModel({required this.icon, required this.type});

  String icon;

  BottomBarEnum type;

  String? imgPath;
}


class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[900],
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'No Page Loaded',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
