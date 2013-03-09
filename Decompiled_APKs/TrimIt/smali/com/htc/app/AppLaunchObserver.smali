.class public abstract Lcom/htc/app/AppLaunchObserver;
.super Ljava/lang/Object;
.source "AppLaunchObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/AppLaunchObserver$Transport;,
        Lcom/htc/app/AppLaunchObserver$NotificationRunnable;
    }
.end annotation


# instance fields
.field private lock:Ljava/lang/Object;

.field mHandler:Landroid/os/Handler;

.field private mTransport:Lcom/htc/app/AppLaunchObserver$Transport;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/app/AppLaunchObserver;->lock:Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Lcom/htc/app/AppLaunchObserver;->mHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method


# virtual methods
.method public final dispatchChange(Lcom/android/internal/os/HtcAppUsageStats;)V
    .locals 2
    .parameter "stat"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/app/AppLaunchObserver;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lcom/htc/app/AppLaunchObserver;->onAppLaunch(Lcom/android/internal/os/HtcAppUsageStats;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/htc/app/AppLaunchObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/app/AppLaunchObserver$NotificationRunnable;

    invoke-direct {v1, p0, p1}, Lcom/htc/app/AppLaunchObserver$NotificationRunnable;-><init>(Lcom/htc/app/AppLaunchObserver;Lcom/android/internal/os/HtcAppUsageStats;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getHtcAppLaunchObserver()Lcom/android/internal/os/IHtcAppLaunchObserver;
    .locals 2

    .prologue
    .line 51
    iget-object v1, p0, Lcom/htc/app/AppLaunchObserver;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/htc/app/AppLaunchObserver;->mTransport:Lcom/htc/app/AppLaunchObserver$Transport;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/htc/app/AppLaunchObserver$Transport;

    invoke-direct {v0, p0}, Lcom/htc/app/AppLaunchObserver$Transport;-><init>(Lcom/htc/app/AppLaunchObserver;)V

    iput-object v0, p0, Lcom/htc/app/AppLaunchObserver;->mTransport:Lcom/htc/app/AppLaunchObserver$Transport;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/htc/app/AppLaunchObserver;->mTransport:Lcom/htc/app/AppLaunchObserver$Transport;

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract onAppLaunch(Lcom/android/internal/os/HtcAppUsageStats;)V
.end method

.method public releaseHtcAppLaunchObserver()Lcom/android/internal/os/IHtcAppLaunchObserver;
    .locals 3

    .prologue
    .line 60
    iget-object v2, p0, Lcom/htc/app/AppLaunchObserver;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/htc/app/AppLaunchObserver;->mTransport:Lcom/htc/app/AppLaunchObserver$Transport;

    .line 62
    .local v0, oldTransport:Lcom/htc/app/AppLaunchObserver$Transport;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/htc/app/AppLaunchObserver$Transport;->releaseHtcAppLaunchObserver()V

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/app/AppLaunchObserver;->mTransport:Lcom/htc/app/AppLaunchObserver$Transport;

    .line 66
    :cond_0
    monitor-exit v2

    return-object v0

    .line 67
    .end local v0           #oldTransport:Lcom/htc/app/AppLaunchObserver$Transport;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
