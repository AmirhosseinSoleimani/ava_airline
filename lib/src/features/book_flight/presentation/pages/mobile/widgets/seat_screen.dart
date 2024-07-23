
import 'package:ava_airline/generated/l10n.dart';
import 'package:flutter/material.dart';

class SeatScreen extends StatefulWidget {
  const SeatScreen({super.key});

  @override
  State<SeatScreen> createState() => _SeatScreenState();
}

class _SeatScreenState extends State<SeatScreen> {
  List<int>selectedSeat=[];
  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        color: Theme.of(context).colorScheme.secondary,
        height: MediaQuery.of(context).size.height*0.75,
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.cancel_outlined,
                      color: Colors.red.shade800,
                    ))
              ],),
              Expanded(
                child: Row(
                  children: [

                    Stack(
                      children: [

                        Column(
                          children: [
                            Expanded(
                              child: ClipOval(
                                child:
                                Container(
                                    width: 200,
                                    color:const  Color(0xff0e1f80)
                                ),
                              ),
                            ),
                            const SizedBox(height: 100,),

                          ],
                        ),
                        Column(

                          children: [
                            const SizedBox(height: 100,),
                            Expanded(
                              child: Container(

                                width: 200,
                                decoration: const BoxDecoration(
                                    borderRadius:  BorderRadius.vertical(top: Radius.circular(100)),
                                    color: Color(0xff0e1f80)
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(

                          children: [
                            const  SizedBox(
                              width: 200,
                              height: 20,),
                            Center(
                              child: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: Image.asset("assets/image/ava.png",color: Theme.of(context).indicatorColor,)),
                            ),
                            // TextUtil(text: "${flightList[0].date} ${flightList[0].boardingTime}",color: Colors.white,size:12,weight: true,),
                            const  SizedBox(height: 10,),
                            // TextUtil(text: "Economy Class",color: Theme.of(context).indicatorColor,size:12,weight: true,),
                            const  SizedBox(height: 10,),
                            Expanded(
                              child: SizedBox(
                                  child: Column(
                                    children: [
                                      for(int j=0;j<8;j++)...[Expanded(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                for(int i=0;i<4;i++)...[
                                                  GestureDetector(
                                                    onTap: (){
                                                      setState(() {
                                                        selectedSeat.clear();

                                                        selectedSeat.addAll([j,i]);
                                                      });
                                                    },
                                                    child: Container(
                                                      margin:   EdgeInsets.only(right: i==1?20:5),
                                                      height: 35,
                                                      width: 30,
                                                      decoration: BoxDecoration(
                                                          color:selectedSeat.isNotEmpty?selectedSeat[0]==j&&selectedSeat[1]==i?Theme.of(context).indicatorColor: Colors.transparent:Colors.transparent,
                                                          borderRadius: BorderRadius.circular(8),
                                                          border: Border.all(color: selectedSeat.isNotEmpty?selectedSeat[0]==j&&selectedSeat[1]==i?Theme.of(context).indicatorColor: Theme.of(context).canvasColor:Theme.of(context).canvasColor)
                                                      ),
                                                    ),
                                                  )
                                                ]


                                              ],
                                            ),
                                            const Spacer(),
                                          ],
                                        ),
                                      ),]

                                    ],
                                  )
                              ),
                            )


                          ],

                        ),

                      ],
                    ),
                    const  Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('THR',style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white)),
                            Text(localization.tehran,style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white)),
                          ],
                        ),

                        Container(
                          height: 60,
                          width: 60,
                          padding:const  EdgeInsets.all(1),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  stops:const  [
                                    0.5,0.5
                                  ],
                                  colors:[
                                    Theme.of(context).indicatorColor,
                                    Theme.of(context).colorScheme.secondary
                                  ]
                              )
                          ),

                          child: Container(
                            padding: const EdgeInsets.only(top: 10),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Theme.of(context).colorScheme.secondary,
                            ),

                            child: Column(
                              children: [
                                Transform.rotate(
                                    angle: 6,
                                    child: Icon(Icons.flight_takeoff,size: 25,color:Theme.of(context).indicatorColor)),
                                const SizedBox(height: 4),
                                const Text('1:30',style:TextStyle(fontSize: 12,color: Colors.white),)
                              ],
                            ),

                          ),

                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('MHD',style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white)),
                            Text(localization.mashhad,style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white)),
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            selectedSeat.isEmpty?const SizedBox(height: 32,): Text("${selectedSeat[0]}${selectedSeat[1]}",style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.white),),
                            Text(localization.seat,style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white))
                          ],
                        ),
                        const   SizedBox(),

                      ],
                    ),
                    const  Spacer(),
                  ],

                ),
              ),
              const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
