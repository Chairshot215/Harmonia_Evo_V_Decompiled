.class Lcom/htc/idlescreen/base/widget/IdleContainer$1;
.super Ljava/lang/Object;
.source "IdleContainer.java"

# interfaces
.implements Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/widget/IdleContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/widget/IdleContainer;


# direct methods
.method constructor <init>(Lcom/htc/idlescreen/base/widget/IdleContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 967
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer$1;->this$0:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "result"

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer$1;->this$0:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0, p1, p2}, Lcom/htc/idlescreen/base/widget/IdleContainer;->onRingAnimationEnd(Ljava/lang/String;I)V

    .line 1010
    return-void
.end method

.method public onAnimationStart(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer$1;->this$0:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->onRingAnimationStart(Ljava/lang/String;)V

    .line 1015
    return-void
.end method

.method public onDropEnd(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 2
    .parameter "drag"

    .prologue
    .line 989
    const-string v0, "IdleContainer"

    const-string v1, "ring onDropEnd"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer$1;->this$0:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->onRingDropEnd(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V

    .line 992
    return-void
.end method

.method public onDropStart(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 2
    .parameter "drag"

    .prologue
    .line 983
    const-string v0, "IdleContainer"

    const-string v1, "ring onDropStart"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer$1;->this$0:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->onRingDropStart(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V

    .line 986
    return-void
.end method

.method public onEndDrag(Z)V
    .locals 3
    .parameter "unlock"

    .prologue
    .line 970
    const-string v0, "IdleContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ring onDragEnd unlock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer$1;->this$0:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->onRingDragEnd(Z)V

    .line 973
    return-void
.end method

.method public onStartDrag()V
    .locals 2

    .prologue
    .line 977
    const-string v0, "IdleContainer"

    const-string v1, "ring onDragStart"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer$1;->this$0:Lcom/htc/idlescreen/base/widget/IdleContainer;

    const/4 v1, 0x1

    #setter for: Lcom/htc/idlescreen/base/widget/IdleContainer;->mRingMoved:Z
    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->access$402(Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Z

    .line 979
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer$1;->this$0:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->onRingDragStart()V

    .line 980
    return-void
.end method

.method public onUnlockEnd()V
    .locals 2

    .prologue
    .line 995
    const-string v0, "IdleContainer"

    const-string v1, "ring onUnlockEnd"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer$1;->this$0:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->onRingUnlockEnd()V

    .line 999
    return-void
.end method

.method public onUnlockStart()V
    .locals 2

    .prologue
    .line 1002
    const-string v0, "IdleContainer"

    const-string v1, "ring onUnlockStart"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer$1;->this$0:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->onRingUnlockStart()V

    .line 1005
    return-void
.end method
