.class final Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;
.super Ljava/lang/Object;
.source "HtcCompanyDirectoryPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcCompanyDirectoryPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ErrorMessager"
.end annotation


# static fields
.field public static final ERROR_500_SERVER_ERROR:I

.field public static final ERROR_PHONE_STATUS_AIRPLANEMODE:I

.field public static final ERROR_PHONE_STATUS_EXCHANGE_NOT_SETUP_YET:I

.field public static final ERROR_PHONE_STATUS_ROAMING:I

.field public static final ERROR_SYSTEM_FATAL_ERROR:I

.field public static final ERROR_SYSTEM_SERVICE_ERROR:I

.field public static final ERROR_USER_INPUT_EMPTY:I

.field public static nCountOfErrorHandler:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 996
    const/4 v0, 0x0

    sput v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->nCountOfErrorHandler:I

    .line 997
    sget v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->nCountOfErrorHandler:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->nCountOfErrorHandler:I

    sput v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->ERROR_SYSTEM_FATAL_ERROR:I

    .line 998
    sget v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->nCountOfErrorHandler:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->nCountOfErrorHandler:I

    sput v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->ERROR_SYSTEM_SERVICE_ERROR:I

    .line 999
    sget v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->nCountOfErrorHandler:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->nCountOfErrorHandler:I

    sput v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->ERROR_PHONE_STATUS_EXCHANGE_NOT_SETUP_YET:I

    .line 1000
    sget v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->nCountOfErrorHandler:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->nCountOfErrorHandler:I

    sput v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->ERROR_PHONE_STATUS_AIRPLANEMODE:I

    .line 1001
    sget v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->nCountOfErrorHandler:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->nCountOfErrorHandler:I

    sput v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->ERROR_PHONE_STATUS_ROAMING:I

    .line 1002
    sget v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->nCountOfErrorHandler:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->nCountOfErrorHandler:I

    sput v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->ERROR_USER_INPUT_EMPTY:I

    .line 1003
    sget v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->nCountOfErrorHandler:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->nCountOfErrorHandler:I

    sput v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->ERROR_500_SERVER_ERROR:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 994
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDetailErrorMsg(I)Ljava/lang/String;
    .locals 1
    .parameter "code"

    .prologue
    .line 1007
    sget v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->ERROR_SYSTEM_FATAL_ERROR:I

    if-ne p0, v0, :cond_0

    .line 1008
    const-string v0, "System error"

    .line 1022
    :goto_0
    return-object v0

    .line 1009
    :cond_0
    sget v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->ERROR_SYSTEM_SERVICE_ERROR:I

    if-ne p0, v0, :cond_1

    .line 1010
    const-string v0, "Can\'t get system service"

    goto :goto_0

    .line 1011
    :cond_1
    sget v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->ERROR_PHONE_STATUS_EXCHANGE_NOT_SETUP_YET:I

    if-ne p0, v0, :cond_2

    .line 1012
    const-string v0, "You need setup exchange server first"

    goto :goto_0

    .line 1013
    :cond_2
    sget v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->ERROR_PHONE_STATUS_AIRPLANEMODE:I

    if-ne p0, v0, :cond_3

    .line 1014
    const-string v0, "Phone status: Airplane mode"

    goto :goto_0

    .line 1015
    :cond_3
    sget v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->ERROR_PHONE_STATUS_ROAMING:I

    if-ne p0, v0, :cond_4

    .line 1016
    const-string v0, "Phone status: Roaming"

    goto :goto_0

    .line 1017
    :cond_4
    sget v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->ERROR_USER_INPUT_EMPTY:I

    if-ne p0, v0, :cond_5

    .line 1018
    const-string v0, "Empty input"

    goto :goto_0

    .line 1019
    :cond_5
    sget v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->ERROR_500_SERVER_ERROR:I

    if-ne p0, v0, :cond_6

    .line 1020
    const-string v0, "The search could not be completed. Please try again later."

    goto :goto_0

    .line 1022
    :cond_6
    const-string v0, "None define!"

    goto :goto_0
.end method
