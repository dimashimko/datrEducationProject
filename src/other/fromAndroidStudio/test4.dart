// import 'dart:math';
//
//
// main() {
//
//   DataProcessor dataProcessor = DataProcessor();
//
//   //****Callback with setter******************
//   dataProcessor.setDataLinkListener(callback:(String filePath){
//     print('download filePath : $filePath');
//
//   });
//   dataProcessor.getDataLink();
//   //*******************************************
//
//   //**** put Callback directly******************
//   dataProcessor.downloadProgress(callback: (int progress) {
//     print('download progress : $progress');
//   });
//
//   dataProcessor.dataSize(callback: (double data,String unit) {
//     print('DataSize : $data , unit : $unit');
//   });
//   //*******************************************
//
// }
//
//
//
// class DataProcessor {
//
//
//   //First Way to implement ************By assigning callback function to Function field though setter*******
//   //Function field
//   void Function(String) dataLinkCallBack;
//
//   void setDataLinkListener({Function(String) callback}){
//     dataLinkCallBack=callback;
//   }
//   void getDataLink() {
//
//     //Your getting link from server here
//
//     //After getting link from server put into call back
//     if (dataLinkCallBack != null) dataLinkCallBack('www.codinghive.dev');
//   }
//   //*******************************************************
//
//
//   //Second Way to implement**********Set data direct to call back**************
//   void downloadProgress({Function(int) callback}) {
//
//     for (int progress = 0; progress < 10; progress++) {
//       //Do downloading here
//
//       //put current progress into call back
//       if(callback!=null)callback(progress);
//     }
//   }
//
//   void dataSize({Function(double,String) callback}) {
//
//     var random = Random.secure();
//     //Get Data Size from server here
//
//     //After getting size from server put into call back
//     if (callback != null) callback(random.nextDouble(),'GB');
//   }
// //*******************************************************
//
//
// }