import 'package:flutter/cupertino.dart';

import '../data/remote/api_call_status.dart';
import '../shared_widget/api_widgets/emapty_data_widget.dart';
import '../shared_widget/api_widgets/loading_widget.dart';
import '../shared_widget/api_widgets/network_error_widget.dart';
import '../shared_widget/api_widgets/some_thing_error.dart';

class ApiHandleUiWidget extends StatelessWidget {
  final Widget loadingWidget;
  final Widget successWidget;
  final Widget errorWidget;
  final Widget emptyWidget;
  final Widget networkError;
  final Widget holdWidget;
  final ApiCallStatus apiCallStatus;

  const ApiHandleUiWidget({
    Key? key,
    required this.successWidget,
    required this.apiCallStatus,
    this.loadingWidget = const LoadingWidget(),
    this.errorWidget = const SomeThingErrorWidget(),
    this.emptyWidget = const EmptyDataWidget(),
    this.networkError = const NetworkErrorWidget(),
    this.holdWidget = const LoadingWidget(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (apiCallStatus == ApiCallStatus.loading) {
      return loadingWidget;
    } else if (apiCallStatus == ApiCallStatus.error) {
      return errorWidget;
    } else if (apiCallStatus == ApiCallStatus.empty) {
      return emptyWidget;
    } else if (apiCallStatus == ApiCallStatus.networkError) {
      return networkError;
    } else if (apiCallStatus == ApiCallStatus.hold) {
      return holdWidget;
    }
    return successWidget;
  }
}
