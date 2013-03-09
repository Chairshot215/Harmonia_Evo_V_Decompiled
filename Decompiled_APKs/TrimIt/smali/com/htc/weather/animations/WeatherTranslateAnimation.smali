.class public Lcom/htc/weather/animations/WeatherTranslateAnimation;
.super Landroid/view/animation/TranslateAnimation;
.source "WeatherTranslateAnimation.java"


# direct methods
.method public constructor <init>(FFFFJLandroid/view/animation/Interpolator;J)V
    .locals 2
    .parameter "fromXDelta"
    .parameter "toXDelta"
    .parameter "fromYDelta"
    .parameter "toYDelta"
    .parameter "duration"
    .parameter "interpolator"
    .parameter "offset"

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 11
    invoke-virtual {p0, p5, p6}, Lcom/htc/weather/animations/WeatherTranslateAnimation;->setDuration(J)V

    .line 12
    if-eqz p7, :cond_0

    .line 13
    invoke-virtual {p0, p7}, Lcom/htc/weather/animations/WeatherTranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 14
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p8, v0

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p0, p8, p9}, Lcom/htc/weather/animations/WeatherTranslateAnimation;->setStartOffset(J)V

    .line 16
    :cond_1
    return-void
.end method
