class TransactionsResponse {
    TransactionsResponse({
        this.id,
        this.accountNo,
        this.depositType,
        this.clientId,
        this.clientName,
        this.savingsProductId,
        this.savingsProductName,
        this.fieldOfficerId,
        this.status,
        this.subStatus,
        this.timeline,
        this.currency,
        this.nominalAnnualInterestRate,
        this.interestCompoundingPeriodType,
        this.interestPostingPeriodType,
        this.interestCalculationType,
        this.interestCalculationDaysInYearType,
        this.minRequiredOpeningBalance,
        this.withdrawalFeeForTransfers,
        this.allowOverdraft,
        this.minRequiredBalance,
        this.enforceMinRequiredBalance,
        this.lienAllowed,
        this.withHoldTax,
        this.lastActiveTransactionDate,
        this.isDormancyTrackingActive,
        this.summary,
        this.transactions,
    });

    int? id;
    String? accountNo;
    Type? depositType;
    int? clientId;
    String? clientName;
    int? savingsProductId;
    String? savingsProductName;
    int? fieldOfficerId;
    Status? status;
    SubStatus? subStatus;
    Timeline? timeline;
    Currency? currency;
    dynamic nominalAnnualInterestRate;
    Type? interestCompoundingPeriodType;
    Type? interestPostingPeriodType;
    Type? interestCalculationType;
    Type? interestCalculationDaysInYearType;
    dynamic minRequiredOpeningBalance;
    bool? withdrawalFeeForTransfers;
    bool? allowOverdraft;
    dynamic minRequiredBalance;
    bool? enforceMinRequiredBalance;
    bool? lienAllowed;
    bool? withHoldTax;
    List<int>? lastActiveTransactionDate;
    bool? isDormancyTrackingActive;
    Summary? summary;
    List<Transaction>? transactions;

    factory TransactionsResponse.fromJson(Map<String, dynamic> json) => TransactionsResponse(
        id: json["id"],
        accountNo: json["accountNo"],
        depositType: Type.fromJson(json["depositType"]),
        clientId: json["clientId"],
        clientName: json["clientName"],
        savingsProductId: json["savingsProductId"],
        savingsProductName: json["savingsProductName"],
        fieldOfficerId: json["fieldOfficerId"],
        status: Status.fromJson(json["status"]),
        subStatus: SubStatus.fromJson(json["subStatus"]),
        timeline: Timeline.fromJson(json["timeline"]),
        currency: Currency.fromJson(json["currency"]),
        nominalAnnualInterestRate: json["nominalAnnualInterestRate"],
        interestCompoundingPeriodType: Type.fromJson(json["interestCompoundingPeriodType"]),
        interestPostingPeriodType: Type.fromJson(json["interestPostingPeriodType"]),
        interestCalculationType: Type.fromJson(json["interestCalculationType"]),
        interestCalculationDaysInYearType: Type.fromJson(json["interestCalculationDaysInYearType"]),
        minRequiredOpeningBalance: json["minRequiredOpeningBalance"],
        withdrawalFeeForTransfers: json["withdrawalFeeForTransfers"],
        allowOverdraft: json["allowOverdraft"],
        minRequiredBalance: json["minRequiredBalance"],
        enforceMinRequiredBalance: json["enforceMinRequiredBalance"],
        lienAllowed: json["lienAllowed"],
        withHoldTax: json["withHoldTax"],
        lastActiveTransactionDate: List<int>.from(json["lastActiveTransactionDate"].map((x) => x)),
        isDormancyTrackingActive: json["isDormancyTrackingActive"],
        summary: Summary.fromJson(json["summary"]),
        transactions: List<Transaction>.from(json["transactions"].map((x) => Transaction.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "accountNo": accountNo,
        "depositType": depositType!.toJson(),
        "clientId": clientId,
        "clientName": clientName,
        "savingsProductId": savingsProductId,
        "savingsProductName": savingsProductName,
        "fieldOfficerId": fieldOfficerId,
        "status": status!.toJson(),
        "subStatus": subStatus!.toJson(),
        "timeline": timeline!.toJson(),
        "currency": currency!.toJson(),
        "nominalAnnualInterestRate": nominalAnnualInterestRate,
        "interestCompoundingPeriodType": interestCompoundingPeriodType!.toJson(),
        "interestPostingPeriodType": interestPostingPeriodType!.toJson(),
        "interestCalculationType": interestCalculationType!.toJson(),
        "interestCalculationDaysInYearType": interestCalculationDaysInYearType!.toJson(),
        "minRequiredOpeningBalance": minRequiredOpeningBalance,
        "withdrawalFeeForTransfers": withdrawalFeeForTransfers,
        "allowOverdraft": allowOverdraft,
        "minRequiredBalance": minRequiredBalance,
        "enforceMinRequiredBalance": enforceMinRequiredBalance,
        "lienAllowed": lienAllowed,
        "withHoldTax": withHoldTax,
        "lastActiveTransactionDate": List<dynamic>.from(lastActiveTransactionDate!.map((x) => x)),
        "isDormancyTrackingActive": isDormancyTrackingActive,
        "summary": summary!.toJson(),
        "transactions": List<dynamic>.from(transactions!.map((x) => x.toJson())),
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

class Type {
    Type({
        this.id,
        this.code,
        this.value,
    });

    int? id;
    String? code;
    String? value;

    factory Type.fromJson(Map<String, dynamic> json) => Type(
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

class Status {
    Status({
        this.id,
        this.code,
        this.value,
        this.submittedAndPendingApproval,
        this.approved,
        this.rejected,
        this.withdrawnByApplicant,
        this.active,
        this.closed,
        this.prematureClosed,
        this.transferInProgress,
        this.transferOnHold,
        this.matured,
    });

    int? id;
    String? code;
    String? value;
    bool? submittedAndPendingApproval;
    bool? approved;
    bool? rejected;
    bool? withdrawnByApplicant;
    bool? active;
    bool? closed;
    bool? prematureClosed;
    bool? transferInProgress;
    bool? transferOnHold;
    bool? matured;

    factory Status.fromJson(Map<String, dynamic> json) => Status(
        id: json["id"],
        code: json["code"],
        value: json["value"],
        submittedAndPendingApproval: json["submittedAndPendingApproval"],
        approved: json["approved"],
        rejected: json["rejected"],
        withdrawnByApplicant: json["withdrawnByApplicant"],
        active: json["active"],
        closed: json["closed"],
        prematureClosed: json["prematureClosed"],
        transferInProgress: json["transferInProgress"],
        transferOnHold: json["transferOnHold"],
        matured: json["matured"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "value": value,
        "submittedAndPendingApproval": submittedAndPendingApproval,
        "approved": approved,
        "rejected": rejected,
        "withdrawnByApplicant": withdrawnByApplicant,
        "active": active,
        "closed": closed,
        "prematureClosed": prematureClosed,
        "transferInProgress": transferInProgress,
        "transferOnHold": transferOnHold,
        "matured": matured,
    };
}

class SubStatus {
    SubStatus({
        this.id,
        this.code,
        this.value,
        this.none,
        this.inactive,
        this.dormant,
        this.escheat,
        this.block,
        this.blockCredit,
        this.blockDebit,
    });

    int? id;
    String? code;
    String? value;
    bool? none;
    bool? inactive;
    bool? dormant;
    bool? escheat;
    bool? block;
    bool? blockCredit;
    bool? blockDebit;

    factory SubStatus.fromJson(Map<String, dynamic> json) => SubStatus(
        id: json["id"],
        code: json["code"],
        value: json["value"],
        none: json["none"],
        inactive: json["inactive"],
        dormant: json["dormant"],
        escheat: json["escheat"],
        block: json["block"],
        blockCredit: json["blockCredit"],
        blockDebit: json["blockDebit"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "value": value,
        "none": none,
        "inactive": inactive,
        "dormant": dormant,
        "escheat": escheat,
        "block": block,
        "blockCredit": blockCredit,
        "blockDebit": blockDebit,
    };
}

class Summary {
    Summary({
        this.currency,
        this.totalDeposits,
        this.totalWithdrawals,
        this.totalInterestEarned,
        this.totalInterestPosted,
        this.accountBalance,
        this.totalOverdraftInterestDerived,
        this.interestNotPosted,
        this.lastInterestCalculationDate,
        this.availableBalance,
    });

    Currency? currency;
    dynamic totalDeposits;
    dynamic totalWithdrawals;
    dynamic totalInterestEarned;
    dynamic totalInterestPosted;
    dynamic accountBalance;
    dynamic totalOverdraftInterestDerived;
    dynamic interestNotPosted;
    List<int>? lastInterestCalculationDate;
    dynamic availableBalance;

    factory Summary.fromJson(Map<String, dynamic> json) => Summary(
        currency: Currency.fromJson(json["currency"]),
        totalDeposits: json["totalDeposits"],
        totalWithdrawals: json["totalWithdrawals"],
        totalInterestEarned: json["totalInterestEarned"],
        totalInterestPosted: json["totalInterestPosted"],
        accountBalance: json["accountBalance"],
        totalOverdraftInterestDerived: json["totalOverdraftInterestDerived"],
        interestNotPosted: json["interestNotPosted"],
        lastInterestCalculationDate: List<int>.from(json["lastInterestCalculationDate"].map((x) => x)),
        availableBalance: json["availableBalance"],
    );

    Map<String, dynamic> toJson() => {
        "currency": currency!.toJson(),
        "totalDeposits": totalDeposits,
        "totalWithdrawals": totalWithdrawals,
        "totalInterestEarned": totalInterestEarned,
        "totalInterestPosted": totalInterestPosted,
        "accountBalance": accountBalance,
        "totalOverdraftInterestDerived": totalOverdraftInterestDerived,
        "interestNotPosted": interestNotPosted,
        "lastInterestCalculationDate": List<dynamic>.from(lastInterestCalculationDate!.map((x) => x)),
        "availableBalance": availableBalance,
    };
}

class Timeline {
    Timeline({
        this.submittedOnDate,
        this.submittedByUsername,
        this.submittedByFirstname,
        this.submittedByLastname,
        this.approvedOnDate,
        this.approvedByUsername,
        this.approvedByFirstname,
        this.approvedByLastname,
        this.activatedOnDate,
        this.activatedByUsername,
        this.activatedByFirstname,
        this.activatedByLastname,
    });

    List<int>? submittedOnDate;
    String? submittedByUsername;
    String? submittedByFirstname;
    String? submittedByLastname;
    List<int>? approvedOnDate;
    String? approvedByUsername;
    String? approvedByFirstname;
    String? approvedByLastname;
    List<int>? activatedOnDate;
    String? activatedByUsername;
    String? activatedByFirstname;
    String? activatedByLastname;

    factory Timeline.fromJson(Map<String, dynamic> json) => Timeline(
        submittedOnDate: List<int>.from(json["submittedOnDate"].map((x) => x)),
        submittedByUsername: json["submittedByUsername"],
        submittedByFirstname: json["submittedByFirstname"],
        submittedByLastname: json["submittedByLastname"],
        approvedOnDate: List<int>.from(json["approvedOnDate"].map((x) => x)),
        approvedByUsername: json["approvedByUsername"],
        approvedByFirstname: json["approvedByFirstname"],
        approvedByLastname: json["approvedByLastname"],
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
        "approvedOnDate": List<dynamic>.from(approvedOnDate!.map((x) => x)),
        "approvedByUsername": approvedByUsername,
        "approvedByFirstname": approvedByFirstname,
        "approvedByLastname": approvedByLastname,
        "activatedOnDate": List<dynamic>.from(activatedOnDate!.map((x) => x)),
        "activatedByUsername": activatedByUsername,
        "activatedByFirstname": activatedByFirstname,
        "activatedByLastname": activatedByLastname,
    };
}

class Transaction {
    Transaction({
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
        this.note,
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
    String? note;

    factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
        id: json["id"],
        transactionType: TransactionType.fromJson(json["transactionType"]),
        accountId: json["accountId"],
        accountNo: json["accountNo"],
        date: List<int>.from(json["date"].map((x) => x)),
        currency: Currency.fromJson(json["currency"]),
        paymentDetailData: json["paymentDetailData"] == null ? null : PaymentDetailData.fromJson(json["paymentDetailData"]),
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
        note: json["note"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "transactionType": transactionType!.toJson(),
        "accountId": accountId,
        "accountNo": accountNo,
        "date": List<dynamic>.from(date!.map((x) => x)),
        "currency": currency!.toJson(),
        "paymentDetailData": paymentDetailData == null ? null : paymentDetailData!.toJson(),
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
        "note": note,
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
