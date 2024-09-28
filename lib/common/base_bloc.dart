import 'dart:async';

import 'base_event.dart';

abstract class BaseBloc {
  final StreamController<BaseEvent> _eventController = StreamController();
  final StreamController<String> _messageController = StreamController();

  // Handle event
  Sink<BaseEvent> get eventSink => _eventController.sink;

  // Handle message
  Sink<String> get messageSink => _messageController.sink;
  Stream<String> get messageStream => _messageController.stream;

  BaseBloc() {
    _eventController.stream.listen((event) {
      dispatch(event);
    });
  }

  void dispatch(BaseEvent event);
}