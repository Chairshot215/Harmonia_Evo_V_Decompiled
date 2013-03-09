.class public Lcom/htc/weather/animations/WeatherAlphaAnimation;
.super Landroid/view/animation/AlphaAnimation;
.source "WeatherAlphaAnimation.java"


# direct methods
.method public constructor <init>(FFJLandroid/view/animation/Interpolator;J)V
    .locals 2
    .parameter "fromAlpha"
    .parameter "toAlpha"
    .parameter "frames"
    .parameter "interpolator"
    .parameter "offset"

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 11
    invoke-virtual {p0, p3, p4}, Lcom/htc/weather/animations/WeatherAlphaAnimation;->setDuration(J)V

    .line 12
    if-eqz p5, :cond_0

    .line 13
    invoke-virtual {p0, p5}, Lcom/htc/weather/animations/WeatherAlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 14
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p0, p6, p7}, Lcom/htc/weather/animations/WeatherAlphaAnimation;->setStartOffset(J)V

    .line 16
    :cond_1
    return-void
.end method
