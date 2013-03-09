.class Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;
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
    .line 142
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxDraggable;)V
    .locals 4
    .parameter "drag"

    .prologue
    .line 145
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v1

    if-nez v1, :cond_0

    .line 176
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->isRemoveType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->getOverlayColor()I

    move-result v0

    .line 150
    .local v0, overlayColor:I
    const-string v1, "LeapRearrangeDrop"

    const-string v2, "[ROSIE_DEBUG][LEAP_REARRANGE] LeapDrop[Remove].onDropEvent() - Enter"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v1

    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/launcher/PagesManager;->getCurrentPagesCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->setMoveTo(I)V

    .line 152
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->setDropTarget(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)V

    .line 153
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->getDragSource()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    move-result-object v1

    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/launcher/PagesManager;->getCurrentPagesCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->setScreen(I)V

    .line 154
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->getDragSource()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->getFxDrag()Lcom/htc/fusion/fx/controls/FxDragControl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxDragControl;->setHighlight(I)V

    .line 155
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->startMoveAnimation(J)V

    goto :goto_0

    .line 159
    .end local v0           #overlayColor:I
    :cond_1
    const-string v1, "LeapRearrangeDrop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ROSIE_DEBUG][LEAP_REARRANGE] LeapDrop["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mScreen:I
    invoke-static {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$000(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "].onDropEvent() - Enter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->getDragSource()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    move-result-object v1

    if-nez v1, :cond_2

    .line 165
    const-string v1, "LeapRearrangeDrop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ROSIE_DEBUG][LEAP_REARRANGE] LeapDrop["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mScreen:I
    invoke-static {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$000(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "].onDropEvent() - No DragSource, return!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    :cond_2
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mScreen:I
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$000(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->setMoveTo(I)V

    .line 171
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->setDropTarget(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)V

    .line 172
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mScreen:I
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$000(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->showIndicator(I)V

    .line 173
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->getDragSource()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mScreen:I
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$000(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->setScreen(I)V

    .line 174
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v1

    const-wide/16 v2, 0x15e

    invoke-interface {v1, v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->startMoveAnimation(J)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 142
    check-cast p1, Lcom/htc/fusion/fx/FxDraggable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;->onMessageReceived(Lcom/htc/fusion/fx/FxDraggable;)V

    return-void
.end method
