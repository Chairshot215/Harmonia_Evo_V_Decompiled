.class Lcom/htc/idlescreen/base/widget/IdleContainer$MyUIHandler;
.super Landroid/os/Handler;
.source "IdleContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/widget/IdleContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/widget/IdleContainer;


# direct methods
.method public constructor <init>(Lcom/htc/idlescreen/base/widget/IdleContainer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 925
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleContainer;

    .line 926
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 927
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 930
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 945
    :goto_0
    return-void

    .line 932
    :pswitch_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleContainer;

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleContainer;

    #getter for: Lcom/htc/idlescreen/base/widget/IdleContainer;->mViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;
    invoke-static {v2}, Lcom/htc/idlescreen/base/widget/IdleContainer;->access$000(Lcom/htc/idlescreen/base/widget/IdleContainer;)Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-result-object v2

    #calls: Lcom/htc/idlescreen/base/widget/IdleContainer;->_updateContainerView(Lcom/htc/idlescreen/base/IdleState$ViewMode;)V
    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/widget/IdleContainer;->access$100(Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/idlescreen/base/IdleState$ViewMode;)V

    goto :goto_0

    .line 935
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 936
    .local v0, ringBounce:Z
    :goto_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleContainer;

    #calls: Lcom/htc/idlescreen/base/widget/IdleContainer;->handleShowHint(Z)V
    invoke-static {v1, v0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->access$200(Lcom/htc/idlescreen/base/widget/IdleContainer;Z)V

    goto :goto_0

    .line 935
    .end local v0           #ringBounce:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 939
    :pswitch_2
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleContainer;

    #calls: Lcom/htc/idlescreen/base/widget/IdleContainer;->handleHideHint()V
    invoke-static {v1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->access$300(Lcom/htc/idlescreen/base/widget/IdleContainer;)V

    goto :goto_0

    .line 942
    :pswitch_3
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->handleHideMenu()V

    goto :goto_0

    .line 930
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
