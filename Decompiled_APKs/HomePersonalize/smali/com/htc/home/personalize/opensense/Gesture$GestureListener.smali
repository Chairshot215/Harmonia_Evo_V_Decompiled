.class public interface abstract Lcom/htc/home/personalize/opensense/Gesture$GestureListener;
.super Ljava/lang/Object;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/opensense/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GestureListener"
.end annotation


# virtual methods
.method public abstract onBothFingerUp(Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;)Z
.end method

.method public abstract onClick(Lcom/htc/home/personalize/opensense/Gesture$ClickBehavior;)Z
.end method

.method public abstract onDoubleTap(Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;)Z
.end method

.method public abstract onDown(Lcom/htc/home/personalize/opensense/Gesture$DefaultBehavior;)Z
.end method

.method public abstract onDrag(Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;)Z
.end method

.method public abstract onSecondFingerDown(Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;)Z
.end method

.method public abstract onSecondFingerUp(Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;)Z
.end method

.method public abstract onUp(Lcom/htc/home/personalize/opensense/Gesture$DefaultBehavior;)Z
.end method

.method public abstract onZoomIn(Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;)Z
.end method

.method public abstract onZoomOut(Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;)Z
.end method
