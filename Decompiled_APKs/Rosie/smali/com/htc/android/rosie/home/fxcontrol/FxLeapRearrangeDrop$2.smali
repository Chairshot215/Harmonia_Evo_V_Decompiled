.class Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$2;
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
    .line 82
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxDraggable;)V
    .locals 3
    .parameter "drag"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->isRemoveType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const-string v0, "LeapRearrangeDrop"

    const-string v1, "[ROSIE_DEBUG][LEAP_REARRANGE] LeapDrop[Remove].onDropEvent() - DeActivate"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const-string v0, "LeapRearrangeDrop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ROSIE_DEBUG] LeapDrop["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mScreen:I
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$000(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "].onDropEvent() - DeActivate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->stopMoveAnimation()V

    .line 94
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;->hideIndicator()V

    goto :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    check-cast p1, Lcom/htc/fusion/fx/FxDraggable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$2;->onMessageReceived(Lcom/htc/fusion/fx/FxDraggable;)V

    return-void
.end method
