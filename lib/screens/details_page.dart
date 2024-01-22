import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manager/widgets/appbar.dart';
import 'package:manager/widgets/textfeild.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final bootNotificationController = TextEditingController();
  final heartBeatController = TextEditingController();
  final hardResetController = TextEditingController();
  final changeAvaialbilityController = TextEditingController();
  final getConfigurationCSToCPController = TextEditingController();
  final changeConfigurationCSToCPController = TextEditingController();
  final appInstallationController = TextEditingController();
  final loginOrSignUpExistingCustomerController = TextEditingController();
  final loginOrSignUpNewCustomerController = TextEditingController();
  final topUpByPaytmController = TextEditingController();
  final topUpByUPIController = TextEditingController();
  final sessionByRFIDController = TextEditingController();
  final remoteStartFromCMSController = TextEditingController();
  final scanFromAppController = TextEditingController();
  final remoteStartFromAppForATeamMemberController = TextEditingController();
  final autoCutOffController = TextEditingController();
  final emergencyStopController = TextEditingController();
  final interruptedSessionController = TextEditingController();
  final interruptedSessionPowerOffController = TextEditingController();
  final interruptedSessionConnectivityController = TextEditingController();
  final autochargeController = TextEditingController();
  final pushNotificationController = TextEditingController();
  final site = 'Office Charger Olympia';
  final cpid = 'CP1001';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            const IrisAppBar(),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(242, 242, 242, 1),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(1, 242, 242, 242),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Site: $site',
                                  style: const TextStyle(
                                    fontFamily: 'comic',
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 102, 102, 102),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          const Color.fromRGBO(255, 0, 11, 1),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Icon(
                                        Icons.logout,
                                        size: 18,
                                        color:
                                            Color.fromARGB(255, 98, 190, 255),
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        'Logout',
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 14,
                                            color: const Color.fromARGB(
                                                255, 98, 190, 255)),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'CPID: $cpid',
                                  style: const TextStyle(
                                    fontFamily: 'comic',
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 102, 102, 102),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          const Color.fromRGBO(255, 0, 11, 1),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: 18,
                                        width: 18,
                                        child: Image.asset(
                                            'assets/images/Frame.png'),
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text('Download Script',
                                          style: GoogleFonts.ibmPlexSans(
                                              fontSize: 14,
                                              color: const Color.fromARGB(
                                                  255, 98, 190, 255))),
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Allowed Responses',
                                    style: TextStyle(
                                      fontFamily: 'comic',
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 102, 102, 102),
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Success On First Try, Failed, Partially Success, Not Applicable, Success After Retry',
                                    style: TextStyle(
                                        fontFamily: 'TimesNewRoman',
                                        fontSize: 16),
                                  ),
                                ]),
                          ),
                        ),
                        CustomTextFeild(
                          controller: bootNotificationController,
                          text: 'Boot Notification',
                          maxLines: 3,
                        ),
                        CustomTextFeild(
                          controller: heartBeatController,
                          text: 'Heart Beat',
                          maxLines: 3,
                        ),
                        CustomTextFeild(
                          controller: hardResetController,
                          text: 'Hard Reset',
                          maxLines: 3,
                        ),
                        CustomTextFeild(
                          controller: changeAvaialbilityController,
                          text: 'Change Availability',
                          maxLines: 3,
                        ),
                        CustomTextFeild(
                          controller: getConfigurationCSToCPController,
                          text: 'Get Configuration (CS To CP)',
                          maxLines: 3,
                        ),
                        CustomTextFeild(
                          controller: changeConfigurationCSToCPController,
                          text: 'Change Configuration (CS To CP)',
                          maxLines: 3,
                        ),
                        CustomTextFeild(
                          controller: appInstallationController,
                          text: 'App Installation',
                          maxLines: 3,
                        ),
                        CustomTextFeild(
                          controller: loginOrSignUpExistingCustomerController,
                          text: 'Login/SignUp (Existing Customer)',
                          maxLines: 3,
                        ),
                        CustomTextFeild(
                          controller: loginOrSignUpNewCustomerController,
                          text: 'Login/SignUp (New Customer)',
                          maxLines: 3,
                        ),
                        CustomTextFeild(
                          controller: topUpByPaytmController,
                          text: 'Top-up by Paytm',
                          maxLines: 3,
                        ),
                        CustomTextFeild(
                          controller: topUpByUPIController,
                          text: 'Top-up by UPI',
                          maxLines: 3,
                        ),
                        CustomTextFeild(
                          controller: sessionByRFIDController,
                          text: 'Session By RFID',
                          maxLines: 3,
                        ),
                        CustomTextFeild(
                          controller: remoteStartFromCMSController,
                          text: 'Remote Start From CMS',
                          maxLines: 3,
                        ),
                        CustomTextFeild(
                          controller: scanFromAppController,
                          text: 'Scan From App',
                          maxLines: 3,
                        ),
                        CustomTextFeild(
                          controller:
                              remoteStartFromAppForATeamMemberController,
                          text: 'Remote Start From App (for a team member)',
                          maxLines: 3,
                        ),
                        CustomTextFeild(
                          controller: autoCutOffController,
                          text: 'Auto Cut Off',
                          maxLines: 3,
                        ),
                        CustomTextFeild(
                          controller: emergencyStopController,
                          text: 'Emergency Stop',
                          maxLines: 3,
                        ),
                        CustomTextFeild(
                          controller: interruptedSessionPowerOffController,
                          text: 'Interrupted session (PowerOff)',
                          maxLines: 3,
                        ),
                        CustomTextFeild(
                          controller: interruptedSessionConnectivityController,
                          text: 'Interrupted Session (Connectivity)',
                          maxLines: 3,
                        ),
                        CustomTextFeild(
                          controller: autochargeController,
                          text: 'Autocharge Controller',
                          maxLines: 3,
                        ),
                        CustomTextFeild(
                          controller: pushNotificationController,
                          text: 'Push Notification',
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
