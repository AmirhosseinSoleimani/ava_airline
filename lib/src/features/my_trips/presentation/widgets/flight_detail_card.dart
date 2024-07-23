import 'package:ava_airline/generated/l10n.dart';
import 'package:flutter/material.dart';

class FlightDetailCard extends StatelessWidget {
  const FlightDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),

      decoration:const  BoxDecoration(
          color:Colors.white,
          borderRadius:  BorderRadius.vertical(top: Radius.circular(30),bottom:Radius.circular(20) )
      ),
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(

                          children: [
                            SizedBox(
                                height: 80,
                                width: 80,
                                child: Image.asset("assets/image/ava.png",)),

                            Directionality(textDirection: TextDirection.ltr,child: Icon(Icons.flight_takeoff,size: 35,color: Theme.of(context).colorScheme.primary,)),
                            const  SizedBox(height: 10,),
                            Text(localization.totalPrice,style: Theme.of(context).textTheme.labelMedium!.copyWith(color: Colors.grey[700]),),
                            Text(localization.totalPriceMock,style: Theme.of(context).textTheme.displayLarge,),



                          ],
                        ),
                        Transform.rotate(
                          angle: 0.3,
                          child: SizedBox(
                            height: 125,
                            width: 160,
                            child: Image.asset("assets/image/world.png",color: Theme.of(context).primaryColor,),
                          ),
                        ),

                      ],
                    ),
                  ),
                    Divider(color: Colors.grey[300],),
                  const  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(localization.flightDate,style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey)),
                          Text(localization.sampleDateTicket,style: Theme.of(context).textTheme.displayLarge,),

                        ],
                      ),
                      Column(
                        children: [
                          Text(localization.gate,style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey)),
                          Text('B2',style: Theme.of(context).textTheme.displayLarge,),
                        ],
                      ),
                      Column(
                        children: [
                          Text(localization.flightNo,style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey)),
                          Text('KB76',style: Theme.of(context).textTheme.displayLarge,),
                        ],
                      )
                    ],
                  ),
                  const   SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text( localization.boardingTime,style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey)),
                          Text(localization.sampleTime1,style: Theme.of(context).textTheme.displayLarge,),
                        ],
                      ),
                      Column(
                        children: [
                          Text(localization.seat,style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey)),
                          Text('19A',style: Theme.of(context).textTheme.displayLarge,),

                        ],
                      ),
                      Column(
                        children: [
                          Text(localization.clas,style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey)),
                          Text(localization.economy,style: Theme.of(context).textTheme.displayLarge,),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),

            Stack(
              children: [

                SizedBox(
                  height: 25,
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          height: 1,
                          child: Row(
                            children: List.generate(
                                700 ~/ 10,
                                    (index) => Expanded(
                                  child: Container(
                                    color:
                                    index % 2 == 0 ? Colors.transparent :Theme.of(context).canvasColor,
                                    height: 2,
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    left: -10,
                    bottom: 0,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: Theme.of(context).colorScheme.surface,
                    )),
                Positioned(
                    right: -10,
                    bottom: 0,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: Theme.of(context).colorScheme.surface,
                    ))
              ],
            ),
            Column(
              children: [
                Center(child: Text( localization.boardingPass,style: Theme.of(context).textTheme.titleLarge,)),
                Center(
                  child: SizedBox(
                    width: 280,
                    height: 100,
                    child: Image.asset("assets/image/barcode.webp",fit: BoxFit.fill,),
                  ),
                ),

              ],
            ),

          ],
        ),


      ),

    );
  }
}
