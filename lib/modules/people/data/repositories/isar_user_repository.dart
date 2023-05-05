import 'package:isar/isar.dart';
import 'package:people_maker/core/core.dart';
import 'package:people_maker/modules/people/data/data.dart';
import 'package:people_maker/modules/people/domain/domain.dart';

class IsarUserRepository implements UserRepository {
  IsarUserRepository({required this.isarDb});

  final Isar isarDb;

  @override
  Future<int> add(UserEntity user) async {
    try {
      final model = UserModel.fromEntity(user);

      final isarUser = model.toIsar();

      late int id;

      await isarDb.writeTxn<void>(() async {
        id = await isarDb.isarUsers.put(isarUser);
      });

      return id;
    } catch (_) {
      throw UnexpectedError();
    }
  }

  @override
  Future<void> remove(int id) async {
    try {
      await isarDb.writeTxn<void>(() async {
        await isarDb.isarUsers.delete(id);
      });
    } catch (_) {
      throw UnexpectedError();
    }
  }

  @override
  Future<List<UserEntity>> listAll() async {
    try {
      final users = await isarDb.isarUsers.where().findAll();
      return users.map((isarUser) {
        return UserModel(
          gender: isarUser.gender,
          name: NameModel(
            title: isarUser.name.title!,
            first: isarUser.name.first!,
            last: isarUser.name.last!,
          ),
          location: LocationModel(
            city: isarUser.location.city!,
            country: isarUser.location.country!,
            postcode: isarUser.location.postcode!,
            number: isarUser.location.number!,
            state: isarUser.location.state!,
            street: isarUser.location.street!,
          ),
          email: isarUser.email,
          login: LoginModel(
            password: isarUser.login.password!,
            username: isarUser.login.username!,
          ),
          phone: isarUser.phone,
          cell: isarUser.cell,
          identification: IdentificationModel(
            name: isarUser.identification.name,
            value: isarUser.identification.value,
          ),
          picture: PictureModel(
            image: isarUser.picture.image!,
            thumbnail: isarUser.picture.thumbnail!,
          ),
          nat: isarUser.nat,
          dateOfBirth: isarUser.dateOfBirth,
        );
      }).toList();
    } catch (_) {
      throw UnexpectedError();
    }
  }
}
