.class public abstract Lcom/htc/weather/videoview/WeatherVideoView;
.super Landroid/view/SurfaceView;
.source "WeatherVideoView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attri"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method public abstract changeVideoPath(Ljava/lang/String;)Z
.end method

.method public abstract changeVideoSize(II)Z
.end method

.method public abstract freeze()Z
.end method

.method public abstract getCurrentPath()Ljava/lang/String;
.end method

.method public abstract getPlayStatus()Z
.end method

.method public abstract onDestroy()I
.end method

.method public abstract onInit(Landroid/content/Context;II)I
.end method

.method public abstract onPause()I
.end method

.method public abstract onResume()I
.end method

.method public abstract onStart()I
.end method

.method public abstract onStop()I
.end method

.method public abstract play()I
.end method

.method public abstract prepare()I
.end method

.method public abstract release()I
.end method

.method public abstract reset()I
.end method

.method public abstract setVideoPath(Ljava/lang/String;)Z
.end method

.method public abstract stop()I
.end method
