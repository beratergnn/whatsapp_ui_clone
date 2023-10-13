import 'package:flutter/material.dart';

import 'package:whatsapp_ui_clone/constant/colors.dart';
import 'package:whatsapp_ui_clone/models/calls_model.dart';
import 'package:whatsapp_ui_clone/pages/tab-pages/list-components/comp_call_list.dart';

class CallsPage extends StatelessWidget {
  List<CallModel> getCallList = [];

  Future<List<CallModel>> uploadCalls() async {
    getCallList = CallModel.getCalls();
    return getCallList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wpScaffoldBackGroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: wpTealGreen,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.link, size: 30),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Arama bağlantısı oluştur',
                      style: TextStyle(
                          color: wpTextColor,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'WhatsApp aramanız için bağlantı paylaşın',
                      style: TextStyle(
                        color: wpTextColor2,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'En son',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: FutureBuilder(
              future: uploadCalls(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var callsList = snapshot.data;
                  return ListView.builder(
                    itemCount: callsList!.length,
                    itemBuilder: (context, index) {
                      var callList = callsList[index];
                      var camOrCall =
                          callsList[index].callMadeOrReceivedPath.split('_');
                      var value = camOrCall[2];
                      //  camOrCall ve value değişkenleri cevapsız mı değil mi yi bize vericek ve ona göre icon rengini düzenleyebiliceğiz.

                      return CustomCallList(
                        onTap: () {},
                        model: callList,
                        type: value,
                      );
                    },
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
