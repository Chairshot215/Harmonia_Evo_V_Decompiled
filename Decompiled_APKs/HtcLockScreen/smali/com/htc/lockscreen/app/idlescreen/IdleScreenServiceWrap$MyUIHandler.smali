.class Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$MyUIHandler;
.super Landroid/os/Handler;
.source "IdleScreenServiceWrap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 868
    iput-object p1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    .line 869
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 870
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 873
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 875
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 876
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 877
    .local v1, extra:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    invoke-virtual {v3, v0, v1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->onLSCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_0

    .line 880
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #extra:Landroid/os/Bundle;
    :pswitch_1
    iget-object v3, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    #getter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mListener:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$onServiceListener;
    invoke-static {v3}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->access$800(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$onServiceListener;

    move-result-object v2

    .line 881
    .local v2, listener:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$onServiceListener;
    if-eqz v2, :cond_0

    .line 882
    iget-object v3, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    invoke-interface {v2, v3}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$onServiceListener;->onServiceDead(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)V

    goto :goto_0

    .line 886
    .end local v2           #listener:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$onServiceListener;
    :pswitch_2
    iget-object v3, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    invoke-virtual {v3}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->updateData()V

    .line 887
    iget-object v3, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    invoke-virtual {v3}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->updateVisible()V

    goto :goto_0

    .line 890
    :pswitch_3
    const-string v3, "IdleScreenServiceWrap"

    const-string v4, "WHAT_UI_CONNECT_TIMEOUT"

    invoke-static {v3, v4}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    iget-object v3, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    invoke-virtual {v3}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->triggerReconnect()V

    goto :goto_0

    .line 894
    :pswitch_4
    const-string v3, "IdleScreenServiceWrap"

    const-string v4, "WHAT_UI_SET_FIRST_FRAME_READY"

    invoke-static {v3, v4}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    iget-object v3, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    #getter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mLSManager:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;
    invoke-static {v3}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->access$900(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->isShow()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    #getter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mViewMode:I
    invoke-static {v3}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->access$1000(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)I

    move-result v3

    if-nez v3, :cond_0

    .line 896
    iget-object v3, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    const/4 v4, 0x1

    #setter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mSurfaceReady:Z
    invoke-static {v3, v4}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->access$1102(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;Z)Z

    .line 897
    iget-object v3, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    invoke-virtual {v3}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->updateSurfaceState()V

    goto :goto_0

    .line 873
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
