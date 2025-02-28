import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/routes/routes.dart';
import 'package:my_portfolio/core/utils/constants.dart';
import 'package:my_portfolio/core/utils/utils.dart';
import 'package:my_portfolio/models/carousel_item_model.dart';
import 'package:my_portfolio/provider/theme.dart';

List<CarouselItemModel> carouselItems(
        double carouselContainerHeight, BuildContext context) =>
    List.generate(
      5,
      (index) => CarouselItemModel(
        text: SizedBox(
          height: carouselContainerHeight,
          child: Stack(
            // clipBehavior: Clip.none,
            // fit: StackFit.expand,
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Mobile Application Developer",
                      style: GoogleFonts.josefinSans(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 18.0,
                        letterSpacing: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    Text(
                      "Muhammad Ahmed".toUpperCase(),
                      style: GoogleFonts.josefinSans(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w900,
                        height: 1.3,
                        letterSpacing: 2.3,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.work,
                          color: kCaptionColor,
                          size: 14,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "Software Engineer   |",
                          style: TextStyle(
                            color: kCaptionColor,
                            fontSize: 15.0,
                            height: 1.0,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.location_on,
                          color: kCaptionColor,
                          size: 14,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "Islamabad, Pakistan",
                          style: TextStyle(
                            color: kCaptionColor,
                            fontSize: 15.0,
                            height: 1.0,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      height: 48.0,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 28.0,
                      ),
                      child: TextButton(
                        onPressed: () {
                          // context.pushNamed(Routes.videoDownloader);
                          //   Utilty.openUrl(AppConstants.linkedInUrl);
                          Utilty.openWhatsapp();
                        },
                        child: Text(
                          "Lets Talk",
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Align(
                alignment: Alignment.bottomLeft,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: SizedBox(
                    height: 70,
                    child: Consumer(builder: (context, ref, _) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: AppConstants.socialLoginDatas
                            .map((e) => Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: InkWell(
                                    onTap: e.onTap,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      margin: const EdgeInsets.all(5),
                                      // child: Image.asset(e.title),
                                      child: Center(
                                        child: FaIcon(
                                          e.iconData,
                                          color: ref
                                                  .watch(themeProvider)
                                                  .isDarkMode
                                              ? MyThemes.lightTheme
                                                  .scaffoldBackgroundColor
                                              : MyThemes.darkTheme
                                                  .scaffoldBackgroundColor
                                                  .withOpacity(0.8),
                                        ),
                                      ),
                                    ),
                                  ),
                                ))
                            .toList(),
                      );
                    }),
                  ),
                ),
              )
            ],
          ),
        ),
        image: Container(
          child:
              SvgPicture.asset(AppConstants.guySvg, semanticsLabel: 'Guy Logo'),
        ),
      ),
    );
