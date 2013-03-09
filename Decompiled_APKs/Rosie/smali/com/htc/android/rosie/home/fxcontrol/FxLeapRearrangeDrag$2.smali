.class Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$2;
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
        "Lcom/htc/fusion/fx/FxDraggable;",
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
    .line 274
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxDraggable;)V
    .locals 3
    .parameter "drag"

    .prologue
    .line 276
    const-string v0, "LeapRearrangeDrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ROSIE_DEBUG][LEAP_REARRANGE] OnDragEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$000(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - End("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxSceneContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$200(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->getPosition()Lcom/htc/fusion/Point3F;

    move-result-object v2

    iget v2, v2, Lcom/htc/fusion/Point3F;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxSceneContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$200(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->getPosition()Lcom/htc/fusion/Point3F;

    move-result-object v2

    iget v2, v2, Lcom/htc/fusion/Point3F;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxSceneContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$200(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->getPosition()Lcom/htc/fusion/Point3F;

    move-result-object v2

    iget v2, v2, Lcom/htc/fusion/Point3F;->z:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    if-nez v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->stopMoveAnimation()V

    .line 283
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->hideIndicator()V

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->getFxLeapRearrangeListener()Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->getFxLeapRearrangeListener()Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;->onLeapRearrangeDragEnd()V

    goto :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 274
    check-cast p1, Lcom/htc/fusion/fx/FxDraggable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$2;->onMessageReceived(Lcom/htc/fusion/fx/FxDraggable;)V

    return-void
.end method
