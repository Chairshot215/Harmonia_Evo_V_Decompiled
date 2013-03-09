.class public Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;
.super Ljava/lang/Object;
.source "IdleViewConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection$1;,
        Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection$StateReceiver;,
        Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection$StateListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IdleViewConnection"

.field private static final MAX_WAKEUP_TIME:I = 0x3a98


# instance fields
.field private mContext:Landroid/content/Context;

.field private mId:I

.field private mListener:Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection$StateListener;

.field private mPackageName:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mContext:Landroid/content/Context;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mPackageName:Ljava/lang/String;

    .line 24
    iput p2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mId:I

    .line 25
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packageName is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    if-gtz p2, :cond_2

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_2
    return-void
.end method

.method static synthetic access$100(Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;)Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection$StateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mListener:Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection$StateListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->wakeLock(Z)V

    return-void
.end method

.method private declared-synchronized wakeLock(Z)V
    .locals 5
    .parameter "bLock"

    .prologue
    .line 120
    monitor-enter p0

    if-eqz p1, :cond_3

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, old:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 123
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 124
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_1

    .line 127
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 128
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "IdleViewConnection"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 130
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 131
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 133
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_1
    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .end local v0           #old:Landroid/os/PowerManager$WakeLock;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 138
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 140
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mId:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public final register(Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection$StateListener;)V
    .locals 3
    .parameter "stateListener"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mListener:Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection$StateListener;

    .line 35
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection$StateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection$StateReceiver;-><init>(Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection$1;)V

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 38
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "HtcLockScreen_ADD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 44
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public removeView()V
    .locals 3

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "HtcLockScreenRemoveView"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PackageName"

    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v1, "id"

    iget v2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 67
    return-void
.end method

.method public setView(Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "there is no any content view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 51
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "not register yet"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "HtcLockScreenSetView_P"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "View"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 56
    const-string v1, "PackageName"

    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "id"

    iget v2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 59
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->wakeLock(Z)V

    .line 60
    return-void
.end method

.method public final unReigister()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    iput-object v2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    :cond_0
    iput-object v2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mListener:Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection$StateListener;

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->wakeLock(Z)V

    .line 82
    return-void
.end method
