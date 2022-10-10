class ClientResponse {
    ClientResponse({
        this.id,
        this.accountNo,
        this.status,
        this.subStatus,
        this.active,
        this.activationDate,
        this.firstname,
        this.lastname,
        this.displayName,
        this.mobileNo,
        this.gender,
        this.clientType,
        this.clientClassification,
        this.isStaff,
        this.officeId,
        this.officeName,
        this.timeline,
        this.legalForm,
        this.clientCollateralManagements,
        this.groups,
        this.clientNonPersonDetails,
    });

    int? id;
    String? accountNo;
    LegalForm? status;
    ClientClassification? subStatus;
    bool? active;
    List<int>? activationDate;
    String? firstname;
    String? lastname;
    String? displayName;
    String? mobileNo;
    ClientClassification? gender;
    ClientClassification? clientType;
    ClientClassification? clientClassification;
    bool? isStaff;
    int? officeId;
    String? officeName;
    Timeline? timeline;
    LegalForm? legalForm;
    List<dynamic>? clientCollateralManagements;
    List<dynamic>? groups;
    ClientNonPersonDetails? clientNonPersonDetails;

    factory ClientResponse.fromJson(Map<String, dynamic> json) => ClientResponse(
        id: json["id"],
        accountNo: json["accountNo"],
        status: LegalForm.fromJson(json["status"]),
        subStatus: ClientClassification.fromJson(json["subStatus"]),
        active: json["active"],
        activationDate: List<int>.from(json["activationDate"].map((x) => x)),
        firstname: json["firstname"],
        lastname: json["lastname"],
        displayName: json["displayName"],
        mobileNo: json["mobileNo"],
        gender: ClientClassification.fromJson(json["gender"]),
        clientType: ClientClassification.fromJson(json["clientType"]),
        clientClassification: ClientClassification.fromJson(json["clientClassification"]),
        isStaff: json["isStaff"],
        officeId: json["officeId"],
        officeName: json["officeName"],
        timeline: Timeline.fromJson(json["timeline"]),
        legalForm: LegalForm.fromJson(json["legalForm"]),
        clientCollateralManagements: List<dynamic>.from(json["clientCollateralManagements"].map((x) => x)),
        groups: List<dynamic>.from(json["groups"].map((x) => x)),
        clientNonPersonDetails: ClientNonPersonDetails.fromJson(json["clientNonPersonDetails"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "accountNo": accountNo,
        "status": status!.toJson(),
        "subStatus": subStatus!.toJson(),
        "active": active,
        "activationDate": List<dynamic>.from(activationDate!.map((x) => x)),
        "firstname": firstname,
        "lastname": lastname,
        "displayName": displayName,
        "mobileNo": mobileNo,
        "gender": gender!.toJson(),
        "clientType": clientType!.toJson(),
        "clientClassification": clientClassification!.toJson(),
        "isStaff": isStaff,
        "officeId": officeId,
        "officeName": officeName,
        "timeline": timeline!.toJson(),
        "legalForm": legalForm!.toJson(),
        "clientCollateralManagements": List<dynamic>.from(clientCollateralManagements!.map((x) => x)),
        "groups": List<dynamic>.from(groups!.map((x) => x)),
        "clientNonPersonDetails": clientNonPersonDetails!.toJson(),
    };
}

class ClientClassification {
    ClientClassification({
        this.active,
        this.mandatory,
    });

    bool? active;
    bool? mandatory;

    factory ClientClassification.fromJson(Map<String, dynamic> json) => ClientClassification(
        active: json["active"],
        mandatory: json["mandatory"],
    );

    Map<String, dynamic> toJson() => {
        "active": active,
        "mandatory": mandatory,
    };
}

class ClientNonPersonDetails {
    ClientNonPersonDetails({
        this.constitution,
        this.mainBusinessLine,
    });

    ClientClassification? constitution;
    ClientClassification? mainBusinessLine;

    factory ClientNonPersonDetails.fromJson(Map<String, dynamic> json) => ClientNonPersonDetails(
        constitution: ClientClassification.fromJson(json["constitution"]),
        mainBusinessLine: ClientClassification.fromJson(json["mainBusinessLine"]),
    );

    Map<String, dynamic> toJson() => {
        "constitution": constitution!.toJson(),
        "mainBusinessLine": mainBusinessLine!.toJson(),
    };
}

class LegalForm {
    LegalForm({
        this.id,
        this.code,
        this.value,
    });

    int? id;
    String? code;
    String? value;

    factory LegalForm.fromJson(Map<String, dynamic> json) => LegalForm(
        id: json["id"],
        code: json["code"],
        value: json["value"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "value": value,
    };
}

class Timeline {
    Timeline({
        this.submittedOnDate,
        this.submittedByUsername,
        this.submittedByFirstname,
        this.submittedByLastname,
        this.activatedOnDate,
        this.activatedByUsername,
        this.activatedByFirstname,
        this.activatedByLastname,
    });

    List<int>? submittedOnDate;
    String? submittedByUsername;
    String? submittedByFirstname;
    String? submittedByLastname;
    List<int> ?activatedOnDate;
    String? activatedByUsername;
    String? activatedByFirstname;
    String? activatedByLastname;

    factory Timeline.fromJson(Map<String, dynamic> json) => Timeline(
        submittedOnDate: List<int>.from(json["submittedOnDate"].map((x) => x)),
        submittedByUsername: json["submittedByUsername"],
        submittedByFirstname: json["submittedByFirstname"],
        submittedByLastname: json["submittedByLastname"],
        activatedOnDate: List<int>.from(json["activatedOnDate"].map((x) => x)),
        activatedByUsername: json["activatedByUsername"],
        activatedByFirstname: json["activatedByFirstname"],
        activatedByLastname: json["activatedByLastname"],
    );

    Map<String, dynamic> toJson() => {
        "submittedOnDate": List<dynamic>.from(submittedOnDate!.map((x) => x)),
        "submittedByUsername": submittedByUsername,
        "submittedByFirstname": submittedByFirstname,
        "submittedByLastname": submittedByLastname,
        "activatedOnDate": List<dynamic>.from(activatedOnDate!.map((x) => x)),
        "activatedByUsername": activatedByUsername,
        "activatedByFirstname": activatedByFirstname,
        "activatedByLastname": activatedByLastname,
    };
}
