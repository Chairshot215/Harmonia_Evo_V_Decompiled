.class Lcom/htc/idlescreen/base/IdleState$BGHandler;
.super Landroid/os/Handler;
.source "IdleState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/IdleState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BGHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/IdleState;


# direct methods
.method public constructor <init>(Lcom/htc/idlescreen/base/IdleState;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 545
    iput-object p1, p0, Lcom/htc/idlescreen/base/IdleState$BGHandler;->this$0:Lcom/htc/idlescreen/base/IdleState;

    .line 546
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 547
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x7

    .line 551
    iget v5, p1, Landroid/os/Message;->what:I

    .line 552
    .local v5, what:I
    packed-switch v5, :pswitch_data_0

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 554
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 555
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "status"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 557
    .local v4, status:I
    const-string v6, "level"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 558
    .local v1, level:I
    const-string v6, "plugged"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 559
    .local v3, plugged:I
    iget-object v6, p0, Lcom/htc/idlescreen/base/IdleState$BGHandler;->this$0:Lcom/htc/idlescreen/base/IdleState;

    #calls: Lcom/htc/idlescreen/base/IdleState;->handleBatteryUpdate(III)V
    invoke-static {v6, v4, v3, v1}, Lcom/htc/idlescreen/base/IdleState;->access$1000(Lcom/htc/idlescreen/base/IdleState;III)V

    goto :goto_0

    .line 562
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #level:I
    .end local v3           #plugged:I
    .end local v4           #status:I
    :pswitch_1
    iget-object v6, p0, Lcom/htc/idlescreen/base/IdleState$BGHandler;->this$0:Lcom/htc/idlescreen/base/IdleState;

    #calls: Lcom/htc/idlescreen/base/IdleState;->handleDismissLowBattery()V
    invoke-static {v6}, Lcom/htc/idlescreen/base/IdleState;->access$1100(Lcom/htc/idlescreen/base/IdleState;)V

    goto :goto_0

    .line 565
    :pswitch_2
    invoke-static {}, Lcom/htc/idlescreen/base/setting/SettingDB;->getInstance()Lcom/htc/idlescreen/base/setting/SettingDB;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/idlescreen/base/IdleState$BGHandler;->this$0:Lcom/htc/idlescreen/base/IdleState;

    iget-object v7, v7, Lcom/htc/idlescreen/base/IdleState;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/htc/idlescreen/base/setting/SettingDB;->updateDBCache(Landroid/content/Context;)Z

    .line 566
    iget-object v6, p0, Lcom/htc/idlescreen/base/IdleState$BGHandler;->this$0:Lcom/htc/idlescreen/base/IdleState;

    #getter for: Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/idlescreen/base/IdleState;->access$400(Lcom/htc/idlescreen/base/IdleState;)Landroid/os/Handler;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 567
    iget-object v6, p0, Lcom/htc/idlescreen/base/IdleState$BGHandler;->this$0:Lcom/htc/idlescreen/base/IdleState;

    #getter for: Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/idlescreen/base/IdleState;->access$400(Lcom/htc/idlescreen/base/IdleState;)Landroid/os/Handler;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    goto :goto_0

    .line 570
    :pswitch_3
    const/16 v6, 0x67

    invoke-static {p0, v6}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 571
    iget-object v6, p0, Lcom/htc/idlescreen/base/IdleState$BGHandler;->this$0:Lcom/htc/idlescreen/base/IdleState;

    #getter for: Lcom/htc/idlescreen/base/IdleState;->mMusicCtrl:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;
    invoke-static {v6}, Lcom/htc/idlescreen/base/IdleState;->access$1200(Lcom/htc/idlescreen/base/IdleState;)Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    move-result-object v2

    .line 572
    .local v2, music:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;
    if-eqz v2, :cond_0

    .line 573
    invoke-virtual {v2}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->onSDCardRemoved()V

    goto :goto_0

    .line 552
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
