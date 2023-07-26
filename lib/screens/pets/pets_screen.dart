import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:pet_care/components/glassmorphic_component.dart';
import 'package:pet_care/controllers/login_controller.dart';
import 'package:pet_care/controllers/pets_controller.dart';
import 'package:pet_care/models/pets.dart';
import 'package:pet_care/screens/pets/card_pet.dart';
import 'package:sizer/sizer.dart';

class PetsScreen extends StatefulWidget {
  const PetsScreen({Key? key}) : super(key: key);

  @override
  PetsScreenState createState() => PetsScreenState();
}

class PetsScreenState extends State<PetsScreen> {
  final loginController = Get.put(LoginController());
  final petsController = Get.put(PetsController());

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return WillPopScope(
      onWillPop: () {
        exit(0);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: CustomGlassmorphicContainer(
          width: queryData.size.width,
          height: queryData.size.height,
          borderRadius: 10,
          child: Stack(
            children: [
              Opacity(
                opacity: 0.5,
                child: LottieBuilder.asset(
                  "assets/image/wpp.json",
                  width: queryData.size.width,
                  height: queryData.size.height,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: queryData.size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "QUEM É O BOM GAROTO(A)?",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: queryData.size.height * 0.65,
                      margin: const EdgeInsets.all(10),
                      child: Obx(
                        () => petsController.pets.isNotEmpty
                            ? GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisExtent: 200,
                                ),
                                itemCount: petsController.pets.length + 1,
                                shrinkWrap: true,
                                itemBuilder: (ctx, index) {
                                  if (index < petsController.pets.length) {
                                    Pets pet = petsController.pets[index];
                                    return CardPet(
                                      pet: pet,
                                      ultimo: false,
                                    );
                                  } else {
                                    return CardPet(
                                      pet: null,
                                      ultimo: true,
                                    );
                                  }
                                },
                              )
                            : CardPet(
                                pet: null,
                                ultimo: true,
                              ),
                      ),
                    ),
                    Column(
                      children: [
                        const Icon(
                          Ionicons.paw,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          "PET SAÚDE",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}