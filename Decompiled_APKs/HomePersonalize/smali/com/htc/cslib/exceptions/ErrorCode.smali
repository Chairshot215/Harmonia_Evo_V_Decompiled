.class public final enum Lcom/htc/cslib/exceptions/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cslib/exceptions/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum AccountIsAlreadyVerified:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum AccountLoginLockedOut:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum AccountLostPasswordLockedOut:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum AccountNotAvailable:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum AccountSuspended:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum BadCaptcha:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum BadDataFormat:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum BadEmail:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum BadPassword:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum DefaultObjectModification:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum DuplicateItem:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum DuplicateName:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum DuplicateUrl:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum EmailInUse:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum EmailNotVerified:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum FileNotFound:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum FileTooLarge:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum GeneralError:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum HandsetNotVerified:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum IncompatibleClientVersion:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum InvalidArgument:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum InvalidCaller:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum InvalidCredentials:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum InvalidEnumValue:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum InvalidName:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum InvalidOperation:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum InvalidTimestamp:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum InvalidUrl:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum InvalidValidation:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum InvalidVirtualDevice:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum MaxCreateAccoutRequestsExceeded:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum MissingDevice:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum MissingOrInvalidTimestamp:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum MissingRecordId:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum MissingRequiredField:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum MissingTimestamp:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum ObjectNotFound:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum OutOfSequence:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum PhoneNumberInUse:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum ReferentialIntegrity:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum SequenceFault:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum SerializationFailure:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum ServiceNotAvailableException:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum StorageLimitExceeded:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum TicketExpired:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum TokenExpired:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum TooMuchDataInField:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum UnableToIMCWithPhone:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum UnableToSendEmail:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum UnableToSendSMS:Lcom/htc/cslib/exceptions/ErrorCode;

.field public static final enum WrongDataCenter:Lcom/htc/cslib/exceptions/ErrorCode;


# instance fields
.field private final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x31

    .line 23
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "GeneralError"

    invoke-direct {v0, v1, v5, v5}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->GeneralError:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 29
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "BadPassword"

    invoke-direct {v0, v1, v6, v6}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->BadPassword:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 35
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "BadEmail"

    invoke-direct {v0, v1, v7, v7}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->BadEmail:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 41
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "BadCaptcha"

    invoke-direct {v0, v1, v8, v8}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->BadCaptcha:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 47
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "EmailInUse"

    const/4 v2, 0x4

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->EmailInUse:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 53
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "DuplicateName"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->DuplicateName:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 59
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "DuplicateUrl"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->DuplicateUrl:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 65
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "InvalidUrl"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->InvalidUrl:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 71
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "InvalidName"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->InvalidName:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 77
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "InvalidArgument"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->InvalidArgument:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 83
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "InvalidEnumValue"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->InvalidEnumValue:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 89
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "InvalidCredentials"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->InvalidCredentials:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 95
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "OutOfSequence"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->OutOfSequence:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 101
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "PhoneNumberInUse"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->PhoneNumberInUse:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 107
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "FileTooLarge"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->FileTooLarge:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 113
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "InvalidValidation"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->InvalidValidation:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 119
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "MaxCreateAccoutRequestsExceeded"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->MaxCreateAccoutRequestsExceeded:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 125
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "MissingDevice"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->MissingDevice:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 131
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "EmailNotVerified"

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->EmailNotVerified:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 137
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "HandsetNotVerified"

    const/16 v2, 0x13

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->HandsetNotVerified:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 143
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "AccountNotAvailable"

    const/16 v2, 0x14

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->AccountNotAvailable:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 149
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "AccountLoginLockedOut"

    const/16 v2, 0x15

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->AccountLoginLockedOut:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 155
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "AccountLostPasswordLockedOut"

    const/16 v2, 0x16

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->AccountLostPasswordLockedOut:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 161
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "TokenExpired"

    const/16 v2, 0x17

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->TokenExpired:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 167
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "InvalidCaller"

    const/16 v2, 0x18

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->InvalidCaller:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 173
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "TicketExpired"

    const/16 v2, 0x19

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->TicketExpired:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 179
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "WrongDataCenter"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->WrongDataCenter:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 185
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "AccountSuspended"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->AccountSuspended:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 191
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "UnableToSendEmail"

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->UnableToSendEmail:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 197
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "UnableToSendSMS"

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->UnableToSendSMS:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 203
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "UnableToIMCWithPhone"

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->UnableToIMCWithPhone:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 209
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "ServiceNotAvailableException"

    const/16 v2, 0x1f

    const/16 v3, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->ServiceNotAvailableException:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 215
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "InvalidVirtualDevice"

    const/16 v2, 0x20

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->InvalidVirtualDevice:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 221
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "FileNotFound"

    const/16 v2, 0x21

    const/16 v3, 0x21

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->FileNotFound:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 227
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "SerializationFailure"

    const/16 v2, 0x22

    const/16 v3, 0x22

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->SerializationFailure:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 233
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "SequenceFault"

    const/16 v2, 0x23

    const/16 v3, 0x23

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->SequenceFault:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 239
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "ReferentialIntegrity"

    const/16 v2, 0x24

    const/16 v3, 0x24

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->ReferentialIntegrity:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 245
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "BadDataFormat"

    const/16 v2, 0x25

    const/16 v3, 0x25

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->BadDataFormat:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 251
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "TooMuchDataInField"

    const/16 v2, 0x26

    const/16 v3, 0x26

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->TooMuchDataInField:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 257
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "MissingRequiredField"

    const/16 v2, 0x27

    const/16 v3, 0x27

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->MissingRequiredField:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 263
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "MissingRecordId"

    const/16 v2, 0x28

    const/16 v3, 0x28

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->MissingRecordId:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 269
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "MissingOrInvalidTimestamp"

    const/16 v2, 0x29

    const/16 v3, 0x29

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->MissingOrInvalidTimestamp:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 275
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "StorageLimitExceeded"

    const/16 v2, 0x2a

    const/16 v3, 0x2a

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->StorageLimitExceeded:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 281
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "ObjectNotFound"

    const/16 v2, 0x2b

    const/16 v3, 0x2b

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->ObjectNotFound:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 287
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "AccountIsAlreadyVerified"

    const/16 v2, 0x2c

    const/16 v3, 0x2c

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->AccountIsAlreadyVerified:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 293
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "InvalidTimestamp"

    const/16 v2, 0x2d

    const/16 v3, 0x2d

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->InvalidTimestamp:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 299
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "MissingTimestamp"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->MissingTimestamp:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 309
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "DuplicateItem"

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->DuplicateItem:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 319
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "InvalidOperation"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v2, v4}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->InvalidOperation:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 325
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "DefaultObjectModification"

    invoke-direct {v0, v1, v4, v4}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->DefaultObjectModification:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 331
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorCode;

    const-string v1, "IncompatibleClientVersion"

    const/16 v2, 0x32

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cslib/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->IncompatibleClientVersion:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 15
    const/16 v0, 0x33

    new-array v0, v0, [Lcom/htc/cslib/exceptions/ErrorCode;

    sget-object v1, Lcom/htc/cslib/exceptions/ErrorCode;->GeneralError:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cslib/exceptions/ErrorCode;->BadPassword:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/cslib/exceptions/ErrorCode;->BadEmail:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/cslib/exceptions/ErrorCode;->BadCaptcha:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->EmailInUse:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->DuplicateName:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->DuplicateUrl:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->InvalidUrl:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->InvalidName:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->InvalidArgument:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->InvalidEnumValue:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->InvalidCredentials:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->OutOfSequence:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->PhoneNumberInUse:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->FileTooLarge:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->InvalidValidation:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->MaxCreateAccoutRequestsExceeded:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->MissingDevice:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->EmailNotVerified:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->HandsetNotVerified:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->AccountNotAvailable:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->AccountLoginLockedOut:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->AccountLostPasswordLockedOut:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->TokenExpired:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->InvalidCaller:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->TicketExpired:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->WrongDataCenter:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->AccountSuspended:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->UnableToSendEmail:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->UnableToSendSMS:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->UnableToIMCWithPhone:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->ServiceNotAvailableException:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->InvalidVirtualDevice:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->FileNotFound:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->SerializationFailure:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->SequenceFault:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->ReferentialIntegrity:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->BadDataFormat:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->TooMuchDataInField:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->MissingRequiredField:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->MissingRecordId:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->MissingOrInvalidTimestamp:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->StorageLimitExceeded:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->ObjectNotFound:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->AccountIsAlreadyVerified:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->InvalidTimestamp:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->MissingTimestamp:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->DuplicateItem:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->InvalidOperation:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    sget-object v1, Lcom/htc/cslib/exceptions/ErrorCode;->DefaultObjectModification:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v1, v0, v4

    const/16 v1, 0x32

    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->IncompatibleClientVersion:Lcom/htc/cslib/exceptions/ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->$VALUES:[Lcom/htc/cslib/exceptions/ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "ord"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 341
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 343
    iput p3, p0, Lcom/htc/cslib/exceptions/ErrorCode;->ordinal:I

    .line 345
    return-void
.end method

.method public static lookup(I)Lcom/htc/cslib/exceptions/ErrorCode;
    .locals 1
    .parameter "ord"

    .prologue
    .line 353
    const-class v0, Lcom/htc/cslib/exceptions/ErrorCode;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cslib/exceptions/ErrorCode;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cslib/exceptions/ErrorCode;
    .locals 1
    .parameter "name"

    .prologue
    .line 15
    const-class v0, Lcom/htc/cslib/exceptions/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cslib/exceptions/ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/htc/cslib/exceptions/ErrorCode;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/htc/cslib/exceptions/ErrorCode;->$VALUES:[Lcom/htc/cslib/exceptions/ErrorCode;

    invoke-virtual {v0}, [Lcom/htc/cslib/exceptions/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cslib/exceptions/ErrorCode;

    return-object v0
.end method
