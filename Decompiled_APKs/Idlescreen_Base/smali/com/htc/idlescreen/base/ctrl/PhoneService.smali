.class public Lcom/htc/idlescreen/base/ctrl/PhoneService;
.super Ljava/lang/Object;
.source "PhoneService.java"

# interfaces
.implements Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/ctrl/PhoneService$1;,
        Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;
    }
.end annotation


# instance fields
.field private mAction:I

.field private mConnection:Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;

.field private mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/lockscreen/telephony/PhoneState;)V
    .locals 1
    .parameter "context"
    .parameter "phone"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mAction:I

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mLock:Ljava/lang/Object;

    .line 28
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    .line 30
    return-void
.end method

.method static synthetic access$200(Lcom/htc/idlescreen/base/ctrl/PhoneService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/idlescreen/base/ctrl/PhoneService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mAction:I

    return v0
.end method


# virtual methods
.method public answerCall()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 55
    iget v0, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mAction:I

    if-gez v0, :cond_0

    .line 56
    iput v1, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mAction:I

    .line 58
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/idlescreen/base/ctrl/PhoneService;->performAction(I)V

    .line 59
    return-void
.end method

.method public answerCallByVoice()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public performAction(I)V
    .locals 5
    .parameter "action"

    .prologue
    .line 88
    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mConnection:Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mConnection:Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;

    #getter for: Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;->mService:Lcom/htc/lockscreen/idlescreen/remote/IRemoteService;
    invoke-static {v2}, Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;->access$100(Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;)Lcom/htc/lockscreen/idlescreen/remote/IRemoteService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    .line 91
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "call_id"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mConnection:Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;

    #getter for: Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;->mService:Lcom/htc/lockscreen/idlescreen/remote/IRemoteService;
    invoke-static {v2}, Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;->access$100(Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;)Lcom/htc/lockscreen/idlescreen/remote/IRemoteService;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Lcom/htc/lockscreen/idlescreen/remote/IRemoteService;->performAction(ILandroid/os/Bundle;)V

    .line 94
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mAction:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    .end local v0           #data:Landroid/os/Bundle;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 101
    return-void

    .line 95
    :catch_0
    move-exception v1

    .line 97
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 100
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public phoneUIReady()V
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->pokeWakeLock()V

    .line 158
    return-void
.end method

.method public rejectCall()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 62
    iget v0, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mAction:I

    if-gez v0, :cond_0

    .line 63
    iput v1, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mAction:I

    .line 65
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/idlescreen/base/ctrl/PhoneService;->performAction(I)V

    .line 66
    return-void
.end method

.method public sameService(Lcom/htc/lockscreen/telephony/PhoneState;)Z
    .locals 6
    .parameter "phone"

    .prologue
    .line 129
    const/4 v4, 0x0

    .line 130
    .local v4, service:Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 131
    .local v2, p1:Ljava/lang/String;
    const/4 v0, 0x0

    .line 132
    .local v0, c1:Ljava/lang/String;
    const/4 v3, 0x0

    .line 133
    .local v3, p2:Ljava/lang/String;
    const/4 v1, 0x0

    .line 134
    .local v1, c2:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    if-eqz v5, :cond_0

    .line 135
    iget-object v5, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    iget-object v4, v5, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    .line 136
    if-eqz v4, :cond_0

    .line 137
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 141
    :cond_0
    if-eqz p1, :cond_1

    .line 142
    iget-object v4, p1, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    .line 143
    if-eqz v4, :cond_1

    .line 144
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 148
    :cond_1
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 150
    const/4 v5, 0x1

    .line 152
    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public sendMessage()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 76
    iget v0, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mAction:I

    if-gez v0, :cond_0

    .line 77
    iput v1, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mAction:I

    .line 79
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/idlescreen/base/ctrl/PhoneService;->performAction(I)V

    .line 80
    return-void
.end method

.method public silent()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 69
    iget v0, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mAction:I

    if-gez v0, :cond_0

    .line 70
    iput v1, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mAction:I

    .line 72
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/idlescreen/base/ctrl/PhoneService;->performAction(I)V

    .line 73
    return-void
.end method

.method public startService()V
    .locals 5

    .prologue
    .line 33
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mConnection:Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;

    if-nez v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    iget-object v1, v1, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 36
    new-instance v1, Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;-><init>(Lcom/htc/idlescreen/base/ctrl/PhoneService;Lcom/htc/idlescreen/base/ctrl/PhoneService$1;)V

    iput-object v1, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mConnection:Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.lockscreen.phone.service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    iget-object v1, v1, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 39
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mConnection:Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 42
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    monitor-exit v2

    .line 43
    return-void

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopService()V
    .locals 3

    .prologue
    .line 46
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mConnection:Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mConnection:Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/PhoneService;->mConnection:Lcom/htc/idlescreen/base/ctrl/PhoneService$PhoneServiceConnection;

    .line 51
    :cond_0
    monitor-exit v1

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
