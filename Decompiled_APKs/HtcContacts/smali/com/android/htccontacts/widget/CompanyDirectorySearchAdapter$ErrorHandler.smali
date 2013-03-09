.class final Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$ErrorHandler;
.super Ljava/lang/Object;
.source "CompanyDirectorySearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ErrorHandler"
.end annotation


# static fields
.field public static final ERROR_500_SERVER_ERROR:I = 0x7

.field public static final ERROR_PHONE_STATUS_AIRPLANEMODE:I = 0x4

.field public static final ERROR_PHONE_STATUS_EXCHANGE_NOT_SETUP_YET:I = 0x3

.field public static final ERROR_PHONE_STATUS_ROAMING:I = 0x5

.field public static final ERROR_SYSTEM_FATAL_ERROR:I = 0x1

.field public static final ERROR_SYSTEM_SERVICE_ERROR:I = 0x2

.field public static final ERROR_USER_INPUT_EMPTY:I = 0x6


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1009
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDetailErrorMsg(I)Ljava/lang/String;
    .locals 1
    .parameter "code"

    .prologue
    .line 1019
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 1020
    const-string v0, "System error"

    .line 1034
    :goto_0
    return-object v0

    .line 1021
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 1022
    const-string v0, "Can\'t get system service"

    goto :goto_0

    .line 1023
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 1024
    const-string v0, "You need setup exchange server first"

    goto :goto_0

    .line 1025
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 1026
    const-string v0, "Phone status: Airplane mode"

    goto :goto_0

    .line 1027
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 1028
    const-string v0, "Phone status: Roaming"

    goto :goto_0

    .line 1029
    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    .line 1030
    const-string v0, "Empty input"

    goto :goto_0

    .line 1031
    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    .line 1032
    const-string v0, "The search could not be completed. Please try again later."

    goto :goto_0

    .line 1034
    :cond_6
    const-string v0, "None define!"

    goto :goto_0
.end method
