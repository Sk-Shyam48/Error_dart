import "dart:async";

class UserData {
  final String id;
  final String name;

  UserData(this.id, this.name);
}

Future<UserData> fetchUserData(int userId, String username) async {
  await Future.delayed(Duration(seconds: 2));
  return UserData("User Id   : $userId", "User Name : $username");
}

void main() async {
  print("Fetching user data...");

  try {
    UserData userData = await fetchUserData(1001, "WHite_DEvil");
    print("User Data  ↓ \n ${userData.id} \n ${userData.name}");
  } catch (error) {
    print("Error fetching user data: $error");
  }
}

//    ______________________________________________________________    //