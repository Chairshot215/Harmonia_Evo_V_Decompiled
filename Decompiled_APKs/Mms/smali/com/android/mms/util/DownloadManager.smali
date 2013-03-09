.class public Lcom/android/mms/util/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/DownloadManager$GetAutoDownloadStateTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFERRED_MASK:I = 0x4

.field private static final LOCAL_LOGV:Z = false

.field public static final STATE_DOWNLOADING:I = 0x81

.field public static final STATE_PERMANENT_FAILURE:I = 0x87

.field public static final STATE_TRANSIENT_FAILURE:I = 0x82

.field public static final STATE_UNSTARTED:I = 0x80

.field private static final TAG:Ljava/lang/String; = "DownloadManager"

.field private static sInstance:Lcom/android/mms/util/DownloadManager;


# instance fields
.field private mAutoDownload:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPreferences:Landroid/content/SharedPreferences;

.field private final mPreferencesChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mRoamingStateListener:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 156
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/android/mms/util/DownloadManager$1;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DownloadManager$1;-><init>(Lcom/android/mms/util/DownloadManager;)V

    iput-object v0, p0, Lcom/android/mms/util/DownloadManager;->mPreferencesChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 97
    new-instance v0, Lcom/android/mms/util/DownloadManager$2;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DownloadManager$2;-><init>(Lcom/android/mms/util/DownloadManager;)V

    iput-object v0, p0, Lcom/android/mms/util/DownloadManager;->mRoamingStateListener:Landroid/content/BroadcastReceiver;

    .line 157
    iput-object p1, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/DownloadManager;->mHandler:Landroid/os/Handler;

    .line 159
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 160
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mPreferencesChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 162
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mRoamingStateListener:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/util/DownloadManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/util/DownloadManager;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/util/DownloadManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/util/DownloadManager;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/mms/util/DownloadManager;->getMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAutoDownloadState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 216
    sget-object v0, Lcom/android/mms/util/DownloadManager;->sInstance:Lcom/android/mms/util/DownloadManager;

    if-nez v0, :cond_0

    .line 217
    const-string v0, "kelvin"

    const-string v1, "download manager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->isRoaming()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/util/DownloadManager;->getAutoDownloadState(Landroid/content/SharedPreferences;Z)Z

    move-result v0

    .line 222
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/mms/util/DownloadManager;->sInstance:Lcom/android/mms/util/DownloadManager;

    invoke-virtual {v0}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v0

    goto :goto_0
.end method

.method static getAutoDownloadState(Landroid/content/SharedPreferences;)Z
    .locals 1
    .parameter "prefs"

    .prologue
    .line 227
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->isRoaming()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/mms/util/DownloadManager;->getAutoDownloadState(Landroid/content/SharedPreferences;Z)Z

    move-result v0

    return v0
.end method

.method static getAutoDownloadState(Landroid/content/SharedPreferences;Z)Z
    .locals 7
    .parameter "prefs"
    .parameter "roaming"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 231
    const-string v4, "pref_key_mms_auto_retrieval"

    invoke-interface {p0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 235
    .local v1, autoDownload:Z
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "auto download without roaming -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    if-eqz v1, :cond_2

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, alwaysAuto:Z
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1111 auto download during roaming -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 243
    const/4 v0, 0x1

    .line 247
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ATT auto download during roaming -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_0
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "auto download during roaming -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->isRetrievalEnableByCustomization()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 264
    .end local v0           #alwaysAuto:Z
    :cond_0
    :goto_1
    return v2

    .line 249
    .restart local v0       #alwaysAuto:Z
    :cond_1
    sget-object v4, Lcom/android/mms/ui/MessagingPreferenceActivity;->RETRIEVAL_DURING_ROAMING:Ljava/lang/String;

    invoke-interface {p0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 251
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "non-ATT auto download during roaming -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #alwaysAuto:Z
    :cond_2
    move v2, v3

    .line 264
    goto :goto_1
.end method

.method public static getInstance()Lcom/android/mms/util/DownloadManager;
    .locals 2

    .prologue
    .line 203
    sget-object v0, Lcom/android/mms/util/DownloadManager;->sInstance:Lcom/android/mms/util/DownloadManager;

    if-nez v0, :cond_1

    .line 204
    const-class v1, Lcom/android/mms/util/DownloadManager;

    monitor-enter v1

    .line 205
    :try_start_0
    sget-object v0, Lcom/android/mms/util/DownloadManager;->sInstance:Lcom/android/mms/util/DownloadManager;

    if-nez v0, :cond_0

    .line 206
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/util/DownloadManager;->init(Landroid/content/Context;)V

    .line 208
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :cond_1
    sget-object v0, Lcom/android/mms/util/DownloadManager;->sInstance:Lcom/android/mms/util/DownloadManager;

    return-object v0

    .line 208
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getMessage(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 348
    iget-object v4, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/NotificationInd;

    .line 351
    .local v1, ind:Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 352
    .local v3, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, subject:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 356
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, from:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0900f5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 352
    .end local v0           #from:Ljava/lang/String;
    .end local v2           #subject:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0900f3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 356
    .restart local v2       #subject:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0900f4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 186
    const-class v1, Lcom/android/mms/util/DownloadManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/util/DownloadManager;->sInstance:Lcom/android/mms/util/DownloadManager;

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "DownloadManager"

    const-string v2, "Already initialized."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :goto_0
    monitor-exit v1

    return-void

    .line 190
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/mms/util/DownloadManager;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DownloadManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/util/DownloadManager;->sInstance:Lcom/android/mms/util/DownloadManager;

    .line 192
    sget-object v0, Lcom/android/mms/util/DownloadManager;->sInstance:Lcom/android/mms/util/DownloadManager;

    sget-object v2, Lcom/android/mms/util/DownloadManager;->sInstance:Lcom/android/mms/util/DownloadManager;

    iget-object v2, v2, Lcom/android/mms/util/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/android/mms/util/DownloadManager;->getAutoDownloadState(Landroid/content/SharedPreferences;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isRetrievalEnableByCustomization()Z
    .locals 3

    .prologue
    .line 380
    const/4 v1, 0x0

    .line 382
    .local v1, pref:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getRetrievalSetting(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 387
    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "operator_define_yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, e:Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    goto :goto_0

    .line 387
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isRoaming()Z
    .locals 4

    .prologue
    .line 268
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 269
    const-string v1, "gsm.operator.isroaming"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, roaming:Ljava/lang/String;
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roaming ------> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 278
    :goto_0
    return v1

    .end local v0           #roaming:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getState(Landroid/net/Uri;)I
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 364
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "st"

    aput-object v2, v3, v5

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 367
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 369
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    and-int/lit8 v0, v0, -0x5

    .line 373
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 376
    :goto_0
    return v0

    .line 373
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 376
    :cond_1
    const/16 v0, 0x80

    goto :goto_0

    .line 373
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public isAuto()Z
    .locals 2

    .prologue
    .line 173
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSendUnderMobileNetworkUnChecked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->isMobileNetworkChecked(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Z

    .line 177
    :goto_0
    return v0

    .line 176
    :cond_1
    const-string v0, "DownloadManager"

    const-string v1, "not SupportSendUnderMobileNetworkUnChecked and MobileNetwork unChecked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markState(Landroid/net/Uri;I)Z
    .locals 18
    .parameter "uri"
    .parameter "state"

    .prologue
    .line 284
    const/4 v10, 0x0

    .line 286
    .local v10, stopRetry:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v9

    check-cast v9, Lcom/google/android/mms/pdu/NotificationInd;

    .line 288
    .local v9, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v13, 0x3e8

    div-long/2addr v6, v13

    cmp-long v2, v2, v6

    if-gez v2, :cond_0

    .line 289
    const/4 v10, 0x1

    .line 292
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_2

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0901e5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 302
    .local v12, str:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/DownloadManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/util/DownloadManager$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12}, Lcom/android/mms/util/DownloadManager$3;-><init>(Lcom/android/mms/util/DownloadManager;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .end local v12           #str:Ljava/lang/String;
    :cond_0
    const/16 v2, 0x87

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/DownloadManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/util/DownloadManager$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/android/mms/util/DownloadManager$4;-><init>(Lcom/android/mms/util/DownloadManager;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 339
    :cond_1
    :goto_1
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 340
    .local v5, values:Landroid/content/ContentValues;
    const-string v2, "st"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v11, v10

    .line 344
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v9           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .end local v10           #stopRetry:Z
    .local v11, stopRetry:Z
    :goto_2
    return v11

    .line 297
    .end local v11           #stopRetry:Z
    .restart local v9       #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .restart local v10       #stopRetry:Z
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0901ae

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    const v4, 0x7f090028

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    invoke-static {v13, v14, v15}, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->formatTimeStampStringForFuture(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v6, v7

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    .restart local v12       #str:Ljava/lang/String;
    goto/16 :goto_0

    .line 313
    .end local v9           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .end local v12           #str:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 314
    .local v8, e:Lcom/google/android/mms/MmsException;
    const-string v2, "DownloadManager"

    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v11, v10

    .line 315
    .end local v10           #stopRetry:Z
    .restart local v11       #stopRetry:Z
    goto :goto_2

    .line 331
    .end local v8           #e:Lcom/google/android/mms/MmsException;
    .end local v11           #stopRetry:Z
    .restart local v9       #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .restart local v10       #stopRetry:Z
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Z

    if-nez v2, :cond_1

    .line 332
    const-string v2, "Goven"

    const-string v3, "DownloadManager/ !mAutoDownload"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSendUnderMobileNetworkUnChecked()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->isMobileNetworkChecked(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    :cond_4
    or-int/lit8 p2, p2, 0x4

    goto/16 :goto_1
.end method
