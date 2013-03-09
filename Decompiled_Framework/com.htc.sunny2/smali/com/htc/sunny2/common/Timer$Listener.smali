.class public interface abstract Lcom/htc/sunny2/common/Timer$Listener;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/common/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onTimerCancelledIRT(ILcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
.end method

.method public abstract onTimerIRT(I)V
.end method
