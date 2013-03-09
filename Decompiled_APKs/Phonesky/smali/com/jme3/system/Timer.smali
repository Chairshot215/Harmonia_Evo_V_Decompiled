.class public abstract Lcom/jme3/system/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getFrameRate()F
.end method

.method public abstract getResolution()J
.end method

.method public abstract getTime()J
.end method

.method public getTimeInSeconds()F
    .locals 3

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/jme3/system/Timer;->getTime()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p0}, Lcom/jme3/system/Timer;->getResolution()J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public abstract getTimePerFrame()F
.end method

.method public abstract reset()V
.end method

.method public abstract update()V
.end method
