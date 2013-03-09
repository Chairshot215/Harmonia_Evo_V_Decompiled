.class public interface abstract Lcom/htc/launcher/LeapController$LeapListener;
.super Ljava/lang/Object;
.source "LeapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/LeapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LeapListener"
.end annotation


# virtual methods
.method public abstract beginLeap(I)V
.end method

.method public abstract endLeap(I)V
.end method

.method public abstract onAnimationStateChanged(ZLcom/htc/launcher/LeapController$ZoomDirection;)V
.end method

.method public abstract onLongPress()V
.end method
