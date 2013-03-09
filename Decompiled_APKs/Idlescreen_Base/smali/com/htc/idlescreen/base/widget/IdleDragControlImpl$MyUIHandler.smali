.class Lcom/htc/idlescreen/base/widget/IdleDragControlImpl$MyUIHandler;
.super Landroid/os/Handler;
.source "IdleDragControlImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;


# direct methods
.method public constructor <init>(Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 556
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    .line 557
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 558
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/16 v2, 0x12d

    .line 561
    iget v0, p1, Landroid/os/Message;->what:I

    .line 562
    .local v0, what:I
    if-ne v0, v2, :cond_0

    .line 563
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    #getter for: Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->access$100(Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 564
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    #calls: Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->ringBack()V
    invoke-static {v1}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->access$200(Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;)V

    .line 566
    :cond_0
    return-void
.end method
