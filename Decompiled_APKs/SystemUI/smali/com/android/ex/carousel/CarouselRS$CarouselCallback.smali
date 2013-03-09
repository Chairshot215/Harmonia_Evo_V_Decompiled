.class public interface abstract Lcom/android/ex/carousel/CarouselRS$CarouselCallback;
.super Ljava/lang/Object;
.source "CarouselRS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/carousel/CarouselRS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarouselCallback"
.end annotation


# virtual methods
.method public abstract onAnimationFinished(F)V
.end method

.method public abstract onAnimationStarted()V
.end method

.method public abstract onCardLongPress(I[ILandroid/graphics/Rect;)V
.end method

.method public abstract onCardSelected(I)V
.end method

.method public abstract onDetailSelected(III)V
.end method

.method public abstract onInvalidateDetailTexture(I)V
.end method

.method public abstract onInvalidateGeometry(I)V
.end method

.method public abstract onInvalidateTexture(I)V
.end method

.method public abstract onRequestDetailTexture(I)V
.end method

.method public abstract onRequestGeometry(I)V
.end method

.method public abstract onRequestTexture(I)V
.end method
