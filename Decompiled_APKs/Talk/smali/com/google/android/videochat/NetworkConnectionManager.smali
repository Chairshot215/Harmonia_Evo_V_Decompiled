.class Lcom/google/android/videochat/NetworkConnectionManager;
.super Ljava/lang/Object;
.source "NetworkConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/videochat/NetworkConnectionManager$MobileHipriRunnable;
    }
.end annotation


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMobileHipriRunnable:Lcom/google/android/videochat/NetworkConnectionManager$MobileHipriRunnable;

.field private mRequestHipri:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/videochat/NetworkConnectionManager;->mContext:Landroid/content/Context;

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/videochat/NetworkConnectionManager;->mHandler:Landroid/os/Handler;

    .line 35
    iget-object v0, p0, Lcom/google/android/videochat/NetworkConnectionManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/videochat/NetworkConnectionManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/videochat/NetworkConnectionManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/videochat/NetworkConnectionManager;->requestMobileHipriNetwork()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 98
    const-string v0, "vclib:NetworkConnectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NetConMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method private requestMobileHipriNetwork()V
    .locals 5

    .prologue
    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/videochat/NetworkConnectionManager;->mRequestHipri:Z

    if-nez v1, :cond_0

    .line 78
    monitor-exit p0

    .line 95
    :goto_0
    return-void

    .line 80
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object v1, p0, Lcom/google/android/videochat/NetworkConnectionManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    const-string v3, "enableHIPRI"

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 87
    .local v0, result:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> requestMobileHipriNetwork: enableHIPRI result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/videochat/NetworkConnectionManager;->log(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/google/android/videochat/NetworkConnectionManager;->mMobileHipriRunnable:Lcom/google/android/videochat/NetworkConnectionManager$MobileHipriRunnable;

    if-nez v1, :cond_1

    .line 92
    new-instance v1, Lcom/google/android/videochat/NetworkConnectionManager$MobileHipriRunnable;

    invoke-direct {v1, p0}, Lcom/google/android/videochat/NetworkConnectionManager$MobileHipriRunnable;-><init>(Lcom/google/android/videochat/NetworkConnectionManager;)V

    iput-object v1, p0, Lcom/google/android/videochat/NetworkConnectionManager;->mMobileHipriRunnable:Lcom/google/android/videochat/NetworkConnectionManager$MobileHipriRunnable;

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/google/android/videochat/NetworkConnectionManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/videochat/NetworkConnectionManager;->mMobileHipriRunnable:Lcom/google/android/videochat/NetworkConnectionManager$MobileHipriRunnable;

    const-wide/16 v3, 0x61a8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 80
    .end local v0           #result:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public startUsingMobileHipriIfOnMobileNetwork()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 40
    iget-object v2, p0, Lcom/google/android/videochat/NetworkConnectionManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 41
    .local v0, netInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 43
    .local v1, type:I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startUsingMobileHipriIfOnMobileNetwork: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/videochat/NetworkConnectionManager;->log(Ljava/lang/String;)V

    .line 45
    sparse-switch v1, :sswitch_data_0

    .line 57
    :cond_0
    :goto_1
    return-void

    .line 41
    .end local v1           #type:I
    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 48
    .restart local v1       #type:I
    :sswitch_0
    iget-object v2, p0, Lcom/google/android/videochat/NetworkConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gtalk_use_hipri"

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    monitor-enter p0

    .line 51
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/google/android/videochat/NetworkConnectionManager;->mRequestHipri:Z

    .line 52
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-direct {p0}, Lcom/google/android/videochat/NetworkConnectionManager;->requestMobileHipriNetwork()V

    goto :goto_1

    .line 52
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public stopUsingMobileHipri()V
    .locals 2

    .prologue
    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopUsingMobileHipri: mRequestHipri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/videochat/NetworkConnectionManager;->mRequestHipri:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/videochat/NetworkConnectionManager;->log(Ljava/lang/String;)V

    .line 62
    iget-boolean v0, p0, Lcom/google/android/videochat/NetworkConnectionManager;->mRequestHipri:Z

    if-eqz v0, :cond_1

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/videochat/NetworkConnectionManager;->mRequestHipri:Z

    .line 67
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iget-object v0, p0, Lcom/google/android/videochat/NetworkConnectionManager;->mMobileHipriRunnable:Lcom/google/android/videochat/NetworkConnectionManager$MobileHipriRunnable;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/android/videochat/NetworkConnectionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/videochat/NetworkConnectionManager;->mMobileHipriRunnable:Lcom/google/android/videochat/NetworkConnectionManager$MobileHipriRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/videochat/NetworkConnectionManager;->mMobileHipriRunnable:Lcom/google/android/videochat/NetworkConnectionManager$MobileHipriRunnable;

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
