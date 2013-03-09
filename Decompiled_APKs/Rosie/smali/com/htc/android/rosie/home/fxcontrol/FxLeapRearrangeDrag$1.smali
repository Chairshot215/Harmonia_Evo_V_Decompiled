.class Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$1;
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
    .line 255
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxDraggable;)V
    .locals 3
    .parameter "drag"

    .prologue
    .line 257
    const-string v0, "LeapRearrangeDrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ROSIE_DEBUG][LEAP_REARRANGE] OnDragEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$000(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - Begin("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->stopMoveAnimation()V

    .line 261
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->hideIndicator()V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->setDragSource(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)V

    .line 266
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$000(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->setMoveFrom(I)V

    .line 267
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->getFxLeapRearrangeListener()Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->getFxLeapRearrangeListener()Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->access$000(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;->onLeapRearrangeDrag(I)V

    .line 271
    :cond_1
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 255
    check-cast p1, Lcom/htc/fusion/fx/FxDraggable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$1;->onMessageReceived(Lcom/htc/fusion/fx/FxDraggable;)V

    return-void
.end method
