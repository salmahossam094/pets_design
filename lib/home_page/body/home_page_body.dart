import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_market_ui/constants/constants.dart';
import 'package:pet_market_ui/home_page/widgets/pet_cart.dart';

import '../../model/pet_model.dart';

class HomePageBody extends StatelessWidget {
  HomePageBody({super.key});

  List<PetModel> pets = [
    PetModel("1SVXNgYjWidATdPpPfswlWtS31DnhjB-2", "Dog", 'Golden', 20),
    PetModel("152WsHjSIgQUy0gS_WQEo3mWOSMK8v1kM", "Lablador", 'Golden', 18),
    PetModel("1fHoNz-wywIk_ta4RIJzXm7yLrObyKDty", "Dog", 'Cardigan', 12),
    PetModel("1SL7ZirhhuTpgk7wRe_t0vB_3xD9iqCGm", "Cat", 'Street Cat', 17),
    PetModel("1qQILdlJ3gtm_0VBzmSoqgTbisVZ-7kr9", "Cat", 'White Cat', 19),
    PetModel("1LbUWy1JxxkSGSd4cu4dMBK5ChilbFud8", "Bird", 'House Bird', 15),
    PetModel("1B9eAFq_9D75eXtn0BJM6gtq811eby6QN", "Bird", 'Parrot', 14),
    PetModel("1Sg8plSKxYt1kRQn_DH_OdvHiE2FoeQah", "Bird", 'Pink Bird', 15),
    PetModel("1Sg8plSKxYt1kRQn_DH_OdvHiE2FoeQah", "Bird", 'Talking Parrot', 17),
    PetModel("11tVuPyyv23mByiFNHrJRuE55gyhMrGA2", "Rat", 'Hamster', 9),
    PetModel("1huzYq6qlL4BiFzXqD7SuMYM67J5Ea0bV", "Rabbit", 'Brown Rabbit', 16),
    PetModel("1lxI-yXMPIp2nz2MLc7duJ5Sw6lrA-AsJ", "Rabbit", 'Gray Rabbit', 16),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13, right: 13),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.r),
                      borderSide: const BorderSide(color: Colors.transparent)),
                  fillColor: mainColor,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.r),
                      borderSide: const BorderSide(color: Colors.transparent)),
                  hintStyle:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 22.sp),
                  hintText: 'Search by pet type',
                  prefixIcon: const RotatedBox(
                      quarterTurns: 1,
                      child: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.amberAccent,
                      ))),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 19.h,
            ),
            Container(
              width: 370.w,
              height: 450.h,
              color: mainColor,
              child: ListView.builder(
                itemCount: pets.length,
                itemBuilder: (context, index) => PetCart(pets[index]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
