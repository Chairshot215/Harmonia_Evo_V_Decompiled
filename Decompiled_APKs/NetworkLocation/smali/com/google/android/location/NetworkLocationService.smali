.class public Lcom/google/android/location/NetworkLocationService;
.super Landroid/app/Service;
.source "NetworkLocationService.java"


# static fields
.field private static lock:Ljava/lang/Object;

.field private static mGeocodeProvider:Lcom/google/android/location/GeocodeProvider;

.field private static mNetworkLocationProvider:Lcom/google/android/location/NetworkLocationProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/location/NetworkLocationService;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .parameter "intent"

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, action:Ljava/lang/String;
    const-string v1, "NetworkLocationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBind "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-object v2, Lcom/google/android/location/NetworkLocationService;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 69
    :try_start_0
    const-string v1, "com.google.android.location.NetworkLocationProvider"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    sget-object v1, Lcom/google/android/location/NetworkLocationService;->mNetworkLocationProvider:Lcom/google/android/location/NetworkLocationProvider;

    if-nez v1, :cond_0

    .line 71
    invoke-static {}, Lcom/google/android/location/NetworkLocationProvider;->getInstance()Lcom/google/android/location/NetworkLocationProvider;

    move-result-object v1

    sput-object v1, Lcom/google/android/location/NetworkLocationService;->mNetworkLocationProvider:Lcom/google/android/location/NetworkLocationProvider;

    .line 73
    :cond_0
    sget-object v1, Lcom/google/android/location/NetworkLocationService;->mNetworkLocationProvider:Lcom/google/android/location/NetworkLocationProvider;

    invoke-virtual {v1}, Lcom/google/android/location/NetworkLocationProvider;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    monitor-exit v2

    .line 81
    :goto_0
    return-object v1

    .line 74
    :cond_1
    const-string v1, "com.google.android.location.GeocodeProvider"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    sget-object v1, Lcom/google/android/location/NetworkLocationService;->mGeocodeProvider:Lcom/google/android/location/GeocodeProvider;

    if-nez v1, :cond_2

    .line 76
    new-instance v1, Lcom/google/android/location/GeocodeProvider;

    invoke-direct {v1}, Lcom/google/android/location/GeocodeProvider;-><init>()V

    sput-object v1, Lcom/google/android/location/NetworkLocationService;->mGeocodeProvider:Lcom/google/android/location/GeocodeProvider;

    .line 78
    :cond_2
    sget-object v1, Lcom/google/android/location/NetworkLocationService;->mGeocodeProvider:Lcom/google/android/location/GeocodeProvider;

    invoke-virtual {v1}, Lcom/google/android/location/GeocodeProvider;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 80
    :cond_3
    :try_start_1
    const-string v1, "NetworkLocationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBind: unknown action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v1, 0x0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 50
    const-string v0, "NetworkLocationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {p0}, Lcom/google/android/location/NetworkLocationProvider;->init(Landroid/content/Context;)V

    .line 53
    invoke-static {p0}, Lcom/google/android/location/os/real/GlsClient;->init(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    sput-object v0, Lcom/google/android/location/NetworkLocationService;->mNetworkLocationProvider:Lcom/google/android/location/NetworkLocationProvider;

    .line 59
    sput-object v0, Lcom/google/android/location/NetworkLocationService;->mGeocodeProvider:Lcom/google/android/location/GeocodeProvider;

    .line 60
    return-void
.end method
