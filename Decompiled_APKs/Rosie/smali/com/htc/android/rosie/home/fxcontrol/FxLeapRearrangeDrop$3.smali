.class Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$3;
.super Lcom/htc/fusion/fx/MessageListener;
.source "FxLeapRearrangeDrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/FxDraggable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;


# direct methods
.method constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxDraggable;)V
    .locals 3
    .parameter "drag"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    if-nez v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->isRemoveType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    const-string v0, "LeapRearrangeDrop"

    const-string v1, "[ROSIE_DEBUG][LEAP_REARRANGE] LeapDrop[Remove].onDropEvent() - Drop"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->getDragSource()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->getFxDrag()Lcom/htc/fusion/fx/controls/FxDragControl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDragControl;->setHighlight(I)V

    goto :goto_0

    .line 110
    :cond_2
    const-string v0, "LeapRearrangeDrop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ROSIE_DEBUG][LEAP_REARRANGE] LeapDrop["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mScreen:I
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$000(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "].onDropEvent() - Drop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->stopMoveAnimation()V

    .line 116
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->hideIndicator()V

    .line 118
    const-string v0, "LeapRearrangeDrop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ROSIE_DEBUG][LEAP_REARRANGE] Home index["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mScreen:I
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$000(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "].onDropEvent() - Drop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->getDragSource()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    move-result-object v0

    if-nez v0, :cond_4

    .line 125
    const-string v0, "LeapRearrangeDrop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ROSIE_DEBUG][LEAP_REARRANGE] LeapDrop["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mScreen:I
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$000(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "].onDropEvent() - No DragSource, return!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->getDragSource()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->getOriginalScreen()I

    move-result v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mScreen:I
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$000(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 130
    const-string v0, "LeapRearrangeDrop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ROSIE_DEBUG][LEAP_REARRANGE] LeapDrop["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mScreen:I
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$000(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "].onDropEvent() - Drag=Drop, return!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    :cond_5
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->getFxLeapRearrangeListener()Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->getFxLeapRearrangeListener()Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mScreen:I
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$000(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;->onLeapRearrangeDrop(I)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    check-cast p1, Lcom/htc/fusion/fx/FxDraggable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$3;->onMessageReceived(Lcom/htc/fusion/fx/FxDraggable;)V

    return-void
.end method
