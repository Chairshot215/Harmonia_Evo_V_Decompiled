.class public interface abstract Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;
.super Ljava/lang/Object;
.source "FullScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/FullScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnScrollListener"
.end annotation


# static fields
.field public static final SCROLL_STATE_FLING:I = 0x3

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_TOUCH_BEGIN_SCROLL:I = 0x1

.field public static final SCROLL_STATE_TOUCH_SCROLL:I = 0x2


# virtual methods
.method public abstract canScroll()Z
.end method

.method public abstract onPositionChanged(II)V
.end method

.method public abstract onScrollAnimationBegin()V
.end method

.method public abstract onScrollAnimationEnd()V
.end method

.method public abstract onScrollStateChanged(I)V
.end method
