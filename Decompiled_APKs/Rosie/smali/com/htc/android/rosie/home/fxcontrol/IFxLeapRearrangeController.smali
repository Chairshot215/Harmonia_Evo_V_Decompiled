.class public interface abstract Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
.super Ljava/lang/Object;
.source "IFxLeapRearrangeController.java"


# virtual methods
.method public abstract getDragSource()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;
.end method

.method public abstract getDropTarget()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;
.end method

.method public abstract getFxLeapRearrangeListener()Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;
.end method

.method public abstract getLeapDrags()[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;
.end method

.method public abstract getLeapDrops()[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;
.end method

.method public abstract getMoveFrom()I
.end method

.method public abstract getMoveTo()I
.end method

.method public abstract getOverlayColor()I
.end method

.method public abstract hideIndicator()V
.end method

.method public abstract moveOthersDown(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)V
.end method

.method public abstract moveOthersUp(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)V
.end method

.method public abstract setDragSource(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)V
.end method

.method public abstract setDropTarget(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)V
.end method

.method public abstract setFxLeapRearrangeListener(Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;)V
.end method

.method public abstract setMoveFrom(I)V
.end method

.method public abstract setMoveTo(I)V
.end method

.method public abstract showIndicator(I)V
.end method

.method public abstract startMoveAnimation(J)V
.end method

.method public abstract stopMoveAnimation()V
.end method
