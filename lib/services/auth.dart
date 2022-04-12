
class AuthService{

  Future signInEmail(String email, String password) async{
    print("SignedIn");
  }

  Future signUpEmail(String email, String password, String username, String role) async{
      print("SignedUp");
  }

  Future forgetPassword(String email) async{
    print("forgetPassword");
  }

}