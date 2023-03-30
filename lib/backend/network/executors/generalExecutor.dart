import 'package:wrgap/backend/network/executors/executor.feed.dart';

class GeneralExecutor with FeedExecutor {}

GeneralExecutor _executor = GeneralExecutor();
GeneralExecutor get GE => _executor;
