.class public abstract Lcom/htc/lockscreen/app/ctrl/BaseCtrl;
.super Ljava/lang/Object;
.source "BaseCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/app/ctrl/BaseCtrl$MyCtrlBGHandler;,
        Lcom/htc/lockscreen/app/ctrl/BaseCtrl$MyCtrlUIHandler;,
        Lcom/htc/lockscreen/app/ctrl/BaseCtrl$StateListener;
    }
.end annotation


# static fields
.field public static final LOG_PREFIX:Ljava/lang/String; = "BaseCtrl"

.field public static final WHAT_UI_NOTIFY_LISTENER:I = 0x1


# instance fields
.field mBGHandler:Landroid/os/Handler;

.field mContext:Landroid/content/Context;

.field mListener:Lcom/htc/lockscreen/app/ctrl/BaseCtrl$StateListener;

.field mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl$MyCtrlUIHandler;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/app/ctrl/BaseCtrl$MyCtrlUIHandler;-><init>(Lcom/htc/lockscreen/app/ctrl/BaseCtrl;)V

    iput-object v0, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mUIHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method


# virtual methods
.method protected abstract handleMessageBG(Landroid/os/Message;)V
.end method

.method protected abstract handleMessageUI(Landroid/os/Message;)V
.end method

.method public init(Landroid/content/Context;Lcom/htc/lockscreen/app/ctrl/BaseCtrl$StateListener;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mListener:Lcom/htc/lockscreen/app/ctrl/BaseCtrl$StateListener;

    .line 29
    invoke-virtual {p0, p3}, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->initBGHandler(Landroid/os/Handler;)V

    .line 30
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->startCtrl()V

    .line 31
    return-void
.end method

.method public initBGHandler(Landroid/os/Handler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, looper:Landroid/os/Looper;
    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 43
    :cond_0
    if-nez v0, :cond_1

    .line 44
    const-string v1, "BaseCtrl"

    const-string v2, "initBGHandler looper is null"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 47
    new-instance v1, Lcom/htc/lockscreen/app/ctrl/BaseCtrl$MyCtrlBGHandler;

    invoke-direct {v1, p0, v0}, Lcom/htc/lockscreen/app/ctrl/BaseCtrl$MyCtrlBGHandler;-><init>(Lcom/htc/lockscreen/app/ctrl/BaseCtrl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    .line 49
    :cond_2
    return-void
.end method

.method public notifyLister(ILjava/lang/Object;)V
    .locals 2
    .parameter "state"
    .parameter "extra"

    .prologue
    .line 81
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 82
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 83
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 84
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 85
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mUIHandler:Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 86
    return-void
.end method

.method protected abstract startCtrl()V
.end method

.method protected abstract stopCtrl()V
.end method

.method public uninit()V
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->stopCtrl()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mListener:Lcom/htc/lockscreen/app/ctrl/BaseCtrl$StateListener;

    .line 36
    return-void
.end method
