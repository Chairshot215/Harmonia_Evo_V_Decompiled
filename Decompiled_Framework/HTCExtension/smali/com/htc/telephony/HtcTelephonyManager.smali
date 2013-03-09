.class public Lcom/htc/telephony/HtcTelephonyManager;
.super Ljava/lang/Object;
.source "HtcTelephonyManager.java"


# static fields
.field public static final SECTOR_ID_NETWORK_EHRPD:I = 0x0

.field public static final SECTOR_ID_NETWORK_LTE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HtcTelephonyManager"

.field private static sInstance:Lcom/htc/telephony/HtcTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/telephony/HtcTelephonyManager;

    invoke-direct {v0}, Lcom/htc/telephony/HtcTelephonyManager;-><init>()V

    sput-object v0, Lcom/htc/telephony/HtcTelephonyManager;->sInstance:Lcom/htc/telephony/HtcTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/htc/telephony/HtcTelephonyManager;
    .locals 1

    sget-object v0, Lcom/htc/telephony/HtcTelephonyManager;->sInstance:Lcom/htc/telephony/HtcTelephonyManager;

    return-object v0
.end method

.method private getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;
    .locals 1

    const-string v0, "htctelephony"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSectorId(I)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getSectorId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public requestGetDOMAIN()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetDOMAIN()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public requestGetGID1()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetGID1()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public requestGetIMPI()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetIMPI()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public requestGetIMPU()[Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetIMPU()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public requestGetIMSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetIMSI(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public requestGetPCSCF()Landroid/os/Bundle;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetPCSCF()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public requestGetPCSCFAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetPCSCFAddress(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public requestGetVolteSipRegFailure()I
    .locals 3

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetVolteSipRegFailure()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public requestLtePermanentlyDetached()Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestLtePermanentlyDetached()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
