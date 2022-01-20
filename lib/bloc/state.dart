
abstract class States{}

class IsEmptyStates extends States{}

class HaveTaskStates extends States{
  List loadedTask;
HaveTaskStates({required this.loadedTask});
}
