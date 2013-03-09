.class public Lcom/htc/lockscreen/app/ctrl/BaseCtrl$MyCtrlUIHandler;
.super Landroid/os/Handler;
.source "BaseCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/ctrl/BaseCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyCtrlUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/ctrl/BaseCtrl;


# direct methods
.method protected constructor <init>(Lcom/htc/lockscreen/app/ctrl/BaseCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl$MyCtrlUIHandler;->this$0:Lcom/htc/lockscreen/app/ctrl/BaseCtrl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 53
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 63
    iget-object v3, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl$MyCtrlUIHandler;->this$0:Lcom/htc/lockscreen/app/ctrl/BaseCtrl;

    invoke-virtual {v3, p1}, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->handleMessageUI(Landroid/os/Message;)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v3, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl$MyCtrlUIHandler;->this$0:Lcom/htc/lockscreen/app/ctrl/BaseCtrl;

    iget-object v1, v3, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mListener:Lcom/htc/lockscreen/app/ctrl/BaseCtrl$StateListener;

    .line 56
    .local v1, listener:Lcom/htc/lockscreen/app/ctrl/BaseCtrl$StateListener;
    if-eqz v1, :cond_0

    .line 57
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 58
    .local v2, state:I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 59
    .local v0, extra:Ljava/lang/Object;
    iget-object v3, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl$MyCtrlUIHandler;->this$0:Lcom/htc/lockscreen/app/ctrl/BaseCtrl;

    invoke-interface {v1, v3, v2, v0}, Lcom/htc/lockscreen/app/ctrl/BaseCtrl$StateListener;->onStateChange(Lcom/htc/lockscreen/app/ctrl/BaseCtrl;ILjava/lang/Object;)V

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
