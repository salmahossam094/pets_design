import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_market_ui/model/pet_model.dart';

class PetCart extends StatelessWidget {
   PetCart(this.petModel,{super.key});
  PetModel petModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(

            shape: OutlineInputBorder(
              borderSide:const BorderSide(color: Colors.transparent) ,
              borderRadius: BorderRadius.circular(20.r),),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SizedBox(
                    height:112.h ,
                    width: 115.w,
                    child: Image(
                      image: NetworkImage(
                        'https://drive.google.com/uc?export=view&id=${petModel.id}',
                      ),
                      height: 112.h,
                      width: 115.w,
                    ),
                  ),
                ),
                SizedBox(
                  width: 13.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0),
                      child: Text(
                        petModel.name,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 22.sp,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                       petModel.type,
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFACACAC)),
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset('assets/images/pawprintImg.png'),
                        SizedBox(
                          width: 9.w,
                        ),
                        Text(
                          'Pet Love: ${petModel.loveNum}',
                          style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFDB6400)),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
