.class public interface abstract Lcom/htc/opensense/widget/Gesture$GestureListener;
.super Ljava/lang/Object;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GestureListener"
.end annotation


# virtual methods
.method public abstract onBothFingerUp(Lcom/htc/opensense/widget/Gesture$ZoomBehavior;)Z
.end method

.method public abstract onClick(Lcom/htc/opensense/widget/Gesture$ClickBehavior;)Z
.end method

.method public abstract onDoubleTap(Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;)Z
.end method

.method public abstract onDown(Lcom/htc/opensense/widget/Gesture$DefaultBehavior;)Z
.end method

.method public abstract onDrag(Lcom/htc/opensense/widget/Gesture$DragBehavior;)Z
.end method

.method public abstract onSecondFingerDown(Lcom/htc/opensense/widget/Gesture$ZoomBehavior;)Z
.end method

.method public abstract onSecondFingerUp(Lcom/htc/opensense/widget/Gesture$ZoomBehavior;)Z
.end method

.method public abstract onUp(Lcom/htc/opensense/widget/Gesture$DefaultBehavior;)Z
.end method

.method public abstract onZoomIn(Lcom/htc/opensense/widget/Gesture$ZoomBehavior;)Z
.end method

.method public abstract onZoomOut(Lcom/htc/opensense/widget/Gesture$ZoomBehavior;)Z
.end method
