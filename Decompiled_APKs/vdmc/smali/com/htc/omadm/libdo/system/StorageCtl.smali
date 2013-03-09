.class public Lcom/htc/omadm/libdo/system/StorageCtl;
.super Ljava/lang/Object;
.source "StorageCtl.java"


# static fields
.field private static final CMD_NOK:I = 0x0

.field private static final CMD_OK:I = 0x1

.field private static final GPS_CLEAN_AIDING_DATA_SLEEP_MSEC:I = 0x5dc

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x10

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static mStorageCtl:Lcom/htc/omadm/libdo/system/StorageCtl;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mMountService:Landroid/os/storage/IMountService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "StorageCtl"

    sput-object v0, Lcom/htc/omadm/libdo/system/StorageCtl;->LOG_TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/omadm/libdo/system/StorageCtl;->mStorageCtl:Lcom/htc/omadm/libdo/system/StorageCtl;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/omadm/libdo/system/StorageCtl;->mMountService:Landroid/os/storage/IMountService;

    .line 55
    iput-object p1, p0, Lcom/htc/omadm/libdo/system/StorageCtl;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method public static getSingleton(Landroid/content/Context;)Lcom/htc/omadm/libdo/system/StorageCtl;
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    sget-object v0, Lcom/htc/omadm/libdo/system/StorageCtl;->mStorageCtl:Lcom/htc/omadm/libdo/system/StorageCtl;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/htc/omadm/libdo/system/StorageCtl;

    invoke-direct {v0, p0}, Lcom/htc/omadm/libdo/system/StorageCtl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/libdo/system/StorageCtl;->mStorageCtl:Lcom/htc/omadm/libdo/system/StorageCtl;

    .line 51
    :cond_0
    sget-object v0, Lcom/htc/omadm/libdo/system/StorageCtl;->mStorageCtl:Lcom/htc/omadm/libdo/system/StorageCtl;

    return-object v0
.end method


# virtual methods
.method public FactoryReset()I
    .locals 15

    .prologue
    const-wide/16 v13, 0x5dc

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 64
    iget-object v8, p0, Lcom/htc/omadm/libdo/system/StorageCtl;->mContext:Landroid/content/Context;

    const-string v11, "location"

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/LocationManager;

    iput-object v8, p0, Lcom/htc/omadm/libdo/system/StorageCtl;->mLocationManager:Landroid/location/LocationManager;

    .line 65
    iget-object v8, p0, Lcom/htc/omadm/libdo/system/StorageCtl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "location_providers_allowed"

    invoke-static {v8, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, allowedProviders:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 68
    const-string v1, ""

    .line 71
    :cond_0
    move-object v0, v1

    .line 73
    .local v0, allowState:Ljava/lang/String;
    const-string v8, "gps"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 74
    .local v5, mGpsEnabled:Z
    if-nez v5, :cond_1

    .line 75
    sget-object v8, Lcom/htc/omadm/libdo/system/StorageCtl;->LOG_TAG:Ljava/lang/String;

    const-string v11, "GPS is not enabled by default. Enable GPS now!!"

    invoke-static {v8, v11}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v8, ",gps"

    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    iget-object v8, p0, Lcom/htc/omadm/libdo/system/StorageCtl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "location_providers_allowed"

    invoke-static {v8, v11, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 81
    :cond_1
    sget-object v8, Lcom/htc/omadm/libdo/system/StorageCtl;->LOG_TAG:Ljava/lang/String;

    const-string v11, "Start to clean GPS aiding data."

    invoke-static {v8, v11}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v3, extra:Landroid/os/Bundle;
    const-string v8, "all"

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    iget-object v8, p0, Lcom/htc/omadm/libdo/system/StorageCtl;->mLocationManager:Landroid/location/LocationManager;

    const-string v11, "gps"

    const-string v12, "delete_aiding_data"

    invoke-virtual {v8, v11, v12, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 86
    invoke-static {v13, v14}, Landroid/os/SystemClock;->sleep(J)V

    .line 87
    sget-object v8, Lcom/htc/omadm/libdo/system/StorageCtl;->LOG_TAG:Ljava/lang/String;

    const-string v11, "Clean GPS aiding data complete."

    invoke-static {v8, v11}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-nez v5, :cond_2

    .line 91
    sget-object v8, Lcom/htc/omadm/libdo/system/StorageCtl;->LOG_TAG:Ljava/lang/String;

    const-string v11, "GPS is temp enabled before, so, recover to original state for CDMA NV data now !!"

    invoke-static {v8, v11}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v8, p0, Lcom/htc/omadm/libdo/system/StorageCtl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "location_providers_allowed"

    invoke-static {v8, v11, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    invoke-static {v13, v14}, Landroid/os/SystemClock;->sleep(J)V

    .line 96
    sget-object v8, Lcom/htc/omadm/libdo/system/StorageCtl;->LOG_TAG:Ljava/lang/String;

    const-string v11, "Recover CDMA NV data by recover allowed location provider complete."

    invoke-static {v8, v11}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_2
    const/4 v6, 0x0

    .line 100
    .local v6, radioOff:Z
    const-string v8, "phone"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 102
    .local v7, sPhone:Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    sget-object v8, Lcom/htc/omadm/libdo/system/StorageCtl;->LOG_TAG:Ljava/lang/String;

    const-string v11, "Start to shutdown radio."

    invoke-static {v8, v11}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-eqz v7, :cond_3

    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v8

    if-nez v8, :cond_7

    :cond_3
    move v6, v9

    .line 104
    :goto_0
    if-nez v6, :cond_4

    .line 105
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_4
    :goto_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    const/16 v8, 0x10

    if-ge v4, v8, :cond_6

    .line 113
    if-nez v6, :cond_5

    .line 115
    :try_start_1
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-nez v8, :cond_8

    move v6, v9

    .line 121
    :cond_5
    :goto_3
    if-eqz v6, :cond_9

    .line 122
    sget-object v8, Lcom/htc/omadm/libdo/system/StorageCtl;->LOG_TAG:Ljava/lang/String;

    const-string v10, "Radio shutdown complete."

    invoke-static {v8, v10}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_6
    sget-object v8, Lcom/htc/omadm/libdo/system/StorageCtl;->LOG_TAG:Ljava/lang/String;

    const-string v10, "Doing factory reset"

    invoke-static {v8, v10}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object v8, Lcom/htc/omadm/libdo/system/StorageCtl;->LOG_TAG:Ljava/lang/String;

    const-string v10, "intent"

    invoke-static {v8, v10}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v8, p0, Lcom/htc/omadm/libdo/system/StorageCtl;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 133
    return v9

    .end local v4           #i:I
    :cond_7
    move v6, v10

    .line 103
    goto :goto_0

    .line 107
    :catch_0
    move-exception v2

    .line 108
    .local v2, ex:Landroid/os/RemoteException;
    sget-object v8, Lcom/htc/omadm/libdo/system/StorageCtl;->LOG_TAG:Ljava/lang/String;

    const-string v11, "RemoteException during radio shutdown"

    invoke-static {v8, v11, v2}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2           #ex:Landroid/os/RemoteException;
    .restart local v4       #i:I
    :cond_8
    move v6, v10

    .line 115
    goto :goto_3

    .line 116
    :catch_1
    move-exception v2

    .line 117
    .restart local v2       #ex:Landroid/os/RemoteException;
    sget-object v8, Lcom/htc/omadm/libdo/system/StorageCtl;->LOG_TAG:Ljava/lang/String;

    const-string v11, "RemoteException during radio shutdown"

    invoke-static {v8, v11, v2}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    const/4 v6, 0x1

    goto :goto_3

    .line 125
    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_9
    const-wide/16 v11, 0x1f4

    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    .line 112
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method
