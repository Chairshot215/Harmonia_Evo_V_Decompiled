.class public Lcom/htc/cs/service/ConnectedService;
.super Landroid/app/Service;
.source "ConnectedService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cs/service/ConnectedService$mLogInBinder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "[ConnectedService] "


# instance fields
.field private final binder:Landroid/os/IBinder;

.field private csAuthenticator:Lcom/htc/cs/activity/accountactivities/CSAuthenticator;

.field private final mBinder:Landroid/os/IBinder;

.field private syncLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/cs/service/ConnectedService;->syncLock:Ljava/lang/Object;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/cs/service/ConnectedService;->csAuthenticator:Lcom/htc/cs/activity/accountactivities/CSAuthenticator;

    .line 50
    new-instance v0, Lcom/htc/cs/service/ConnectedService$mLogInBinder;

    invoke-direct {v0, p0}, Lcom/htc/cs/service/ConnectedService$mLogInBinder;-><init>(Lcom/htc/cs/service/ConnectedService;)V

    iput-object v0, p0, Lcom/htc/cs/service/ConnectedService;->binder:Landroid/os/IBinder;

    .line 121
    new-instance v0, Lcom/htc/cs/service/ConnectedService$1;

    invoke-direct {v0, p0}, Lcom/htc/cs/service/ConnectedService$1;-><init>(Lcom/htc/cs/service/ConnectedService;)V

    iput-object v0, p0, Lcom/htc/cs/service/ConnectedService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method private declared-synchronized init()V
    .locals 3

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/cs/service/ConnectedService;->syncLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    :try_start_1
    iget-object v0, p0, Lcom/htc/cs/service/ConnectedService;->csAuthenticator:Lcom/htc/cs/activity/accountactivities/CSAuthenticator;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/htc/cs/activity/accountactivities/CSAuthenticator;

    invoke-virtual {p0}, Lcom/htc/cs/service/ConnectedService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/cs/activity/accountactivities/CSAuthenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/cs/service/ConnectedService;->csAuthenticator:Lcom/htc/cs/activity/accountactivities/CSAuthenticator;

    .line 104
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized release()V
    .locals 0

    .prologue
    .line 116
    monitor-enter p0

    monitor-exit p0

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.accounts.AccountAuthenticator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/htc/cs/service/ConnectedService;->csAuthenticator:Lcom/htc/cs/activity/accountactivities/CSAuthenticator;

    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CSAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 66
    :goto_0
    return-object v1

    .line 62
    :cond_0
    const-string v1, "com.htc.cs.ConnectedService.login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/htc/cs/service/ConnectedService;->binder:Landroid/os/IBinder;

    goto :goto_0

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/htc/cs/service/ConnectedService;->mBinder:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 35
    invoke-direct {p0}, Lcom/htc/cs/service/ConnectedService;->init()V

    .line 40
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 86
    invoke-direct {p0}, Lcom/htc/cs/service/ConnectedService;->release()V

    .line 92
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public readServerTime()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lcom/htc/cs/util/serverClock;

    invoke-direct {v0, p0}, Lcom/htc/cs/util/serverClock;-><init>(Landroid/content/Context;)V

    .line 133
    .local v0, svrClk:Lcom/htc/cs/util/serverClock;
    invoke-virtual {v0}, Lcom/htc/cs/util/serverClock;->readServerClock()Ljava/lang/Long;

    .line 134
    return-void
.end method
