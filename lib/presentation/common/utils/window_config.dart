import '../base/ui/base_state.dart';
import '../base/viewModel/base_view_model.dart';

class WindowConfig {
  WindowConfig({required this.view, required this.viewModel});

  BaseState view;
  BaseViewModel viewModel;
}
