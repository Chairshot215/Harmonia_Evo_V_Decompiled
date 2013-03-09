.class public Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;
.super Ljava/lang/Object;
.source "CustomizedManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/custom/CustomizedManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KddiSmsManager"
.end annotation


# static fields
.field public static final KDDI_RESULT_ST_CANCEL_COMPLETED:I

.field public static final KDDI_RESULT_ST_ERROR_C_NO_REGISTER:I

.field public static final KDDI_RESULT_ST_ERROR_C_NO_USER:I

.field public static final KDDI_RESULT_ST_ERROR_C_RESTRICTED:I

.field public static final KDDI_RESULT_ST_ERROR_C_SUSPEND:I

.field public static final KDDI_RESULT_ST_ERROR_GENERIC_FAILURE:I

.field public static final KDDI_RESULT_ST_ERROR_IMF_DOESNT_USE:I

.field public static final KDDI_RESULT_ST_ERROR_IMF_DOESNT_WORK:I

.field public static final KDDI_RESULT_ST_ERROR_MAIL_BOX_OVER:I

.field public static final KDDI_RESULT_ST_ERROR_ON_CALLING:I

.field public static final KDDI_RESULT_ST_ERROR_R_NO_REGISTER:I

.field public static final KDDI_RESULT_ST_ERROR_R_NO_USER:I

.field public static final KDDI_RESULT_ST_ERROR_R_RESTRICTED:I

.field public static final KDDI_RESULT_ST_ERROR_R_SUSPEND:I

.field public static final KDDI_RESULT_ST_OK:I

.field public static final KDDI_RESULT_TR_CANCEL_COMPLETED:I

.field public static final KDDI_RESULT_TR_ERROR_C_NO_REGISTER:I

.field public static final KDDI_RESULT_TR_ERROR_C_NO_USER:I

.field public static final KDDI_RESULT_TR_ERROR_C_RESTRICTED:I

.field public static final KDDI_RESULT_TR_ERROR_C_SUSPEND:I

.field public static final KDDI_RESULT_TR_ERROR_GENERIC_FAILURE:I

.field public static final KDDI_RESULT_TR_ERROR_IMF_DOESNT_USE:I

.field public static final KDDI_RESULT_TR_ERROR_IMF_DOESNT_WORK:I

.field public static final KDDI_RESULT_TR_ERROR_IMF_UNEXPECTED_OCCURRENCE:I

.field public static final KDDI_RESULT_TR_ERROR_ON_CALLING:I

.field public static final KDDI_RESULT_TR_ERROR_R_NO_REGISTER:I

.field public static final KDDI_RESULT_TR_ERROR_R_NO_USER:I

.field public static final KDDI_RESULT_TR_ERROR_R_RESTRICTED:I

.field public static final KDDI_RESULT_TR_ERROR_R_SUSPEND:I

.field public static final KDDI_RESULT_TR_OK:I

.field public static final KDDI_SEND_MODE_STANDARD_API:I

.field public static final KDDI_SEND_MODE_STORE:I

.field public static final KDDI_SEND_MODE_TRANSACTION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiSendModeTransaction()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_SEND_MODE_TRANSACTION:I

    .line 31
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiSendModeStore()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_SEND_MODE_STORE:I

    .line 34
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiSendModeStandardAPI()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_SEND_MODE_STANDARD_API:I

    .line 37
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultTrOk()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_TR_OK:I

    .line 40
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultTrErrorCNoUser()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_TR_ERROR_C_NO_USER:I

    .line 43
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultTrErrorCNoRegister()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_TR_ERROR_C_NO_REGISTER:I

    .line 46
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultTrErrorCSuspend()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_TR_ERROR_C_SUSPEND:I

    .line 49
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultTrErrorCRestricted()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_TR_ERROR_C_RESTRICTED:I

    .line 52
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultTrErrorRNoUser()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_TR_ERROR_R_NO_USER:I

    .line 55
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultTrErrorRNoRegister()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_TR_ERROR_R_NO_REGISTER:I

    .line 58
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultTrErrorRSuspend()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_TR_ERROR_R_SUSPEND:I

    .line 61
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultTrErrorRRestricted()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_TR_ERROR_R_RESTRICTED:I

    .line 64
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultTrErrorImfDoesntWork()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_TR_ERROR_IMF_DOESNT_WORK:I

    .line 67
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultTrErrorImfDoesntUse()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_TR_ERROR_IMF_DOESNT_USE:I

    .line 70
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultTrErrorImfUnexpectedOccurrence()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_TR_ERROR_IMF_UNEXPECTED_OCCURRENCE:I

    .line 73
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultTrErrorOnCalling()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_TR_ERROR_ON_CALLING:I

    .line 76
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultTrErrorGenericFailure()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_TR_ERROR_GENERIC_FAILURE:I

    .line 79
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultTrCancelCompleted()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_TR_CANCEL_COMPLETED:I

    .line 82
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultStOk()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_ST_OK:I

    .line 85
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultStErrorCNoUser()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_ST_ERROR_C_NO_USER:I

    .line 88
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultStErrorCNoRegister()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_ST_ERROR_C_NO_REGISTER:I

    .line 91
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultStErrorCSuspend()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_ST_ERROR_C_SUSPEND:I

    .line 94
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultStErrorCRestricted()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_ST_ERROR_C_RESTRICTED:I

    .line 97
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultStErrorRNoUser()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_ST_ERROR_R_NO_USER:I

    .line 100
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultStErrorRNoRegister()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_ST_ERROR_R_NO_REGISTER:I

    .line 103
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultStErrorRSuspend()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_ST_ERROR_R_SUSPEND:I

    .line 106
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultStErrorRRestricted()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_ST_ERROR_R_RESTRICTED:I

    .line 109
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultStErrorImfDoesntWork()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_ST_ERROR_IMF_DOESNT_WORK:I

    .line 112
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultStErrorImfDoesntUse()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_ST_ERROR_IMF_DOESNT_USE:I

    .line 115
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultStErrorMailBoxOver()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_ST_ERROR_MAIL_BOX_OVER:I

    .line 118
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultStErrorOnCalling()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_ST_ERROR_ON_CALLING:I

    .line 121
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultStErrorGenericFailure()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_ST_ERROR_GENERIC_FAILURE:I

    .line 124
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/custom/CustomizedManager;->getKddiResultStCancelCompleted()I

    move-result v0

    sput v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_ST_CANCEL_COMPLETED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
