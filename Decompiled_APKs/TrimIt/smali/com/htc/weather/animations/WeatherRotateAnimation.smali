.class public Lcom/htc/weather/animations/WeatherRotateAnimation;
.super Landroid/view/animation/RotateAnimation;
.source "WeatherRotateAnimation.java"


# direct methods
.method public constructor <init>(FFFFJLandroid/view/animation/Interpolator;J)V
    .locals 9
    .parameter "fromDegrees"
    .parameter "toDegrees"
    .parameter "pivotX"
    .parameter "pivotY"
    .parameter "frames"
    .parameter "interpolator"
    .parameter "offset"

    .prologue
    .line 12
    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v6, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 13
    invoke-virtual {p0, p5, p6}, Lcom/htc/weather/animations/WeatherRotateAnimation;->setDuration(J)V

    .line 14
    if-eqz p7, :cond_0

    .line 15
    move-object/from16 v0, p7

    invoke-virtual {p0, v0}, Lcom/htc/weather/animations/WeatherRotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 16
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p8, v2

    if-eqz v2, :cond_1

    .line 17
    move-wide/from16 v0, p8

    invoke-virtual {p0, v0, v1}, Lcom/htc/weather/animations/WeatherRotateAnimation;->setStartOffset(J)V

    .line 18
    :cond_1
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Landroid/view/animation/RotateAnimation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 26
    return-void
.end method
