.class public final enum Lcom/htc/cscore/restapi/exceptions/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/restapi/exceptions/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum AccountIsAlreadyVerified:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum AccountLoginLockedOut:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum AccountLostPasswordLockedOut:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum AccountNotAvailable:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum AccountSuspended:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum BadCaptcha:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum BadDataFormat:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum BadEmail:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum BadPassword:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum DefaultObjectModification:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum DuplicateItem:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum DuplicateName:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum DuplicateUrl:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum EmailInUse:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum EmailNotVerified:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum FileNotFound:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum FileTooLarge:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum GeneralError:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum HandsetNotVerified:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum IncompatibleClientVersion:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum InvalidArgument:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum InvalidCaller:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum InvalidCredentials:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum InvalidEnumValue:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum InvalidName:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum InvalidOperation:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum InvalidTimestamp:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum InvalidUrl:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum InvalidValidation:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum InvalidVirtualDevice:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum MaxCreateAccoutRequestsExceeded:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum MissingDevice:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum MissingOrInvalidTimestamp:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum MissingRecordId:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum MissingRequiredField:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum MissingTimestamp:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum ObjectNotFound:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum OutOfSequence:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum PhoneNumberInUse:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum ReferentialIntegrity:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum SequenceFault:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum SerializationFailure:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum ServiceNotAvailableException:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum StorageLimitExceeded:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum TicketExpired:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum TokenExpired:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum TooMuchDataInField:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum UnableToIMCWithPhone:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum UnableToSendEmail:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum UnableToSendSMS:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

.field public static final enum WrongDataCenter:Lcom/htc/cscore/restapi/exceptions/ErrorCode;


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

    .line 13
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "GeneralError"

    invoke-direct {v0, v1, v5, v5}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->GeneralError:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 16
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "BadPassword"

    invoke-direct {v0, v1, v6, v6}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->BadPassword:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 19
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "BadEmail"

    invoke-direct {v0, v1, v7, v7}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->BadEmail:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 22
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "BadCaptcha"

    invoke-direct {v0, v1, v8, v8}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->BadCaptcha:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 25
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "EmailInUse"

    const/4 v2, 0x4

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->EmailInUse:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 28
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "DuplicateName"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->DuplicateName:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 31
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "DuplicateUrl"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->DuplicateUrl:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 34
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "InvalidUrl"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->InvalidUrl:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 37
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "InvalidName"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->InvalidName:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 40
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "InvalidArgument"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->InvalidArgument:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 43
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "InvalidEnumValue"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->InvalidEnumValue:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 46
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "InvalidCredentials"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->InvalidCredentials:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 49
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "OutOfSequence"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->OutOfSequence:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 52
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "PhoneNumberInUse"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->PhoneNumberInUse:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 55
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "FileTooLarge"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->FileTooLarge:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 58
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "InvalidValidation"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->InvalidValidation:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 61
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "MaxCreateAccoutRequestsExceeded"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->MaxCreateAccoutRequestsExceeded:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 64
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "MissingDevice"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->MissingDevice:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 67
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "EmailNotVerified"

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->EmailNotVerified:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 70
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "HandsetNotVerified"

    const/16 v2, 0x13

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->HandsetNotVerified:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 73
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "AccountNotAvailable"

    const/16 v2, 0x14

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->AccountNotAvailable:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 76
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "AccountLoginLockedOut"

    const/16 v2, 0x15

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->AccountLoginLockedOut:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 79
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "AccountLostPasswordLockedOut"

    const/16 v2, 0x16

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->AccountLostPasswordLockedOut:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 82
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "TokenExpired"

    const/16 v2, 0x17

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->TokenExpired:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 85
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "InvalidCaller"

    const/16 v2, 0x18

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->InvalidCaller:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 88
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "TicketExpired"

    const/16 v2, 0x19

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->TicketExpired:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 91
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "WrongDataCenter"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->WrongDataCenter:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 94
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "AccountSuspended"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->AccountSuspended:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 97
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "UnableToSendEmail"

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->UnableToSendEmail:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 100
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "UnableToSendSMS"

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->UnableToSendSMS:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 103
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "UnableToIMCWithPhone"

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->UnableToIMCWithPhone:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 106
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "ServiceNotAvailableException"

    const/16 v2, 0x1f

    const/16 v3, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->ServiceNotAvailableException:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 109
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "InvalidVirtualDevice"

    const/16 v2, 0x20

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->InvalidVirtualDevice:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 112
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "FileNotFound"

    const/16 v2, 0x21

    const/16 v3, 0x21

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->FileNotFound:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 115
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "SerializationFailure"

    const/16 v2, 0x22

    const/16 v3, 0x22

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->SerializationFailure:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 118
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "SequenceFault"

    const/16 v2, 0x23

    const/16 v3, 0x23

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->SequenceFault:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 121
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "ReferentialIntegrity"

    const/16 v2, 0x24

    const/16 v3, 0x24

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->ReferentialIntegrity:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 124
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "BadDataFormat"

    const/16 v2, 0x25

    const/16 v3, 0x25

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->BadDataFormat:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 127
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "TooMuchDataInField"

    const/16 v2, 0x26

    const/16 v3, 0x26

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->TooMuchDataInField:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 130
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "MissingRequiredField"

    const/16 v2, 0x27

    const/16 v3, 0x27

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->MissingRequiredField:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 133
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "MissingRecordId"

    const/16 v2, 0x28

    const/16 v3, 0x28

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->MissingRecordId:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 136
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "MissingOrInvalidTimestamp"

    const/16 v2, 0x29

    const/16 v3, 0x29

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->MissingOrInvalidTimestamp:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 139
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "StorageLimitExceeded"

    const/16 v2, 0x2a

    const/16 v3, 0x2a

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->StorageLimitExceeded:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 142
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "ObjectNotFound"

    const/16 v2, 0x2b

    const/16 v3, 0x2b

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->ObjectNotFound:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 145
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "AccountIsAlreadyVerified"

    const/16 v2, 0x2c

    const/16 v3, 0x2c

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->AccountIsAlreadyVerified:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 148
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "InvalidTimestamp"

    const/16 v2, 0x2d

    const/16 v3, 0x2d

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->InvalidTimestamp:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 151
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "MissingTimestamp"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->MissingTimestamp:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 156
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "DuplicateItem"

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->DuplicateItem:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 161
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "InvalidOperation"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v2, v4}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->InvalidOperation:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 164
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "DefaultObjectModification"

    invoke-direct {v0, v1, v4, v4}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->DefaultObjectModification:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 167
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    const-string v1, "IncompatibleClientVersion"

    const/16 v2, 0x32

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->IncompatibleClientVersion:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 9
    const/16 v0, 0x33

    new-array v0, v0, [Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    sget-object v1, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->GeneralError:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->BadPassword:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->BadEmail:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->BadCaptcha:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->EmailInUse:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->DuplicateName:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->DuplicateUrl:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->InvalidUrl:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->InvalidName:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->InvalidArgument:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->InvalidEnumValue:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->InvalidCredentials:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->OutOfSequence:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->PhoneNumberInUse:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->FileTooLarge:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->InvalidValidation:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->MaxCreateAccoutRequestsExceeded:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->MissingDevice:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->EmailNotVerified:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->HandsetNotVerified:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->AccountNotAvailable:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->AccountLoginLockedOut:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->AccountLostPasswordLockedOut:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->TokenExpired:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->InvalidCaller:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->TicketExpired:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->WrongDataCenter:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->AccountSuspended:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->UnableToSendEmail:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->UnableToSendSMS:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->UnableToIMCWithPhone:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->ServiceNotAvailableException:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->InvalidVirtualDevice:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->FileNotFound:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->SerializationFailure:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->SequenceFault:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->ReferentialIntegrity:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->BadDataFormat:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->TooMuchDataInField:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->MissingRequiredField:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->MissingRecordId:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->MissingOrInvalidTimestamp:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->StorageLimitExceeded:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->ObjectNotFound:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->AccountIsAlreadyVerified:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->InvalidTimestamp:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->MissingTimestamp:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->DuplicateItem:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->InvalidOperation:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    sget-object v1, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->DefaultObjectModification:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v1, v0, v4

    const/16 v1, 0x32

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->IncompatibleClientVersion:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->$VALUES:[Lcom/htc/cscore/restapi/exceptions/ErrorCode;

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
    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 173
    iput p3, p0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->ordinal:I

    .line 174
    return-void
.end method

.method public static lookup(I)Lcom/htc/cscore/restapi/exceptions/ErrorCode;
    .locals 1
    .parameter "ord"

    .prologue
    .line 178
    const-class v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/restapi/exceptions/ErrorCode;
    .locals 1
    .parameter "name"

    .prologue
    .line 9
    const-class v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/restapi/exceptions/ErrorCode;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->$VALUES:[Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    invoke-virtual {v0}, [Lcom/htc/cscore/restapi/exceptions/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    return-object v0
.end method
