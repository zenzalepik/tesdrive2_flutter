import 'package:belajar_sistem_pajak/pages/materi/m2_spt/materi_spt_02_aturan_page.dart';
import 'package:belajar_sistem_pajak/pages/materi/m3_pph/materi_pph_02_aturan_page.dart';
import 'package:belajar_sistem_pajak/widgets/buttons.dart';
import 'package:belajar_sistem_pajak/styles/colors.dart';
import 'package:belajar_sistem_pajak/styles/typography.dart';
import 'package:belajar_sistem_pajak/widgets/mark.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MateriPPh01Page extends StatefulWidget {
  const MateriPPh01Page({super.key});

  @override
  State<MateriPPh01Page> createState() => _MateriPPh01PageState();
}

class _MateriPPh01PageState extends State<MateriPPh01Page> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor:
          Colors.transparent, // Ubah warna status bar menjadi transparan
      statusBarIconBrightness:
          Brightness.light, // Ubah warna teks status bar menjadi putih
    ));
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          title: Text(
            '',
            style: Tulisan.H1(), // Menggunakan primaryTextStyle dari katalog
          ),
          centerTitle: true,
          leading: IconButton(
            icon: SvgPicture.asset(
              'assets/images/svg/img_back.svg', // Path ke file SVG di dalam proyek Anda
              // width: 180,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              icon: SvgPicture.asset(
                'assets/images/svg/img_menu_home.svg', // Path ke file SVG di dalam proyek Anda
                // width: 180,
              ),
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);

                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => FrontMenuPage()),
                // );
              },
            )
          ],
          backgroundColor:
              Warna.transparent, // Mengatur warna app bar menjadi transparan
          elevation: 0),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/img_bg_home.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            // Image.asset("assets/images/img_bg_home.png"),
            // Positioned(
            //   bottom: 0,
            //   right: -80,
            //   left: -80,
            //   child:
            // ),

            Positioned(
              // top: 48,
              // right: 12,
              child: SvgPicture.asset(
                'assets/images/svg/img_planet_purple.svg', // Path ke file SVG di dalam proyek Anda
                width: 180,
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(height: 40),
                    /*
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Jelajahi',
                                textAlign: TextAlign.center,
                                style: Tulisan
                                    .H1(), // Menggunakan primaryTextStyle dari katalog
                              ),
                              Text(
                                'Sekarang',
                                textAlign: TextAlign.center,
                                style: Tulisan
                                    .H1(), // Menggunakan primaryTextStyle dari katalog
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
           */
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MarkEmas(
                            onPressed: () {
                              //                Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => ()),
                              // );
                            },
                            text: "MATERI PPh")
                      ],
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MarkSubtitle(
                            onPressed: () {
                              //                Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => ()),
                              // );
                            },
                            text: "01. Pengertian")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  SizedBox(
                                    // height: 120,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        right: 20,
                                        bottom: 40,
                                      ),
                                      // right: -20,
                                      // bottom: 20,
                                      child: Container(
                                        padding: EdgeInsets.all(16),
                                        // height: 80,
                                        decoration: BoxDecoration(
                                            color: Warna.dark_purple,
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                        child: RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(
                                            style: Tulisan.commic(),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: "PPh",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              TextSpan(
                                                text:
                                                    " adalah pajak yang dikenakan atas penghasilan yang diterima atau diperoleh ",
                                              ),
                                              TextSpan(
                                                  text: "Wajib Pajak",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              TextSpan(
                                                text: " dalam suatu ",
                                              ),
                                              TextSpan(
                                                  text: "tahun pajak",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              TextSpan(
                                                text: ".",
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // padding: EdgeInsets.only(
                                    // right: 20,
                                    // ),
                                    right: 0,
                                    top: 100,
                                    child: SvgPicture.asset(
                                      'assets/images/svg/img_astronot.svg',
                                      width: 80,
                                      // height: 40,
                                      // fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  SizedBox(
                                    // height: 120,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        right: 0,
                                        bottom: 40,
                                      ),
                                      // right: -20,
                                      // bottom: 20,
                                      child: Container(
                                        padding: EdgeInsets.all(16),
                                        // height: 80,
                                        decoration: BoxDecoration(
                                            color: Warna.dark_purple,
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                        child: RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(
                                            style: Tulisan.commic(),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: "Penghasilan",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              TextSpan(
                                                text: " adalah setiap ",
                                              ),
                                              TextSpan(
                                                  text: "keuntungan ekonomi",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              TextSpan(
                                                text:
                                                    " yang diperoleh Wajib Pajak dari sumber di dalam dan/atau di luar negeri yang dapat diukur dengan uang, termasuk gaji, upah, bonus, honorarium, hadiah, dan lain-lain.",
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 80),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Warna.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Container(
                        // height: 8,
                        width: double.infinity,
                        // padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: Warna.orange2,
                            borderRadius: BorderRadius.circular(12)),

                        child: FractionallySizedBox(
                          alignment: Alignment.centerLeft, // Align to the left

                          widthFactor: 1 / 8, // 20% width of parent

                          child: Container(
                              // height: 8,
                              // width: MediaQuery.of(context).size.width * 0.2,
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  color: Warna.blue,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: Text('1/8',
                                    style: Tulisan.buttonJawaban(
                                      color: Warna.white,
                                    )),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: SvgPicture.asset(
                              'assets/images/svg/img_tombol_kembali.svg'),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => MateriPPh02Page(),
                              ),
                            );
                          },
                          child: SvgPicture.asset(
                              'assets/images/svg/img_tombol_lanjut.svg'),
                        )
                      ],
                    ),
                    SizedBox(height: 80),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                              width: 64, "assets/images/svg/img_back.svg"),
                          SvgPicture.asset(
                              width: 64, "assets/images/svg/img_home.svg"),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Stack(
                      children: [
                        Image.asset(
                          'assets/images/img_cloud.png',
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 8,
                          right: 0,
                          left: 0,
                          child: Center(
                            child: Column(
                              children: [
                                //   Padding(
                                //     padding: const EdgeInsets.symmetric(horizontal: 64),
                                //     child: Row(
                                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //       children: [
                                //         SvgPicture.asset(
                                //             width: 64,
                                //             "assets/images/svg/img_back.svg"),
                                //         SvgPicture.asset(
                                //             width: 64,
                                //             "assets/images/svg/img_home.svg"),
                                //       ],
                                //     ),
                                //   ),
                                //
                                SizedBox(height: 8),
                                Text(
                                  textAlign: TextAlign.center,
                                  'hafis.muaddab.2304319@students.um.ac.id',
                                  style: Tulisan.small(
                                    color: Warna.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
