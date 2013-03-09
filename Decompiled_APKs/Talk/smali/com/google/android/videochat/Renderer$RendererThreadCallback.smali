.class public interface abstract Lcom/google/android/videochat/Renderer$RendererThreadCallback;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RendererThreadCallback"
.end annotation


# virtual methods
.method public abstract onFrameGeometryChanged(FFF)V
.end method

.method public abstract onInitialFrame()V
.end method

.method public abstract onOutputTextureNameChanged(I)V
.end method

.method public abstract queueEvent(Ljava/lang/Runnable;)V
.end method
