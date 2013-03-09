.class public Lcom/htc/weather/animations/WeatherAlphaAnimation;
.super Landroid/view/animation/AlphaAnimation;
.source "WeatherAlphaAnimation.java"


# direct methods
.method public constructor <init>(FFJLandroid/view/animation/Interpolator;J)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {p0, p3, p4}, Lcom/htc/weather/animations/WeatherAlphaAnimation;->setDuration(J)V

    if-eqz p5, :cond_0

    invoke-virtual {p0, p5}, Lcom/htc/weather/animations/WeatherAlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p6, p7}, Lcom/htc/weather/animations/WeatherAlphaAnimation;->setStartOffset(J)V

    :cond_1
    return-void
.end method
