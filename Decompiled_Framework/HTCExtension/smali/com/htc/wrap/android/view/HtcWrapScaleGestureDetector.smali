.class public Lcom/htc/wrap/android/view/HtcWrapScaleGestureDetector;
.super Ljava/lang/Object;
.source "HtcWrapScaleGestureDetector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getX(Landroid/view/ScaleGestureDetector;I)F
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/ScaleGestureDetector;->getX(I)F

    move-result v0

    return v0
.end method

.method public static getY(Landroid/view/ScaleGestureDetector;I)F
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/ScaleGestureDetector;->getY(I)F

    move-result v0

    return v0
.end method
