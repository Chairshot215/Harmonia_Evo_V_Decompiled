.class public Lcom/htc/weather/animations/WeatherScaleAnimation;
.super Landroid/view/animation/ScaleAnimation;
.source "WeatherScaleAnimation.java"


# direct methods
.method public constructor <init>(FFFFFFJLandroid/view/animation/Interpolator;J)V
    .locals 11
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"
    .parameter "pivotX"
    .parameter "pivotY"
    .parameter "duration"
    .parameter "interpolator"
    .parameter "offset"

    .prologue
    .line 20
    const/4 v7, 0x1

    const/4 v9, 0x1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v8, p5

    move/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 21
    move-wide/from16 v0, p7

    invoke-virtual {p0, v0, v1}, Lcom/htc/weather/animations/WeatherScaleAnimation;->setDuration(J)V

    .line 22
    if-eqz p9, :cond_0

    .line 23
    move-object/from16 v0, p9

    invoke-virtual {p0, v0}, Lcom/htc/weather/animations/WeatherScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 24
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p10, v2

    if-eqz v2, :cond_1

    .line 25
    move-wide/from16 v0, p10

    invoke-virtual {p0, v0, v1}, Lcom/htc/weather/animations/WeatherScaleAnimation;->setStartOffset(J)V

    .line 26
    :cond_1
    return-void
.end method

.method public constructor <init>(FFFFJLandroid/view/animation/Interpolator;J)V
    .locals 11
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"
    .parameter "duration"
    .parameter "interpolator"
    .parameter "offset"

    .prologue
    .line 10
    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    const/4 v9, 0x1

    const/high16 v10, 0x3f00

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 11
    move-wide/from16 v0, p5

    invoke-virtual {p0, v0, v1}, Lcom/htc/weather/animations/WeatherScaleAnimation;->setDuration(J)V

    .line 12
    if-eqz p7, :cond_0

    .line 13
    move-object/from16 v0, p7

    invoke-virtual {p0, v0}, Lcom/htc/weather/animations/WeatherScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 14
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p8, v2

    if-eqz v2, :cond_1

    .line 15
    move-wide/from16 v0, p8

    invoke-virtual {p0, v0, v1}, Lcom/htc/weather/animations/WeatherScaleAnimation;->setStartOffset(J)V

    .line 16
    :cond_1
    return-void
.end method
