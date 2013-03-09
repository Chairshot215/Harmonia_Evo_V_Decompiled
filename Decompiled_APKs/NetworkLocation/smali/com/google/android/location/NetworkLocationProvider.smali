.class Lcom/google/android/location/NetworkLocationProvider;
.super Lcom/android/location/provider/LocationProvider;
.source "NetworkLocationProvider.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/NetworkLocationProvider$1;,
        Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;
    }
.end annotation


# static fields
.field private static context:Landroid/content/Context;

.field private static instance:Lcom/google/android/location/NetworkLocationProvider;


# instance fields
.field private final client:Lcom/google/android/location/internal/client/NetworkLocationClient;

.field private final lock:Ljava/lang/Object;

.field private looper:Landroid/os/Looper;

.field private mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

.field private mStarted:Z

.field private final mThread:Ljava/lang/Thread;

.field private minTimeSeconds:I

.field private networkState:I

.field private status:I

.field private statusUpdateTime:J


# direct methods
.method private constructor <init>()V
    .locals 9

    .prologue
    const v7, 0x7fffffff

    const/4 v4, 0x0

    const/4 v8, -0x1

    const/4 v3, 0x1

    .line 113
    invoke-direct {p0}, Lcom/android/location/provider/LocationProvider;-><init>()V

    .line 87
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/google/android/location/NetworkLocationProvider;->lock:Ljava/lang/Object;

    .line 90
    const/4 v5, 0x2

    iput v5, p0, Lcom/google/android/location/NetworkLocationProvider;->status:I

    .line 91
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/google/android/location/NetworkLocationProvider;->statusUpdateTime:J

    .line 93
    iput v7, p0, Lcom/google/android/location/NetworkLocationProvider;->minTimeSeconds:I

    .line 94
    iput v3, p0, Lcom/google/android/location/NetworkLocationProvider;->networkState:I

    .line 114
    sget-object v5, Lcom/google/android/location/NetworkLocationProvider;->context:Landroid/content/Context;

    if-nez v5, :cond_0

    .line 115
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "must call init"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 117
    :cond_0
    iput-boolean v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mStarted:Z

    .line 118
    new-instance v5, Ljava/lang/Thread;

    const/4 v6, 0x0

    const-string v7, "NetworkLocationProvider"

    invoke-direct {v5, v6, p0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/google/android/location/NetworkLocationProvider;->mThread:Ljava/lang/Thread;

    .line 119
    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider;->mThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 122
    sget-object v5, Lcom/google/android/location/NetworkLocationProvider;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 123
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v5, "user-confirmed"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 124
    .local v1, pref:I
    if-eq v1, v8, :cond_1

    .line 125
    if-ne v1, v3, :cond_2

    :goto_0
    invoke-direct {p0, v3}, Lcom/google/android/location/NetworkLocationProvider;->setUserConfirmedPreference(Z)V

    .line 127
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 128
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 129
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 134
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mThread:Ljava/lang/Thread;

    monitor-enter v4

    .line 135
    :goto_1
    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/location/NetworkLocationProvider;->mStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    .line 137
    :try_start_1
    iget-object v3, p0, Lcom/google/android/location/NetworkLocationProvider;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 138
    :catch_0
    move-exception v3

    goto :goto_1

    :cond_2
    move v3, v4

    .line 125
    goto :goto_0

    .line 141
    :cond_3
    :try_start_2
    new-instance v3, Lcom/google/android/location/internal/client/NetworkLocationClient;

    sget-object v5, Lcom/google/android/location/NetworkLocationProvider;->context:Landroid/content/Context;

    const v6, 0x7fffffff

    iget-object v7, p0, Lcom/google/android/location/NetworkLocationProvider;->looper:Landroid/os/Looper;

    invoke-direct {v3, v5, v6, p0, v7}, Lcom/google/android/location/internal/client/NetworkLocationClient;-><init>(Landroid/content/Context;ILandroid/location/LocationListener;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/google/android/location/NetworkLocationProvider;->client:Lcom/google/android/location/internal/client/NetworkLocationClient;

    .line 142
    monitor-exit v4

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method static synthetic access$000(Lcom/google/android/location/NetworkLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/location/NetworkLocationProvider;->handleEnable()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/location/NetworkLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/location/NetworkLocationProvider;->handleDisable()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/location/NetworkLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/location/NetworkLocationProvider;->handleSetMinTime()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/google/android/location/NetworkLocationProvider;
    .locals 2

    .prologue
    .line 110
    const-class v0, Lcom/google/android/location/NetworkLocationProvider;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/location/NetworkLocationProvider;->instance:Lcom/google/android/location/NetworkLocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handleDisable()V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/location/NetworkLocationProvider;->setUserConfirmedPreference(Z)V

    .line 355
    return-void
.end method

.method private handleEnable()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 323
    sget-object v0, Lcom/google/android/location/NetworkLocationProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "network_location_opt_in"

    aput-object v5, v4, v6

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 329
    if-nez v0, :cond_1

    .line 330
    const-string v0, "NetworkLocationProvider"

    const-string v1, "handleEnable: provider not available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 337
    sget-object v0, Lcom/google/android/location/NetworkLocationProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network_location_opt_in"

    invoke-static {v0, v1, v6}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/google/android/location/NetworkLocationProvider;->context:Landroid/content/Context;

    const-class v2, Lcom/google/android/location/ConfirmAlertActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 341
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 342
    sget-object v1, Lcom/google/android/location/NetworkLocationProvider;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleSetMinTime()V
    .locals 3

    .prologue
    .line 456
    iget-object v2, p0, Lcom/google/android/location/NetworkLocationProvider;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 457
    :try_start_0
    iget v0, p0, Lcom/google/android/location/NetworkLocationProvider;->minTimeSeconds:I

    .line 458
    .local v0, period:I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->client:Lcom/google/android/location/internal/client/NetworkLocationClient;

    invoke-virtual {v1, v0}, Lcom/google/android/location/internal/client/NetworkLocationClient;->changePeriod(I)V

    .line 460
    return-void

    .line 458
    .end local v0           #period:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 103
    const-class v1, Lcom/google/android/location/NetworkLocationProvider;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/google/android/location/NetworkLocationProvider;->context:Landroid/content/Context;

    .line 104
    sget-object v0, Lcom/google/android/location/NetworkLocationProvider;->instance:Lcom/google/android/location/NetworkLocationProvider;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/google/android/location/NetworkLocationProvider;

    invoke-direct {v0}, Lcom/google/android/location/NetworkLocationProvider;-><init>()V

    sput-object v0, Lcom/google/android/location/NetworkLocationProvider;->instance:Lcom/google/android/location/NetworkLocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    monitor-exit v1

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setUserConfirmedPreference(Z)V
    .locals 4
    .parameter "confirmed"

    .prologue
    .line 288
    sget-object v1, Lcom/google/android/location/NetworkLocationProvider;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network_location_opt_in"

    if-eqz p1, :cond_1

    const-string v1, "1"

    :goto_0
    invoke-static {v2, v3, v1}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 290
    if-nez p1, :cond_0

    .line 296
    sget-object v1, Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;->ANDROID:Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

    sget-object v2, Lcom/google/android/location/NetworkLocationProvider;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/google/android/location/internal/NlpVersionInfo;->getNlpVersionInfo(Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;Landroid/content/Context;)Lcom/google/android/location/internal/NlpVersionInfo;

    move-result-object v0

    .line 297
    .local v0, android:Lcom/google/android/location/internal/NlpVersionInfo;
    iget-object v1, v0, Lcom/google/android/location/internal/NlpVersionInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 298
    sget-object v1, Lcom/google/android/location/NetworkLocationProvider;->context:Landroid/content/Context;

    iget-object v2, v0, Lcom/google/android/location/internal/NlpVersionInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 301
    .end local v0           #android:Lcom/google/android/location/internal/NlpVersionInfo;
    :cond_0
    return-void

    .line 288
    :cond_1
    const-string v1, "0"

    goto :goto_0
.end method

.method private updateStatusLocked(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 486
    iget v0, p0, Lcom/google/android/location/NetworkLocationProvider;->status:I

    if-eq v0, p1, :cond_0

    .line 487
    iput p1, p0, Lcom/google/android/location/NetworkLocationProvider;->status:I

    .line 488
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/NetworkLocationProvider;->statusUpdateTime:J

    .line 490
    :cond_0
    return-void
.end method


# virtual methods
.method public onAddListener(ILandroid/os/WorkSource;)V
    .locals 0
    .parameter "uid"
    .parameter "ws"

    .prologue
    .line 528
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 529
    return-void
.end method

.method public onDisable()V
    .locals 3

    .prologue
    .line 348
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 349
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 350
    return-void
.end method

.method public onEnable()V
    .locals 3

    .prologue
    .line 318
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 319
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 320
    return-void
.end method

.method public onEnableLocationTracking(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 419
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 420
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 421
    if-eqz p1, :cond_0

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->client:Lcom/google/android/location/internal/client/NetworkLocationClient;

    iget v2, p0, Lcom/google/android/location/NetworkLocationProvider;->minTimeSeconds:I

    invoke-virtual {v0, v2}, Lcom/google/android/location/internal/client/NetworkLocationClient;->changePeriod(I)V

    .line 427
    :goto_0
    monitor-exit v1

    .line 428
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->client:Lcom/google/android/location/internal/client/NetworkLocationClient;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Lcom/google/android/location/internal/client/NetworkLocationClient;->changePeriod(I)V

    .line 425
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/location/NetworkLocationProvider;->updateStatusLocked(I)V

    goto :goto_0

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onGetAccuracy()I
    .locals 1

    .prologue
    .line 266
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 267
    const/4 v0, 0x2

    return v0
.end method

.method public onGetInternalState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 405
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->client:Lcom/google/android/location/internal/client/NetworkLocationClient;

    invoke-virtual {v0}, Lcom/google/android/location/internal/client/NetworkLocationClient;->getDebugDump()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onGetPowerRequirement()I
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method public onGetStatus(Landroid/os/Bundle;)I
    .locals 2
    .parameter "extras"

    .prologue
    .line 371
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 372
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 373
    :try_start_0
    iget v0, p0, Lcom/google/android/location/NetworkLocationProvider;->status:I

    monitor-exit v1

    return v0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onGetStatusUpdateTime()J
    .locals 4

    .prologue
    .line 389
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 390
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 391
    :try_start_0
    iget-wide v2, p0, Lcom/google/android/location/NetworkLocationProvider;->statusUpdateTime:J

    monitor-exit v1

    return-wide v2

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onHasMonetaryCost()Z
    .locals 1

    .prologue
    .line 186
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 564
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 565
    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/location/NetworkLocationProvider;->updateStatusLocked(I)V

    .line 566
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    invoke-virtual {p0, p1}, Lcom/google/android/location/NetworkLocationProvider;->reportLocation(Landroid/location/Location;)V

    .line 568
    return-void

    .line 566
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onMeetsCriteria(Landroid/location/Criteria;)Z
    .locals 3
    .parameter "criteria"

    .prologue
    const/4 v0, 0x0

    .line 244
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 245
    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v0

    .line 249
    :cond_1
    invoke-virtual {p1}, Landroid/location/Criteria;->isAltitudeRequired()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/location/Criteria;->isSpeedRequired()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/location/Criteria;->isBearingRequired()Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 580
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 576
    return-void
.end method

.method public onRemoveListener(ILandroid/os/WorkSource;)V
    .locals 0
    .parameter "uid"
    .parameter "ws"

    .prologue
    .line 539
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 540
    return-void
.end method

.method public onRequiresCell()Z
    .locals 1

    .prologue
    .line 175
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public onRequiresNetwork()Z
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public onRequiresSatellite()Z
    .locals 1

    .prologue
    .line 164
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public onSendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 516
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 517
    const/4 v0, 0x0

    return v0
.end method

.method public onSetMinTime(JLandroid/os/WorkSource;)V
    .locals 5
    .parameter "minTime"
    .parameter "ws"

    .prologue
    .line 440
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 442
    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    .line 443
    long-to-int v1, p1

    .line 444
    .local v1, x:I
    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 445
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "minTime is too big "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 447
    :cond_0
    iget-object v3, p0, Lcom/google/android/location/NetworkLocationProvider;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 448
    const/16 v2, 0x2d

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/location/NetworkLocationProvider;->minTimeSeconds:I

    .line 449
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    iget-object v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 451
    .local v0, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    invoke-virtual {v2, v0}, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 452
    return-void

    .line 449
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 572
    return-void
.end method

.method public onSupportsAltitude()Z
    .locals 1

    .prologue
    .line 198
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public onSupportsBearing()Z
    .locals 1

    .prologue
    .line 222
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public onSupportsSpeed()Z
    .locals 1

    .prologue
    .line 210
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public onUpdateLocation(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 501
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 503
    return-void
.end method

.method public onUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 2
    .parameter "state"
    .parameter "info"

    .prologue
    .line 472
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 473
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 474
    :try_start_0
    iput p1, p0, Lcom/google/android/location/NetworkLocationProvider;->networkState:I

    .line 475
    iget v0, p0, Lcom/google/android/location/NetworkLocationProvider;->networkState:I

    invoke-direct {p0, v0}, Lcom/google/android/location/NetworkLocationProvider;->updateStatusLocked(I)V

    .line 476
    monitor-exit v1

    .line 477
    return-void

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 590
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 591
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 592
    new-instance v0, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;-><init>(Lcom/google/android/location/NetworkLocationProvider;Lcom/google/android/location/NetworkLocationProvider$1;)V

    iput-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    .line 593
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mThread:Ljava/lang/Thread;

    monitor-enter v1

    .line 594
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->looper:Landroid/os/Looper;

    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mStarted:Z

    .line 596
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 597
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 599
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 600
    return-void

    .line 597
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method userConfirmedEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 306
    sget-object v0, Lcom/google/android/location/NetworkLocationProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 308
    if-eqz p1, :cond_0

    .line 309
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/location/NetworkLocationProvider;->setUserConfirmedPreference(Z)V

    .line 311
    :cond_0
    return-void
.end method
