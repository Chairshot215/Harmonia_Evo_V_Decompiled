.class public Lcom/htc/idlescreen/base/ctrl/BaseCtrl$MyCtrlBGHandler;
.super Landroid/os/Handler;
.source "BaseCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/ctrl/BaseCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyCtrlBGHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/ctrl/BaseCtrl;


# direct methods
.method constructor <init>(Lcom/htc/idlescreen/base/ctrl/BaseCtrl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl$MyCtrlBGHandler;->this$0:Lcom/htc/idlescreen/base/ctrl/BaseCtrl;

    .line 74
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 76
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 79
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 89
    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl$MyCtrlBGHandler;->this$0:Lcom/htc/idlescreen/base/ctrl/BaseCtrl;

    invoke-virtual {v3, p1}, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->handleMessageBG(Landroid/os/Message;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl$MyCtrlBGHandler;->this$0:Lcom/htc/idlescreen/base/ctrl/BaseCtrl;

    iget-object v1, v3, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mListener:Lcom/htc/idlescreen/base/ctrl/BaseCtrl$StateListener;

    .line 82
    .local v1, listener:Lcom/htc/idlescreen/base/ctrl/BaseCtrl$StateListener;
    if-eqz v1, :cond_0

    .line 83
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 84
    .local v2, state:I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 85
    .local v0, extra:Ljava/lang/Object;
    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl$MyCtrlBGHandler;->this$0:Lcom/htc/idlescreen/base/ctrl/BaseCtrl;

    invoke-interface {v1, v3, v2, v0}, Lcom/htc/idlescreen/base/ctrl/BaseCtrl$StateListener;->onStateChange(Lcom/htc/idlescreen/base/ctrl/BaseCtrl;ILjava/lang/Object;)V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
