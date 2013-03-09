.class Lcom/htc/idlescreen/base/widget/IdleDragControlImpl$1;
.super Ljava/lang/Object;
.source "IdleDragControlImpl.java"

# interfaces
.implements Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;


# direct methods
.method constructor <init>(Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl$1;->this$0:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SetDragVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl$1;->this$0:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setDragItemVisible(Z)V

    .line 489
    return-void
.end method

.method public onAnimationEnd(Ljava/lang/String;)V
    .locals 3
    .parameter "requestCode"

    .prologue
    .line 493
    const-string v0, "IdleDragControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl$1;->this$0:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    const/4 v1, 0x0

    #setter for: Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->mPlayAnimation:Z
    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->access$002(Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;Z)Z

    .line 495
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl$1;->this$0:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setZOrder()V

    .line 496
    const-string v0, "drop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "click"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl$1;->this$0:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->reset(Z)V

    .line 500
    :cond_1
    return-void
.end method
