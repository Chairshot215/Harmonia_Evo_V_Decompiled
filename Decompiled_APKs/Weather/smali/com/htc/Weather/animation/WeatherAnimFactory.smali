.class public Lcom/htc/Weather/animation/WeatherAnimFactory;
.super Ljava/lang/Object;
.source "WeatherAnimFactory.java"


# static fields
.field public static final FUSION_VIDEO_VIEW:Ljava/lang/String; = "FUSION_VIDEO_VIEW"

.field public static final VIDEO_OVERLAY:Ljava/lang/String; = "VIDEO_OVERLAY"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimationInstance(Ljava/lang/String;)Lcom/htc/Weather/animation/AbstractWeatherAnim;
    .locals 1
    .parameter "type"

    .prologue
    .line 15
    if-eqz p0, :cond_1

    .line 16
    const-string v0, "VIDEO_OVERLAY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    new-instance v0, Lcom/htc/Weather/animation/ImplOverlayVideo;

    invoke-direct {v0}, Lcom/htc/Weather/animation/ImplOverlayVideo;-><init>()V

    .line 22
    :goto_0
    return-object v0

    .line 18
    :cond_0
    const-string v0, "FUSION_VIDEO_VIEW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    new-instance v0, Lcom/htc/Weather/animation/ImplFusionVideoView;

    invoke-direct {v0}, Lcom/htc/Weather/animation/ImplFusionVideoView;-><init>()V

    goto :goto_0

    .line 22
    :cond_1
    new-instance v0, Lcom/htc/Weather/animation/ImplOverlayVideo;

    invoke-direct {v0}, Lcom/htc/Weather/animation/ImplOverlayVideo;-><init>()V

    goto :goto_0
.end method
