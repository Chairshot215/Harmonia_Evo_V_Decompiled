.class public Lcom/htc/wrap/android/view/HtcWrapScaleGestureDetector;
.super Ljava/lang/Object;
.source "HtcWrapScaleGestureDetector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getX(Landroid/view/ScaleGestureDetector;I)F
    .locals 1
    .parameter "detector"
    .parameter "nIndex"

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/ScaleGestureDetector;->getX(I)F

    move-result v0

    return v0
.end method

.method public static getY(Landroid/view/ScaleGestureDetector;I)F
    .locals 1
    .parameter "detector"
    .parameter "nIndex"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Landroid/view/ScaleGestureDetector;->getY(I)F

    move-result v0

    return v0
.end method
