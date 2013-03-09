.class public interface abstract Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;
.super Ljava/lang/Object;
.source "IdleRing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/widget/IdleRing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RingCallback"
.end annotation


# virtual methods
.method public abstract onAnimationEnd(Ljava/lang/String;I)V
.end method

.method public abstract onAnimationStart(Ljava/lang/String;)V
.end method

.method public abstract onDropEnd(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
.end method

.method public abstract onDropStart(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
.end method

.method public abstract onEndDrag(Z)V
.end method

.method public abstract onStartDrag()V
.end method

.method public abstract onUnlockEnd()V
.end method

.method public abstract onUnlockStart()V
.end method
