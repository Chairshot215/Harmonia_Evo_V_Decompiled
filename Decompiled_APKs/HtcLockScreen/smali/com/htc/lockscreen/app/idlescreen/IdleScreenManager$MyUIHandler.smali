.class Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$MyUIHandler;
.super Landroid/os/Handler;
.source "IdleScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;


# direct methods
.method private constructor <init>(Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$MyUIHandler;-><init>(Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x6

    const/4 v4, 0x0

    .line 427
    iget v3, p1, Landroid/os/Message;->what:I

    .line 428
    .local v3, what:I
    packed-switch v3, :pswitch_data_0

    .line 457
    :goto_0
    :pswitch_0
    return-void

    .line 430
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    .line 431
    .local v0, comp:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    #calls: Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->handleSetIdleScreen(Landroid/content/ComponentName;)V
    invoke-static {v4, v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->access$100(Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 434
    .end local v0           #comp:Landroid/content/ComponentName;
    :pswitch_2
    iget-object v4, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    #calls: Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->handleClearIdleScreen()V
    invoke-static {v4}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->access$200(Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;)V

    goto :goto_0

    .line 437
    :pswitch_3
    const/4 v1, 0x0

    .line 438
    .local v1, component:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    #getter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;
    invoke-static {v4}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->access$300(Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;)Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 439
    iget-object v4, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    #getter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;
    invoke-static {v4}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->access$300(Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;)Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    .line 440
    iget-object v4, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    #getter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;
    invoke-static {v4}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->access$300(Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;)Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->killIdlescreenProcess()V

    .line 441
    iget-object v4, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    #getter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mUIHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->access$400(Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 442
    iget-object v4, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    #getter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mUIHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->access$400(Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 443
    iget-object v4, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    #getter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mUIHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->access$400(Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0xbb8

    invoke-static {v4, v7, v5, v6}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 445
    :cond_0
    const-string v4, "IdleScreenManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WHAT_UI_IDLESCREEN_TIMEOUT:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 448
    .end local v1           #component:Ljava/lang/String;
    :pswitch_4
    iget-object v4, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    #getter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mUIHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->access$400(Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 449
    iget-object v4, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    invoke-virtual {v4}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->reconnect()V

    goto :goto_0

    .line 452
    :pswitch_5
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-lez v5, :cond_1

    const/4 v2, 0x1

    .line 453
    .local v2, show:Z
    :goto_1
    iget-object v5, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    #calls: Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->_setVisibility(ZZZ)V
    invoke-static {v5, v2, v4, v4}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->access$500(Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;ZZZ)V

    goto/16 :goto_0

    .end local v2           #show:Z
    :cond_1
    move v2, v4

    .line 452
    goto :goto_1

    .line 428
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
