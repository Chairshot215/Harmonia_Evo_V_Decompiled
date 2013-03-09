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

    .prologue
    .line 36
    new-instance v0, Lcom/htc/telephony/HtcTelephonyManager;

    invoke-direct {v0}, Lcom/htc/telephony/HtcTelephonyManager;-><init>()V

    sput-object v0, Lcom/htc/telephony/HtcTelephonyManager;->sInstance:Lcom/htc/telephony/HtcTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getDefault()Lcom/htc/telephony/HtcTelephonyManager;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/htc/telephony/HtcTelephonyManager;->sInstance:Lcom/htc/telephony/HtcTelephonyManager;

    return-object v0
.end method

.method private getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;
    .locals 1

    .prologue
    .line 43
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
    .parameter "requestedNetworkType"

    .prologue
    const/4 v1, 0x0

    .line 161
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getSectorId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 165
    :goto_0
    return-object v1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 164
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 165
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetDOMAIN()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 80
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetDOMAIN()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 84
    :goto_0
    return-object v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 83
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 84
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetGID1()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 172
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetGID1()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 176
    :goto_0
    return-object v1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 175
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 176
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetIMPI()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 70
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetIMPI()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 74
    :goto_0
    return-object v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 73
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 74
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetIMPU()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 90
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetIMPU()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 94
    :goto_0
    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 93
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 94
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetIMSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phonetype"

    .prologue
    const/4 v1, 0x0

    .line 111
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetIMSI(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 114
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 115
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phonetype"

    .prologue
    const/4 v1, 0x0

    .line 122
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 126
    :goto_0
    return-object v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 125
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 126
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetPCSCF()Landroid/os/Bundle;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 100
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetPCSCF()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 104
    :goto_0
    return-object v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 103
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 104
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetPCSCFAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "ifc_name"

    .prologue
    const/4 v1, 0x0

    .line 60
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetPCSCFAddress(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 64
    :goto_0
    return-object v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 63
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 64
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetVolteSipRegFailure()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 50
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetVolteSipRegFailure()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 54
    :goto_0
    return v1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 53
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 54
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 140
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 144
    :goto_0
    return-object v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 143
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 144
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestLtePermanentlyDetached()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 184
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestLtePermanentlyDetached()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 188
    :goto_0
    return v1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 187
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 188
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method
