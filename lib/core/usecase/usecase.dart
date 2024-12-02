abstract class UseCase<Type, Params> {

  Future<Type> call({Params params});
}
// 2:34:00