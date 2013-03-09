.class public Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;
.super Lcom/htc/idlescreen/base/ctrl/BaseCtrl;
.source "ThreeLMCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl$MyHandler;,
        Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl$SettingObserver;
    }
.end annotation


# static fields
.field private static final EMERGENCY_LOCK_TEXT:Ljava/lang/String; = "emergency_lock"

.field private static final LOG_PREFIX:Ljava/lang/String; = "ThreeLMCtrl"

.field private static final WHAT_ON_QUERY:I = 0x2711


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mMessage:Ljava/lang/String;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->mMessage:Ljava/lang/String;

    .line 13
    return-void
.end method

.method static synthetic access$000(Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->querySetting()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method private querySetting()V
    .locals 4

    .prologue
    .line 95
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_lock"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->mMessage:Ljava/lang/String;

    .line 99
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->notifyLister(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ThreeLMCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "querySetting e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startMonitorDB()V
    .locals 5

    .prologue
    const/16 v4, 0x2711

    .line 35
    const-string v0, "ThreeLMCtrl"

    const-string v1, "startMonitor"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl$SettingObserver;

    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->mUIHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl$SettingObserver;-><init>(Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->mContentObserver:Landroid/database/ContentObserver;

    .line 38
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_lock"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 42
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v4}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 43
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-static {v0, v4, v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 46
    :cond_0
    return-void
.end method

.method private stopMonitor()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->mContentObserver:Landroid/database/ContentObserver;

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method protected handleMessageBG(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 109
    return-void
.end method

.method public inEmergencyMode()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->mMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startCtrl()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl$MyHandler;

    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/IdleState;->getBGLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl$MyHandler;-><init>(Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->mHandler:Landroid/os/Handler;

    .line 24
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->startMonitorDB()V

    .line 25
    return-void
.end method

.method protected stopCtrl()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->stopMonitor()V

    .line 31
    return-void
.end method
