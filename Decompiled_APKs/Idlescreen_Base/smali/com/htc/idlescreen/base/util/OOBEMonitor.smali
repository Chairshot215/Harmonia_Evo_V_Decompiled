.class public Lcom/htc/idlescreen/base/util/OOBEMonitor;
.super Ljava/lang/Object;
.source "OOBEMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/util/OOBEMonitor$MyUIHandler;,
        Lcom/htc/idlescreen/base/util/OOBEMonitor$MyHandler;,
        Lcom/htc/idlescreen/base/util/OOBEMonitor$OOBESettingObserver;,
        Lcom/htc/idlescreen/base/util/OOBEMonitor$OOBEMonitorListener;
    }
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "OOBEMonitor"

.field private static final WHAT_ON_QUERY:I = 0x2711

.field private static final WHAT_UI_BACK:I = 0x4e21


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsOOBEDone:Z

.field private mListener:Lcom/htc/idlescreen/base/util/OOBEMonitor$OOBEMonitorListener;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mIsOOBEDone:Z

    .line 26
    iput-object p1, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/htc/idlescreen/base/util/OOBEMonitor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/idlescreen/base/util/OOBEMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/idlescreen/base/util/OOBEMonitor;->querySetting()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/idlescreen/base/util/OOBEMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mIsOOBEDone:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/idlescreen/base/util/OOBEMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/idlescreen/base/util/OOBEMonitor;->notifyListener()V

    return-void
.end method

.method private notifyListener()V
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x4e21

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 124
    iget-object v0, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mListener:Lcom/htc/idlescreen/base/util/OOBEMonitor$OOBEMonitorListener;

    .line 125
    .local v0, listener:Lcom/htc/idlescreen/base/util/OOBEMonitor$OOBEMonitorListener;
    if-eqz v0, :cond_0

    .line 126
    iget-boolean v1, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mIsOOBEDone:Z

    invoke-interface {v0, v1}, Lcom/htc/idlescreen/base/util/OOBEMonitor$OOBEMonitorListener;->OnOOBEDone(Z)V

    .line 128
    :cond_0
    iget-boolean v1, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mIsOOBEDone:Z

    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/util/OOBEMonitor;->stopMonitor()V

    .line 132
    :cond_1
    return-void
.end method

.method private querySetting()V
    .locals 4

    .prologue
    const/16 v3, 0x4e21

    const/4 v0, 0x0

    .line 113
    iget-object v1, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 114
    iget-object v1, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "setup_wizard_has_run"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mIsOOBEDone:Z

    .line 116
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mIsOOBEDone:Z

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 118
    iget-object v0, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-static {v0, v3, v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 120
    :cond_1
    return-void
.end method


# virtual methods
.method public startMonitor(Lcom/htc/idlescreen/base/util/OOBEMonitor$OOBEMonitorListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 35
    monitor-enter p0

    .line 36
    :try_start_0
    const-string v1, "OOBEMonitor"

    const-string v2, "startMonitor"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mListener:Lcom/htc/idlescreen/base/util/OOBEMonitor$OOBEMonitorListener;

    .line 38
    iget-boolean v1, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mIsOOBEDone:Z

    if-eqz v1, :cond_1

    .line 39
    invoke-direct {p0}, Lcom/htc/idlescreen/base/util/OOBEMonitor;->notifyListener()V

    .line 40
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/util/OOBEMonitor;->stopMonitor()V

    .line 57
    :cond_0
    :goto_0
    monitor-exit p0

    .line 58
    return-void

    .line 43
    :cond_1
    new-instance v1, Lcom/htc/idlescreen/base/util/OOBEMonitor$MyHandler;

    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/IdleState;->getBGLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/idlescreen/base/util/OOBEMonitor$MyHandler;-><init>(Lcom/htc/idlescreen/base/util/OOBEMonitor;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mHandler:Landroid/os/Handler;

    .line 44
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/IdleState;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    .line 45
    .local v0, uiHandler:Landroid/os/Handler;
    new-instance v1, Lcom/htc/idlescreen/base/util/OOBEMonitor$MyUIHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/idlescreen/base/util/OOBEMonitor$MyUIHandler;-><init>(Lcom/htc/idlescreen/base/util/OOBEMonitor;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mUIHandler:Landroid/os/Handler;

    .line 46
    iget-object v1, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/htc/idlescreen/base/util/OOBEMonitor$OOBESettingObserver;

    invoke-direct {v1, p0, v0}, Lcom/htc/idlescreen/base/util/OOBEMonitor$OOBESettingObserver;-><init>(Lcom/htc/idlescreen/base/util/OOBEMonitor;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 48
    iget-object v1, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "setup_wizard_has_run"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 52
    iget-object v1, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 53
    iget-object v1, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    const-wide/16 v3, 0xc8

    invoke-static {v1, v2, v3, v4}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    goto :goto_0

    .line 57
    .end local v0           #uiHandler:Landroid/os/Handler;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopMonitor()V
    .locals 2

    .prologue
    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    const-string v0, "OOBEMonitor"

    const-string v1, "stopMonitor"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mHandler:Landroid/os/Handler;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x4e21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mUIHandler:Landroid/os/Handler;

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 76
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor;->mListener:Lcom/htc/idlescreen/base/util/OOBEMonitor$OOBEMonitorListener;

    .line 77
    monitor-exit p0

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
