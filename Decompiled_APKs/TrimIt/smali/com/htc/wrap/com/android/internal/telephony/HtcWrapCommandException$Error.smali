.class public final enum Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;
.super Ljava/lang/Enum;
.source "HtcWrapCommandException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum DUE_TO_CB:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum DUE_TO_FDN:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum FDN_CHECK_FAILURE:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum FDN_NOT_SUPPORT:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum GENERIC_FAILURE:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum ILLEGAL_SIM_OR_ME:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum INVALID_RESPONSE:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum MISSING_RESOURCE:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum MODE_NOT_SUPPORTED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum NEGATIVE_PW_CHECK:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum NO_SUCH_ELEMENT:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum NUM_OF_PW_ATTEMPTS_VIOLATION:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum NW_SCAN_NOT_ALLOWED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum OP_NOT_ALLOWED_DURING_VOICE_CALL:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum PASSWORD_INCORRECT:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum PB_MEM_FULL:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum PW_REGISTRATION_FAILURE:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum RADIO_NOT_AVAILABLE:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum REQUEST_NOT_SUPPORTED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum SETUP_DATA_CALL_FAILURE:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum SIM_ABSENT:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum SIM_FAIL:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum SIM_PIN2:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum SIM_PUK2:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum SMS_FAIL_RETRY:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

.field public static final enum SUBSCRIPTION_NOT_AVAILABLE:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "INVALID_RESPONSE"

    invoke-direct {v0, v1, v3}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->INVALID_RESPONSE:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 9
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "RADIO_NOT_AVAILABLE"

    invoke-direct {v0, v1, v4}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 10
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "GENERIC_FAILURE"

    invoke-direct {v0, v1, v5}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->GENERIC_FAILURE:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 11
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "PASSWORD_INCORRECT"

    invoke-direct {v0, v1, v6}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->PASSWORD_INCORRECT:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 12
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "SIM_PIN2"

    invoke-direct {v0, v1, v7}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->SIM_PIN2:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 13
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "SIM_PUK2"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->SIM_PUK2:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 14
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "REQUEST_NOT_SUPPORTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 15
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "OP_NOT_ALLOWED_DURING_VOICE_CALL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->OP_NOT_ALLOWED_DURING_VOICE_CALL:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 16
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "OP_NOT_ALLOWED_BEFORE_REG_NW"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 17
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "SMS_FAIL_RETRY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->SMS_FAIL_RETRY:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 18
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "SIM_ABSENT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->SIM_ABSENT:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 19
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "SUBSCRIPTION_NOT_AVAILABLE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->SUBSCRIPTION_NOT_AVAILABLE:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 20
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "MODE_NOT_SUPPORTED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->MODE_NOT_SUPPORTED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 21
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "FDN_CHECK_FAILURE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->FDN_CHECK_FAILURE:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 22
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "ILLEGAL_SIM_OR_ME"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 23
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "MISSING_RESOURCE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->MISSING_RESOURCE:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 24
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "NO_SUCH_ELEMENT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->NO_SUCH_ELEMENT:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 25
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "SIM_FAIL"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->SIM_FAIL:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 26
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "DUE_TO_FDN"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->DUE_TO_FDN:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 27
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "PB_MEM_FULL"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->PB_MEM_FULL:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 28
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "PW_REGISTRATION_FAILURE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->PW_REGISTRATION_FAILURE:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 29
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "NEGATIVE_PW_CHECK"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->NEGATIVE_PW_CHECK:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 30
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "NUM_OF_PW_ATTEMPTS_VIOLATION"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->NUM_OF_PW_ATTEMPTS_VIOLATION:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 31
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "DUE_TO_CB"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->DUE_TO_CB:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 32
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "FDN_NOT_SUPPORT"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->FDN_NOT_SUPPORT:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 33
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "NW_SCAN_NOT_ALLOWED"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->NW_SCAN_NOT_ALLOWED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 34
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    const-string v1, "SETUP_DATA_CALL_FAILURE"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->SETUP_DATA_CALL_FAILURE:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    .line 7
    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->INVALID_RESPONSE:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->GENERIC_FAILURE:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->PASSWORD_INCORRECT:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->SIM_PIN2:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->SIM_PUK2:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->OP_NOT_ALLOWED_DURING_VOICE_CALL:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->SMS_FAIL_RETRY:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->SIM_ABSENT:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->SUBSCRIPTION_NOT_AVAILABLE:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->MODE_NOT_SUPPORTED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->FDN_CHECK_FAILURE:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->MISSING_RESOURCE:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->NO_SUCH_ELEMENT:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->SIM_FAIL:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->DUE_TO_FDN:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->PB_MEM_FULL:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->PW_REGISTRATION_FAILURE:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->NEGATIVE_PW_CHECK:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->NUM_OF_PW_ATTEMPTS_VIOLATION:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->DUE_TO_CB:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->FDN_NOT_SUPPORT:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->NW_SCAN_NOT_ALLOWED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->SETUP_DATA_CALL_FAILURE:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->$VALUES:[Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    return-object v0
.end method

.method public static values()[Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->$VALUES:[Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    invoke-virtual {v0}, [Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;

    return-object v0
.end method
