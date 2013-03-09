.class public interface abstract Lcom/htc/sunny2/RenderThread$EventListener;
.super Ljava/lang/Object;
.source "RenderThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/RenderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onRenderStartIRT()Z
.end method

.method public abstract onRenderStopIRT()V
.end method

.method public abstract onRenderToWindowIRT(I)V
.end method
