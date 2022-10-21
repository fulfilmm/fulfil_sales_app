class User {
  dynamic id, name, email, phone, token,profile_img;

  User(
      {
        this.id,
        this.name,
        this.email,
        this.phone,
        this.token,
        this.profile_img
      }
      );

  factory User.fromJson(dynamic json) {
    return User(
      id: json["id"],
      name: json["name"],
      email: json["email"],
      phone: json["phone"],
      token: json["token"],
      profile_img: json['profile_img']
    );
  }
  void printAttributes() {
    print("id: ${this.id}\n");
    print("email: ${this.email}\n");
    print("phone: ${this.phone}\n");
    print("name: ${this.name}\n");
    print("token: ${this.token}\n");
    print("profile_img: ${this.profile_img}\n");
  }
}