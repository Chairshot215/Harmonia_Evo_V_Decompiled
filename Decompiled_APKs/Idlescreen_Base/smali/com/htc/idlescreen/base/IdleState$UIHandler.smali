.class Lcom/htc/idlescreen/base/IdleState$UIHandler;
.super Landroid/os/Handler;
.source "IdleState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/IdleState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/IdleState;


# direct methods
.method private constructor <init>(Lcom/htc/idlescreen/base/IdleState;)V
    .locals 0
    .parameter

    .prologue
    .line 581
    iput-object p1, p0, Lcom/htc/idlescreen/base/IdleState$UIHandler;->this$0:Lcom/htc/idlescreen/base/IdleState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/idlescreen/base/IdleState;Lcom/htc/idlescreen/base/IdleState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 581
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/IdleState$UIHandler;-><init>(Lcom/htc/idlescreen/base/IdleState;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 584
    iget v4, p1, Landroid/os/Message;->what:I

    .line 585
    .local v4, what:I
    iget-object v5, p0, Lcom/htc/idlescreen/base/IdleState$UIHandler;->this$0:Lcom/htc/idlescreen/base/IdleState;

    iget-object v1, v5, Lcom/htc/idlescreen/base/IdleState;->mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    .line 586
    .local v1, cb:Lcom/htc/idlescreen/base/IdleState$ViewCallback;
    packed-switch v4, :pswitch_data_0

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 588
    :pswitch_0
    if-eqz v1, :cond_1

    .line 589
    invoke-interface {v1}, Lcom/htc/idlescreen/base/IdleState$ViewCallback;->onTimeChanged()V

    .line 591
    :cond_1
    iget-object v5, p0, Lcom/htc/idlescreen/base/IdleState$UIHandler;->this$0:Lcom/htc/idlescreen/base/IdleState;

    #getter for: Lcom/htc/idlescreen/base/IdleState;->mWeatherCtrl:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;
    invoke-static {v5}, Lcom/htc/idlescreen/base/IdleState;->access$900(Lcom/htc/idlescreen/base/IdleState;)Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->onTimeChange()V

    goto :goto_0

    .line 604
    :pswitch_1
    if-eqz v1, :cond_2

    .line 605
    invoke-interface {v1}, Lcom/htc/idlescreen/base/IdleState$ViewCallback;->onTelephonyChanged()V

    .line 607
    :cond_2
    iget-object v5, p0, Lcom/htc/idlescreen/base/IdleState$UIHandler;->this$0:Lcom/htc/idlescreen/base/IdleState;

    invoke-virtual {v5}, Lcom/htc/idlescreen/base/IdleState;->updateViewModeLocked()V

    goto :goto_0

    .line 610
    :pswitch_2
    iget-object v5, p0, Lcom/htc/idlescreen/base/IdleState$UIHandler;->this$0:Lcom/htc/idlescreen/base/IdleState;

    invoke-virtual {v5}, Lcom/htc/idlescreen/base/IdleState;->updateViewModeLocked()V

    goto :goto_0

    .line 613
    :pswitch_3
    iget-object v5, p0, Lcom/htc/idlescreen/base/IdleState$UIHandler;->this$0:Lcom/htc/idlescreen/base/IdleState;

    invoke-virtual {v5}, Lcom/htc/idlescreen/base/IdleState;->answerCall()V

    goto :goto_0

    .line 616
    :pswitch_4
    iget-object v5, p0, Lcom/htc/idlescreen/base/IdleState$UIHandler;->this$0:Lcom/htc/idlescreen/base/IdleState;

    invoke-virtual {v5}, Lcom/htc/idlescreen/base/IdleState;->answerCallTimeout()V

    goto :goto_0

    .line 619
    :pswitch_5
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 620
    .local v3, unlockType:I
    iget-object v5, p0, Lcom/htc/idlescreen/base/IdleState$UIHandler;->this$0:Lcom/htc/idlescreen/base/IdleState;

    invoke-virtual {v5, v3}, Lcom/htc/idlescreen/base/IdleState;->unlock(I)V

    goto :goto_0

    .line 624
    .end local v3           #unlockType:I
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    .line 625
    .local v2, info:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;
    iget-object v5, p0, Lcom/htc/idlescreen/base/IdleState$UIHandler;->this$0:Lcom/htc/idlescreen/base/IdleState;

    #calls: Lcom/htc/idlescreen/base/IdleState;->handleAppCountUpdate(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V
    invoke-static {v5, v2}, Lcom/htc/idlescreen/base/IdleState;->access$1300(Lcom/htc/idlescreen/base/IdleState;Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V

    goto :goto_0

    .line 629
    .end local v2           #info:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;
    :pswitch_7
    iget-object v5, p0, Lcom/htc/idlescreen/base/IdleState$UIHandler;->this$0:Lcom/htc/idlescreen/base/IdleState;

    iget-object v0, v5, Lcom/htc/idlescreen/base/IdleState;->mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    .line 630
    .local v0, callback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;
    if-eqz v0, :cond_0

    .line 631
    invoke-interface {v0}, Lcom/htc/idlescreen/base/IdleState$ViewCallback;->onShortcutUpdate()V

    goto :goto_0

    .line 635
    .end local v0           #callback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;
    :pswitch_8
    iget-object v5, p0, Lcom/htc/idlescreen/base/IdleState$UIHandler;->this$0:Lcom/htc/idlescreen/base/IdleState;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/idlescreen/base/IdleState;->setCurDraggable(Lcom/htc/idlescreen/base/widget/IdleDraggable;)V

    goto :goto_0

    .line 638
    :pswitch_9
    iget-object v5, p0, Lcom/htc/idlescreen/base/IdleState$UIHandler;->this$0:Lcom/htc/idlescreen/base/IdleState;

    invoke-virtual {v5}, Lcom/htc/idlescreen/base/IdleState;->handlePhoneUIReady()V

    goto :goto_0

    .line 642
    :pswitch_a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    .line 643
    .restart local v2       #info:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;
    if-eqz v2, :cond_0

    .line 644
    iget-object v5, p0, Lcom/htc/idlescreen/base/IdleState$UIHandler;->this$0:Lcom/htc/idlescreen/base/IdleState;

    invoke-virtual {v5, v2}, Lcom/htc/idlescreen/base/IdleState;->startApplication(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V

    goto :goto_0

    .line 586
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
