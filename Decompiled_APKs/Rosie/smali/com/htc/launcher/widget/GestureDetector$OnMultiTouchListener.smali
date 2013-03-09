.class public interface abstract Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/widget/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMultiTouchListener"
.end annotation


# virtual methods
.method public abstract onActionCancel(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onActionUp(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onLongPress(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onMultiTouch(FF)Z
.end method

.method public abstract onScale(F)Z
.end method

.method public abstract onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end method

.method public abstract onShowPress(Landroid/view/MotionEvent;)V
.end method

.method public abstract onSingleTapUp(Landroid/view/MotionEvent;)Z
.end method
