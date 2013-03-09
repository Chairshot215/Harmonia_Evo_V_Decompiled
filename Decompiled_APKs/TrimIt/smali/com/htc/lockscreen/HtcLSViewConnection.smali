.class public Lcom/htc/lockscreen/HtcLSViewConnection;
.super Ljava/lang/Object;
.source "HtcLSViewConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/HtcLSViewConnection$1;,
        Lcom/htc/lockscreen/HtcLSViewConnection$StateReceiver;,
        Lcom/htc/lockscreen/HtcLSViewConnection$StateListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcLSViewConnection"

.field private static final MAX_WAKEUP_TIME:I = 0x3a98


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLSViewGroup:Lcom/htc/lockscreen/HtcLSViewGroup;

.field private mListener:Lcom/htc/lockscreen/HtcLSViewConnection$StateListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLock2:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, packageName:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 26
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "packageName is null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_1
    if-gtz p2, :cond_2

    .line 29
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "id <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_2
    new-instance v1, Lcom/htc/lockscreen/HtcLSViewGroup;

    invoke-direct {v1, v0, p2}, Lcom/htc/lockscreen/HtcLSViewGroup;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mLSViewGroup:Lcom/htc/lockscreen/HtcLSViewGroup;

    .line 32
    return-void
.end method

.method private declared-synchronized TimeWakeLock(I)V
    .locals 4
    .parameter "ms"

    .prologue
    .line 210
    monitor-enter p0

    if-lez p1, :cond_1

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mWakeLock2:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 213
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "HtcLSViewConnection:time"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mWakeLock2:Landroid/os/PowerManager$WakeLock;

    .line 216
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mWakeLock2:Landroid/os/PowerManager$WakeLock;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :cond_1
    monitor-exit p0

    return-void

    .line 210
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static synthetic access$100(Lcom/htc/lockscreen/HtcLSViewConnection;)Lcom/htc/lockscreen/HtcLSViewConnection$StateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mListener:Lcom/htc/lockscreen/HtcLSViewConnection$StateListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/lockscreen/HtcLSViewConnection;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/HtcLSViewConnection;->wakeLock(Z)V

    return-void
.end method

.method private isWithContentView()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mLSViewGroup:Lcom/htc/lockscreen/HtcLSViewGroup;

    invoke-virtual {v0}, Lcom/htc/lockscreen/HtcLSViewGroup;->isWithContentView()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized wakeLock(Z)V
    .locals 5
    .parameter "bLock"

    .prologue
    .line 183
    monitor-enter p0

    if-eqz p1, :cond_3

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, old:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    iget-object v2, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 186
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 187
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 189
    :cond_0
    iget-object v2, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_1

    .line 190
    iget-object v2, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 191
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HtcLSViewConnection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/lockscreen/HtcLSViewConnection;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 193
    iget-object v2, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 194
    iget-object v2, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 196
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_1
    if-eqz v0, :cond_2

    .line 197
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .end local v0           #old:Landroid/os/PowerManager$WakeLock;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 201
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    .line 202
    iget-object v2, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 203
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public getContentView(Ljava/lang/String;)Lcom/htc/lockscreen/HtcLSView;
    .locals 1
    .parameter "part"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mLSViewGroup:Lcom/htc/lockscreen/HtcLSViewGroup;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/HtcLSViewGroup;->getContentView(Ljava/lang/String;)Lcom/htc/lockscreen/HtcLSView;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mLSViewGroup:Lcom/htc/lockscreen/HtcLSViewGroup;

    invoke-virtual {v0}, Lcom/htc/lockscreen/HtcLSViewGroup;->getId()I

    move-result v0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mLSViewGroup:Lcom/htc/lockscreen/HtcLSViewGroup;

    invoke-virtual {v0}, Lcom/htc/lockscreen/HtcLSViewGroup;->getOrder()I

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mLSViewGroup:Lcom/htc/lockscreen/HtcLSViewGroup;

    invoke-virtual {v0}, Lcom/htc/lockscreen/HtcLSViewGroup;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShowHintFlag()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mLSViewGroup:Lcom/htc/lockscreen/HtcLSViewGroup;

    invoke-virtual {v0}, Lcom/htc/lockscreen/HtcLSViewGroup;->getShowHintFlag()I

    move-result v0

    return v0
.end method

.method public getShowHintString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mLSViewGroup:Lcom/htc/lockscreen/HtcLSViewGroup;

    invoke-virtual {v0}, Lcom/htc/lockscreen/HtcLSViewGroup;->getShowHintString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isShowNotification()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mLSViewGroup:Lcom/htc/lockscreen/HtcLSViewGroup;

    invoke-virtual {v0}, Lcom/htc/lockscreen/HtcLSViewGroup;->isShowNotification()Z

    move-result v0

    return v0
.end method

.method public isWakeUp()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mLSViewGroup:Lcom/htc/lockscreen/HtcLSViewGroup;

    invoke-virtual {v0}, Lcom/htc/lockscreen/HtcLSViewGroup;->isWakeUp()Z

    move-result v0

    return v0
.end method

.method public final register(Lcom/htc/lockscreen/HtcLSViewConnection$StateListener;)V
    .locals 5
    .parameter "stateListener"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mListener:Lcom/htc/lockscreen/HtcLSViewConnection$StateListener;

    .line 38
    iget-object v3, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_0

    .line 39
    new-instance v3, Lcom/htc/lockscreen/HtcLSViewConnection$StateReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/htc/lockscreen/HtcLSViewConnection$StateReceiver;-><init>(Lcom/htc/lockscreen/HtcLSViewConnection;Lcom/htc/lockscreen/HtcLSViewConnection$1;)V

    iput-object v3, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 42
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "HtcLockScreen_Update"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    iget-object v3, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mLSViewGroup:Lcom/htc/lockscreen/HtcLSViewGroup;

    invoke-virtual {v3}, Lcom/htc/lockscreen/HtcLSViewGroup;->getId()I

    move-result v1

    .line 47
    .local v1, id:I
    iget-object v3, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mLSViewGroup:Lcom/htc/lockscreen/HtcLSViewGroup;

    invoke-virtual {v3}, Lcom/htc/lockscreen/HtcLSViewGroup;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, packageName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 50
    iget-object v3, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 52
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #id:I
    .end local v2           #packageName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public removeContentView(Ljava/lang/String;)V
    .locals 1
    .parameter "part"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mLSViewGroup:Lcom/htc/lockscreen/HtcLSViewGroup;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/HtcLSViewGroup;->removeContentView(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public removeView()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mLSViewGroup:Lcom/htc/lockscreen/HtcLSViewGroup;

    invoke-static {v0, v1}, Lcom/htc/lockscreen/HtcLSUtility;->removeView(Landroid/content/Context;Lcom/htc/lockscreen/HtcLSViewGroup;)V

    .line 67
    return-void
.end method

.method public setContentView(Ljava/lang/String;Lcom/htc/lockscreen/HtcLSView;)V
    .locals 1
    .parameter "part"
    .parameter "lsView"

    .prologue
    .line 156
    if-nez p2, :cond_0

    .line 157
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mLSViewGroup:Lcom/htc/lockscreen/HtcLSViewGroup;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/HtcLSViewGroup;->removeContentView(Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mLSViewGroup:Lcom/htc/lockscreen/HtcLSViewGroup;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lockscreen/HtcLSViewGroup;->setContentView(Ljava/lang/String;Lcom/htc/lockscreen/HtcLSView;)V

    goto :goto_0
.end method

.method public setOrder(I)V
    .locals 1
    .parameter "order"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mLSViewGroup:Lcom/htc/lockscreen/HtcLSViewGroup;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/HtcLSViewGroup;->setOrder(I)V

    .line 178
    return-void
.end method

.method public setShowHint(ILjava/lang/String;)V
    .locals 1
    .parameter "flag"
    .parameter "hint"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mLSViewGroup:Lcom/htc/lockscreen/HtcLSViewGroup;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lockscreen/HtcLSViewGroup;->setShowHint(ILjava/lang/String;)V

    .line 127
    return-void
.end method

.method public setShowNotification(Z)V
    .locals 1
    .parameter "bShow"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mLSViewGroup:Lcom/htc/lockscreen/HtcLSViewGroup;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/HtcLSViewGroup;->setShowNotification(Z)V

    .line 139
    return-void
.end method

.method public setWakeUp(Z)V
    .locals 1
    .parameter "bWakeUp"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mLSViewGroup:Lcom/htc/lockscreen/HtcLSViewGroup;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/HtcLSViewGroup;->setWakeUp(Z)V

    .line 148
    return-void
.end method

.method public final unReigister()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    iput-object v2, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    :cond_0
    iput-object v2, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mListener:Lcom/htc/lockscreen/HtcLSViewConnection$StateListener;

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/lockscreen/HtcLSViewConnection;->wakeLock(Z)V

    .line 78
    return-void
.end method

.method public updateView()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/htc/lockscreen/HtcLSViewConnection;->isWithContentView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "there is no any content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not register yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/lockscreen/HtcLSViewConnection;->mLSViewGroup:Lcom/htc/lockscreen/HtcLSViewGroup;

    invoke-static {v0, v1}, Lcom/htc/lockscreen/HtcLSUtility;->setView(Landroid/content/Context;Lcom/htc/lockscreen/HtcLSViewGroup;)V

    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/lockscreen/HtcLSViewConnection;->wakeLock(Z)V

    .line 63
    return-void
.end method
