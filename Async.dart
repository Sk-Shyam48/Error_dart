import "dart:async";

class UserData {
  final String id;
  final String name;

  UserData(this.id, this.name);
}

// asynchronous function to fetch user data
Future<UserData> fetchUserData(int userId, String username) async {
  // delay in fetching user data
  await Future.delayed(Duration(seconds: 2));
  return UserData("User Id   : $userId", "User Name : $username");
}

void main() async {
  // test fetching user data
  print("Fetching user data...");

  try {
    // asynchronously and await the result
    UserData userData = await fetchUserData(1001, "WHite_DEvil");
    print("User Data  ↓ \n ${userData.id} \n ${userData.name}");
  }

  // any exceptions
  catch (error) {
    print("Error fetching user data: $error");
  }
}
//    ______________________________________________________________    //