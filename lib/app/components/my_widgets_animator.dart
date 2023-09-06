import 'package:flutter/cupertino.dart';

import '../data/remote/api_call_status.dart';

class ApiHandleUiWidget extends StatelessWidget {
  final Widget loadingWidget;
  final Widget successWidget;
  final Widget errorWidget;
  final Widget emptyWidget;
  final Widget waitBeforeChangeState;
  final ApiCallStatus apiCallStatus;

  const ApiHandleUiWidget({
    Key? key,
    required this.successWidget,
    required this.apiCallStatus,
    this.loadingWidget = const CupertinoActivityIndicator(),
    this.errorWidget = const Center(
      child: Text("حدثت مشكلة ما"),
    ),
    this.emptyWidget = const Center(
      child: Text("لا يوجد بيانات"),
    ),
    this.waitBeforeChangeState = const Center(
      child: CupertinoActivityIndicator(),
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (apiCallStatus == ApiCallStatus.loading) {
      return loadingWidget;
    } else if (apiCallStatus == ApiCallStatus.error) {
      return errorWidget;
    } else if (apiCallStatus == ApiCallStatus.empty) {
      return emptyWidget;
    } else if (apiCallStatus == ApiCallStatus.success) {
      return successWidget;
    } else if (apiCallStatus == ApiCallStatus.holding) {
      return waitBeforeChangeState;
    }

    return successWidget;
  }
}
