
class ParticularTransactionResponse {
    ParticularTransactionResponse({
        this.id,
        this.transactionType,
        this.accountId,
        this.accountNo,
        this.date,
        this.currency,
        this.paymentDetailData,
        this.amount,
        this.runningBalance,
        this.reversed,
        this.submittedOnDate,
        this.interestedPostedAsOn,
        this.submittedByUsername,
        this.isManualTransaction,
        this.isReversal,
        this.originalTransactionId,
        this.lienTransaction,
        this.releaseTransactionId,
        this.chargesPaidByData,
    });

    int? id;
    TransactionType? transactionType;
    int? accountId;
    String? accountNo;
    List<int>? date;
    Currency? currency;
    PaymentDetailData? paymentDetailData;
    dynamic amount;
    dynamic runningBalance;
    bool? reversed;
    List<int>? submittedOnDate;
    bool? interestedPostedAsOn;
    String? submittedByUsername;
    bool? isManualTransaction;
    bool? isReversal;
    int? originalTransactionId;
    bool? lienTransaction;
    int? releaseTransactionId;
    List<dynamic>? chargesPaidByData;

    factory ParticularTransactionResponse.fromJson(Map<String, dynamic> json) => ParticularTransactionResponse(
        id: json["id"],
        transactionType: TransactionType.fromJson(json["transactionType"]),
        accountId: json["accountId"],
        accountNo: json["accountNo"],
        date: List<int>.from(json["date"].map((x) => x)),
        currency: Currency.fromJson(json["currency"]),
        paymentDetailData: PaymentDetailData.fromJson(json["paymentDetailData"]),
        amount: json["amount"],
        runningBalance: json["runningBalance"],
        reversed: json["reversed"],
        submittedOnDate: List<int>.from(json["submittedOnDate"].map((x) => x)),
        interestedPostedAsOn: json["interestedPostedAsOn"],
        submittedByUsername: json["submittedByUsername"],
        isManualTransaction: json["isManualTransaction"],
        isReversal: json["isReversal"],
        originalTransactionId: json["originalTransactionId"],
        lienTransaction: json["lienTransaction"],
        releaseTransactionId: json["releaseTransactionId"],
        chargesPaidByData: List<dynamic>.from(json["chargesPaidByData"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "transactionType": transactionType!.toJson(),
        "accountId": accountId,
        "accountNo": accountNo,
        "date": List<dynamic>.from(date!.map((x) => x)),
        "currency": currency!.toJson(),
        "paymentDetailData": paymentDetailData!.toJson(),
        "amount": amount,
        "runningBalance": runningBalance,
        "reversed": reversed,
        "submittedOnDate": List<dynamic>.from(submittedOnDate!.map((x) => x)),
        "interestedPostedAsOn": interestedPostedAsOn,
        "submittedByUsername": submittedByUsername,
        "isManualTransaction": isManualTransaction,
        "isReversal": isReversal,
        "originalTransactionId": originalTransactionId,
        "lienTransaction": lienTransaction,
        "releaseTransactionId": releaseTransactionId,
        "chargesPaidByData": List<dynamic>.from(chargesPaidByData!.map((x) => x)),
    };
}

class Currency {
    Currency({
        this.code,
        this.name,
        this.decimalPlaces,
        this.inMultiplesOf,
        this.displaySymbol,
        this.nameCode,
        this.displayLabel,
    });

    String? code;
    String? name;
    int? decimalPlaces;
    int? inMultiplesOf;
    String? displaySymbol;
    String? nameCode;
    String? displayLabel;

    factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        code: json["code"],
        name: json["name"],
        decimalPlaces: json["decimalPlaces"],
        inMultiplesOf: json["inMultiplesOf"],
        displaySymbol: json["displaySymbol"],
        nameCode: json["nameCode"],
        displayLabel: json["displayLabel"],
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
        "decimalPlaces": decimalPlaces,
        "inMultiplesOf": inMultiplesOf,
        "displaySymbol": displaySymbol,
        "nameCode": nameCode,
        "displayLabel": displayLabel,
    };
}

class PaymentDetailData {
    PaymentDetailData({
        this.id,
        this.paymentType,
        this.accountNumber,
        this.checkNumber,
        this.routingCode,
        this.receiptNumber,
        this.bankNumber,
    });

    int? id;
    PaymentType? paymentType;
    String? accountNumber;
    String? checkNumber;
    String? routingCode;
    String? receiptNumber;
    String? bankNumber;

    factory PaymentDetailData.fromJson(Map<String, dynamic> json) => PaymentDetailData(
        id: json["id"],
        paymentType: PaymentType.fromJson(json["paymentType"]),
        accountNumber: json["accountNumber"],
        checkNumber: json["checkNumber"],
        routingCode: json["routingCode"],
        receiptNumber: json["receiptNumber"],
        bankNumber: json["bankNumber"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "paymentType": paymentType!.toJson(),
        "accountNumber": accountNumber,
        "checkNumber": checkNumber,
        "routingCode": routingCode,
        "receiptNumber": receiptNumber,
        "bankNumber": bankNumber,
    };
}

class PaymentType {
    PaymentType({
        this.id,
        this.name,
        this.isSystemDefined,
    });

    int? id;
    String? name;
    bool? isSystemDefined;

    factory PaymentType.fromJson(Map<String, dynamic> json) => PaymentType(
        id: json["id"],
        name: json["name"],
        isSystemDefined: json["isSystemDefined"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "isSystemDefined": isSystemDefined,
    };
}

class TransactionType {
    TransactionType({
        this.id,
        this.code,
        this.value,
        this.deposit,
        this.dividendPayout,
        this.withdrawal,
        this.interestPosting,
        this.feeDeduction,
        this.initiateTransfer,
        this.approveTransfer,
        this.withdrawTransfer,
        this.rejectTransfer,
        this.overdraftInterest,
        this.writtenoff,
        this.overdraftFee,
        this.withholdTax,
        this.escheat,
        this.amountHold,
        this.amountRelease,
    });

    int? id;
    String? code;
    String? value;
    bool? deposit;
    bool? dividendPayout;
    bool? withdrawal;
    bool? interestPosting;
    bool? feeDeduction;
    bool? initiateTransfer;
    bool? approveTransfer;
    bool? withdrawTransfer;
    bool? rejectTransfer;
    bool? overdraftInterest;
    bool? writtenoff;
    bool? overdraftFee;
    bool? withholdTax;
    bool? escheat;
    bool? amountHold;
    bool? amountRelease;

    factory TransactionType.fromJson(Map<String, dynamic> json) => TransactionType(
        id: json["id"],
        code: json["code"],
        value: json["value"],
        deposit: json["deposit"],
        dividendPayout: json["dividendPayout"],
        withdrawal: json["withdrawal"],
        interestPosting: json["interestPosting"],
        feeDeduction: json["feeDeduction"],
        initiateTransfer: json["initiateTransfer"],
        approveTransfer: json["approveTransfer"],
        withdrawTransfer: json["withdrawTransfer"],
        rejectTransfer: json["rejectTransfer"],
        overdraftInterest: json["overdraftInterest"],
        writtenoff: json["writtenoff"],
        overdraftFee: json["overdraftFee"],
        withholdTax: json["withholdTax"],
        escheat: json["escheat"],
        amountHold: json["amountHold"],
        amountRelease: json["amountRelease"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "value": value,
        "deposit": deposit,
        "dividendPayout": dividendPayout,
        "withdrawal": withdrawal,
        "interestPosting": interestPosting,
        "feeDeduction": feeDeduction,
        "initiateTransfer": initiateTransfer,
        "approveTransfer": approveTransfer,
        "withdrawTransfer": withdrawTransfer,
        "rejectTransfer": rejectTransfer,
        "overdraftInterest": overdraftInterest,
        "writtenoff": writtenoff,
        "overdraftFee": overdraftFee,
        "withholdTax": withholdTax,
        "escheat": escheat,
        "amountHold": amountHold,
        "amountRelease": amountRelease,
    };
}
