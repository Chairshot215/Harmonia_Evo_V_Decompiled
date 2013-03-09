.class public abstract Lcom/htc/idlescreen/base/ctrl/BaseCtrl;
.super Ljava/lang/Object;
.source "BaseCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/ctrl/BaseCtrl$MyCtrlBGHandler;,
        Lcom/htc/idlescreen/base/ctrl/BaseCtrl$StateListener;
    }
.end annotation


# static fields
.field public static final LOG_PREFIX:Ljava/lang/String; = "BaseCtrl"

.field public static final WHAT_ON_NOTIFY_LISTENER:I = 0x1


# instance fields
.field mBGHandler:Landroid/os/Handler;

.field mContext:Landroid/content/Context;

.field mListener:Lcom/htc/idlescreen/base/ctrl/BaseCtrl$StateListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method


# virtual methods
.method protected abstract handleMessageBG(Landroid/os/Message;)V
.end method

.method public init(Landroid/content/Context;Lcom/htc/idlescreen/base/ctrl/BaseCtrl$StateListener;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 26
    monitor-enter p0

    .line 27
    :try_start_0
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mListener:Lcom/htc/idlescreen/base/ctrl/BaseCtrl$StateListener;

    .line 29
    invoke-virtual {p0, p3}, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->initBGHandler(Landroid/os/Handler;)V

    .line 30
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->startCtrl()V

    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initBGHandler(Landroid/os/Handler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, looper:Landroid/os/Looper;
    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 46
    :cond_0
    if-nez v0, :cond_1

    .line 47
    const-string v1, "BaseCtrl"

    const-string v2, "initBGHandler looper is null"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 50
    new-instance v1, Lcom/htc/idlescreen/base/ctrl/BaseCtrl$MyCtrlBGHandler;

    invoke-direct {v1, p0, v0}, Lcom/htc/idlescreen/base/ctrl/BaseCtrl$MyCtrlBGHandler;-><init>(Lcom/htc/idlescreen/base/ctrl/BaseCtrl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    .line 52
    :cond_2
    return-void
.end method

.method public notifyLister(ILjava/lang/Object;)V
    .locals 2
    .parameter "state"
    .parameter "extra"

    .prologue
    .line 96
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 97
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 98
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 99
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 101
    return-void
.end method

.method protected abstract startCtrl()V
.end method

.method protected abstract stopCtrl()V
.end method

.method public uninit()V
    .locals 1

    .prologue
    .line 35
    monitor-enter p0

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->stopCtrl()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mListener:Lcom/htc/idlescreen/base/ctrl/BaseCtrl$StateListener;

    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
