.class public interface abstract Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;
.super Ljava/lang/Object;
.source "Renderer.java"

# interfaces
.implements Lcom/google/android/videochat/Renderer$RendererThreadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SelfRendererThreadCallback"
.end annotation


# virtual methods
.method public abstract getIdealCaptureSize()Lcom/google/android/videochat/Size;
.end method

.method public abstract onCameraOpened(Z)V
.end method
