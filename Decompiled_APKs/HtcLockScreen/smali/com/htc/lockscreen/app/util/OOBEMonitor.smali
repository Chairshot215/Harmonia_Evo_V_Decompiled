.class public Lcom/htc/lockscreen/app/util/OOBEMonitor;
.super Ljava/lang/Object;
.source "OOBEMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBESettingObserver;,
        Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBEMonitorListener;
    }
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "OOBEMonitor"


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mIsOOBEDone:Z

.field private mListener:Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBEMonitorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor;->mIsOOBEDone:Z

    .line 19
    iput-object p1, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lockscreen/app/util/OOBEMonitor;)Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBEMonitorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor;->mListener:Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBEMonitorListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/lockscreen/app/util/OOBEMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor;->mIsOOBEDone:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/lockscreen/app/util/OOBEMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor;->mIsOOBEDone:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/lockscreen/app/util/OOBEMonitor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public startMonitor(Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBEMonitorListener;)V
    .locals 7
    .parameter "listener"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 26
    monitor-enter p0

    .line 27
    :try_start_0
    iget-object v3, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "setup_wizard_has_run"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor;->mIsOOBEDone:Z

    .line 29
    const-string v3, "OOBEMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startMonitor mIsOOBEDone:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor;->mIsOOBEDone:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-boolean v3, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor;->mIsOOBEDone:Z

    if-eqz v3, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/util/OOBEMonitor;->stopMonitor()V

    .line 32
    iget-boolean v1, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor;->mIsOOBEDone:Z

    invoke-interface {p1, v1}, Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBEMonitorListener;->OnOOBEDone(Z)V

    .line 33
    monitor-exit p0

    .line 50
    :goto_1
    return-void

    :cond_0
    move v3, v2

    .line 27
    goto :goto_0

    .line 35
    :cond_1
    iget-object v3, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v3, :cond_2

    .line 36
    iput-object p1, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor;->mListener:Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBEMonitorListener;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/lockscreen/app/LSState;->getUILooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 38
    .local v0, uiHandler:Landroid/os/Handler;
    new-instance v3, Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBESettingObserver;

    invoke-direct {v3, p0, v0}, Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBESettingObserver;-><init>(Lcom/htc/lockscreen/app/util/OOBEMonitor;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 39
    iget-object v3, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "setup_wizard_has_run"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 43
    iget-object v3, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "setup_wizard_has_run"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor;->mIsOOBEDone:Z

    .line 45
    iget-boolean v1, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor;->mIsOOBEDone:Z

    if-eqz v1, :cond_2

    .line 46
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/util/OOBEMonitor;->stopMonitor()V

    .line 49
    .end local v0           #uiHandler:Landroid/os/Handler;
    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0       #uiHandler:Landroid/os/Handler;
    :cond_3
    move v1, v2

    .line 43
    goto :goto_2
.end method

.method public stopMonitor()V
    .locals 2

    .prologue
    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    const-string v0, "OOBEMonitor"

    const-string v1, "stopMonitor"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 59
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/app/util/OOBEMonitor;->mListener:Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBEMonitorListener;

    .line 60
    monitor-exit p0

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
