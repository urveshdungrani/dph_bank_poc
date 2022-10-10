class AuthedResponse {
    AuthedResponse({
        this.username,
        this.userId,
        this.base64EncodedAuthenticationKey,
        this.authenticated,
        this.officeId,
        this.officeName,
        this.roles,
        this.permissions,
        this.clients,
        this.isTwoFactrAuthenticationRequired,
    });

    String? username;
    int? userId;
    String? base64EncodedAuthenticationKey;
    bool? authenticated;
    int? officeId;
    String? officeName;
    List<Role>? roles;
    List<String>? permissions;
    List<int>? clients;
    bool? isTwoFactrAuthenticationRequired;

    factory AuthedResponse.fromJson(Map<String, dynamic> json) => AuthedResponse(
        username: json["username"],
        userId: json["userId"],
        base64EncodedAuthenticationKey: json["base64EncodedAuthenticationKey"],
        authenticated: json["authenticated"],
        officeId: json["officeId"],
        officeName: json["officeName"],
        roles: List<Role>.from(json["roles"].map((x) => Role.fromJson(x))),
        permissions: List<String>.from(json["permissions"].map((x) => x)),
        clients: List<int>.from(json["clients"].map((x) => x)),
        isTwoFactrAuthenticationRequired: json["isTwoFactrAuthenticationRequired"],
    );

    Map<String, dynamic> toJson() => {
        "username": username,
        "userId": userId,
        "base64EncodedAuthenticationKey": base64EncodedAuthenticationKey,
        "authenticated": authenticated,
        "officeId": officeId,
        "officeName": officeName,
        "roles": List<dynamic>.from(roles!.map((x) => x.toJson())),
        "permissions": List<dynamic>.from(permissions!.map((x) => x)),
        "clients": List<dynamic>.from(clients!.map((x) => x)),
        "isTwoFactrAuthenticationRequired": isTwoFactrAuthenticationRequired,
    };
}

class Role {
    Role({
        this.id,
        this.name,
        this.description,
        this.disabled,
    });

    int? id;
    String? name;
    String? description;
    bool? disabled;

    factory Role.fromJson(Map<String, dynamic> json) => Role(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        disabled: json["disabled"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "disabled": disabled,
    };
}
