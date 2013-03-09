.class public Lcom/jme3/system/NanoTimer;
.super Lcom/jme3/system/Timer;
.source "NanoTimer.java"


# instance fields
.field private fps:F

.field private previousTime:J

.field private startTime:J

.field private tpf:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/jme3/system/Timer;-><init>()V

    .line 52
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jme3/system/NanoTimer;->startTime:J

    .line 53
    return-void
.end method


# virtual methods
.method public getFrameRate()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/jme3/system/NanoTimer;->fps:F

    return v0
.end method

.method public getResolution()J
    .locals 2

    .prologue
    .line 71
    const-wide/32 v0, 0x3b9aca00

    return-wide v0
.end method

.method public getTime()J
    .locals 4

    .prologue
    .line 67
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jme3/system/NanoTimer;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTimeInSeconds()F
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/jme3/system/NanoTimer;->getTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3089705f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getTimePerFrame()F
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/jme3/system/NanoTimer;->tpf:F

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jme3/system/NanoTimer;->startTime:J

    .line 90
    invoke-virtual {p0}, Lcom/jme3/system/NanoTimer;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jme3/system/NanoTimer;->previousTime:J

    .line 91
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/jme3/system/NanoTimer;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jme3/system/NanoTimer;->previousTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x3089705f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/system/NanoTimer;->tpf:F

    .line 84
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/jme3/system/NanoTimer;->tpf:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/system/NanoTimer;->fps:F

    .line 85
    invoke-virtual {p0}, Lcom/jme3/system/NanoTimer;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jme3/system/NanoTimer;->previousTime:J

    .line 86
    return-void
.end method
