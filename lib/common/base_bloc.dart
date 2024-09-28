import 'dart:async';

import 'base_event.dart';

abstract class BaseBloc {
  final StreamController<BaseEvent> _eventController = StreamController();
  final StreamController<String> _messageController = StreamController();

  // Handle event
  Sink<BaseEvent> eventSink() => _eventController.sink;

  // Handle message
  Sink<String> messageSink() => _messageController.sink;
  Stream<String> messageStream() => _messageController.stream;

  BaseBloc() {
    _eventController.stream.listen((event) {
      dispatch(event);
    });
  }

  void dispatch(BaseEvent event);
}