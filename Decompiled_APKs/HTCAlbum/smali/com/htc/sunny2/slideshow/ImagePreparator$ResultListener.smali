.class public interface abstract Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;
.super Ljava/lang/Object;
.source "ImagePreparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/slideshow/ImagePreparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResultListener"
.end annotation


# virtual methods
.method public abstract onBitmapDecodeFailed(I)V
.end method

.method public abstract onBitmapDecodeReady(I)V
.end method

.method public abstract onTextureDecodeFailed(I)V
.end method

.method public abstract onTextureDecodeReady(I)V
.end method
