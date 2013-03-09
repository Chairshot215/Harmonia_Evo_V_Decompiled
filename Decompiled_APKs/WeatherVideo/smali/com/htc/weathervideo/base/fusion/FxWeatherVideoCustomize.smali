.class public Lcom/htc/weathervideo/base/fusion/FxWeatherVideoCustomize;
.super Ljava/lang/Object;
.source "FxWeatherVideoCustomize.java"


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WeatherVideo"

.field private static final PREFIX:Ljava/lang/String; = "[FxWeatherVideoCustomize]: "


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disconnectMediaPlayer(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxVideoTexture;I)Z
    .locals 1
    .parameter "FxTLC_Video"
    .parameter "FxVT"
    .parameter "FRAME_FADEOUT"

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method
