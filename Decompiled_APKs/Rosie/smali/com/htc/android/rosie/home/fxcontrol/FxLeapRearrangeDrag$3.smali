.class Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;
.super Lcom/htc/fusion/fx/MessageListener;
.source "FxLeapRearrangeDrag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/FxPlaybackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;


# direct methods
.method constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    if-nez v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    const-string v0, "LeapRearrangeDrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ROSIE_DEBUG][LEAP_REARRANGE] mPlaybackInfoListener() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    const-string v1, "drag_start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->moveOthersDown(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)V

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 305
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->stopMoveAnimation()V

    .line 306
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->hideIndicator()V

    .line 309
    :cond_3
    iget-object v0, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    const-string v1, "drop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 311
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->getDropTarget()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->isRemoveType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 312
    const-string v0, ""

    const-string v1, "[LEAP_REARRANGE] mPlaybackInfoListener, leap_remove action here"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->getFxLeapRearrangeListener()Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;->onLeapRearrangeDragDrop()V

    goto/16 :goto_0

    .line 317
    :cond_4
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$300(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/fusion/fx/controls/FxDragControl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDragControl;->setFrame(F)V

    .line 318
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->moveOthersUp(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)V

    .line 319
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->getDragSource()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    const-string v0, "LeapRearrangeDrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ROSIE_DEBUG][LEAP_REARRANGE] DragSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->getDragSource()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->getDragSource()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->getScreen()I

    move-result v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->getDragSource()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->getOriginalScreen()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 326
    const-string v0, "LeapRearrangeDrag"

    const-string v1, "[ROSIE_DEBUG][LEAP_REARRANGE] Drag=Drop, return!"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->getFxLeapRearrangeListener()Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->getFxLeapRearrangeListener()Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;->onLeapRearrangeDragDropCancel()V

    goto/16 :goto_0

    .line 333
    :cond_5
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->getFxLeapRearrangeListener()Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 334
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 335
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->stopMoveAnimation()V

    .line 336
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->hideIndicator()V

    .line 338
    :cond_6
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->getFxLeapRearrangeListener()Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;->onLeapRearrangeDragDrop()V

    .line 344
    :cond_7
    iget-object v0, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    const-string v1, "Drag_end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    const-string v0, "LeapRearrangeDrag"

    const-string v1, "[ROSIE_DEBUG][LEAP_REARRANGE] drop_end. return!"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->getFxLeapRearrangeListener()Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->getFxLeapRearrangeListener()Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;->onLeapRearrangeDragDropCancel()V

    goto/16 :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 292
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
