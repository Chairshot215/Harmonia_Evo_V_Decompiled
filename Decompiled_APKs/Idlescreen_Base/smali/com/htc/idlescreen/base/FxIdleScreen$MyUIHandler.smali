.class Lcom/htc/idlescreen/base/FxIdleScreen$MyUIHandler;
.super Landroid/os/Handler;
.source "FxIdleScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/FxIdleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/FxIdleScreen;


# direct methods
.method private constructor <init>(Lcom/htc/idlescreen/base/FxIdleScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 780
    iput-object p1, p0, Lcom/htc/idlescreen/base/FxIdleScreen$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/idlescreen/base/FxIdleScreen;Lcom/htc/idlescreen/base/FxIdleScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 780
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/FxIdleScreen$MyUIHandler;-><init>(Lcom/htc/idlescreen/base/FxIdleScreen;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 782
    iget v3, p1, Landroid/os/Message;->what:I

    .line 783
    .local v3, what:I
    packed-switch v3, :pswitch_data_0

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 785
    :pswitch_0
    iget-object v5, p0, Lcom/htc/idlescreen/base/FxIdleScreen$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #getter for: Lcom/htc/idlescreen/base/FxIdleScreen;->mUIHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$700(Lcom/htc/idlescreen/base/FxIdleScreen;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x1389

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 786
    iget-object v5, p0, Lcom/htc/idlescreen/base/FxIdleScreen$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #getter for: Lcom/htc/idlescreen/base/FxIdleScreen;->mViewMode:I
    invoke-static {v5}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$800(Lcom/htc/idlescreen/base/FxIdleScreen;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 787
    iget-object v5, p0, Lcom/htc/idlescreen/base/FxIdleScreen$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    invoke-virtual {v5, v4}, Lcom/htc/idlescreen/base/FxIdleScreen;->setVisible(Z)V

    goto :goto_0

    .line 789
    :cond_1
    iget-object v4, p0, Lcom/htc/idlescreen/base/FxIdleScreen$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    invoke-virtual {v4, v1}, Lcom/htc/idlescreen/base/FxIdleScreen;->setVisible(Z)V

    goto :goto_0

    .line 793
    :pswitch_1
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v1, :cond_2

    .line 794
    .local v1, isPortrait:Z
    :goto_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/htc/fusion/fx/FxScene;

    .line 795
    .local v2, scene:Lcom/htc/fusion/fx/FxScene;
    const-string v4, "FxIdleScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MyUIHandler WHAT_UI_SET_SCENE isPortrait:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    iget-object v4, p0, Lcom/htc/idlescreen/base/FxIdleScreen$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #calls: Lcom/htc/idlescreen/base/FxIdleScreen;->handleSetScene(Lcom/htc/fusion/fx/FxScene;Z)V
    invoke-static {v4, v2, v1}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$900(Lcom/htc/idlescreen/base/FxIdleScreen;Lcom/htc/fusion/fx/FxScene;Z)V

    goto :goto_0

    .end local v1           #isPortrait:Z
    .end local v2           #scene:Lcom/htc/fusion/fx/FxScene;
    :cond_2
    move v1, v4

    .line 793
    goto :goto_1

    .line 800
    :pswitch_2
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v1, :cond_3

    .line 801
    .restart local v1       #isPortrait:Z
    :goto_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/fusion/fx/FxScene;

    .line 802
    .local v0, bgScene:Lcom/htc/fusion/fx/FxScene;
    const-string v4, "FxIdleScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MyUIHandler WHAT_UI_SET_BACKGROUND isPortrait:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    iget-object v4, p0, Lcom/htc/idlescreen/base/FxIdleScreen$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #calls: Lcom/htc/idlescreen/base/FxIdleScreen;->handleSetBackground(Lcom/htc/fusion/fx/FxScene;Z)V
    invoke-static {v4, v0, v1}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$1000(Lcom/htc/idlescreen/base/FxIdleScreen;Lcom/htc/fusion/fx/FxScene;Z)V

    goto :goto_0

    .end local v0           #bgScene:Lcom/htc/fusion/fx/FxScene;
    .end local v1           #isPortrait:Z
    :cond_3
    move v1, v4

    .line 800
    goto :goto_2

    .line 807
    :pswitch_3
    iget-object v4, p0, Lcom/htc/idlescreen/base/FxIdleScreen$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #getter for: Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    invoke-static {v4}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$100(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 808
    iget-object v4, p0, Lcom/htc/idlescreen/base/FxIdleScreen$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #getter for: Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    invoke-static {v4}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$100(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/idlescreen/base/widget/IdleContainer;->reset()V

    .line 810
    :cond_4
    iget-object v4, p0, Lcom/htc/idlescreen/base/FxIdleScreen$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #getter for: Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    invoke-static {v4}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$200(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 811
    iget-object v4, p0, Lcom/htc/idlescreen/base/FxIdleScreen$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #getter for: Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    invoke-static {v4}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$200(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/idlescreen/base/widget/IdleContainer;->reset()V

    goto/16 :goto_0

    .line 783
    nop

    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
