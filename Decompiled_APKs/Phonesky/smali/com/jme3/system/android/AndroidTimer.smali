.class public Lcom/jme3/system/android/AndroidTimer;
.super Lcom/jme3/system/Timer;
.source "AndroidTimer.java"


# instance fields
.field private fps:F

.field private previousTime:J

.field private startTime:J

.field private tpf:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/jme3/system/Timer;-><init>()V

    .line 54
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jme3/system/android/AndroidTimer;->startTime:J

    .line 55
    return-void
.end method


# virtual methods
.method public getFrameRate()F
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/jme3/system/android/AndroidTimer;->fps:F

    return v0
.end method

.method public getResolution()J
    .locals 2

    .prologue
    .line 74
    const-wide/32 v0, 0x3b9aca00

    return-wide v0
.end method

.method public getTime()J
    .locals 4

    .prologue
    .line 70
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jme3/system/android/AndroidTimer;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTimeInSeconds()F
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/jme3/system/android/AndroidTimer;->getTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3089705f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getTimePerFrame()F
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/jme3/system/android/AndroidTimer;->tpf:F

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jme3/system/android/AndroidTimer;->startTime:J

    .line 94
    invoke-virtual {p0}, Lcom/jme3/system/android/AndroidTimer;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jme3/system/android/AndroidTimer;->previousTime:J

    .line 95
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/jme3/system/android/AndroidTimer;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jme3/system/android/AndroidTimer;->previousTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x3089705f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/system/android/AndroidTimer;->tpf:F

    .line 87
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/jme3/system/android/AndroidTimer;->tpf:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/system/android/AndroidTimer;->fps:F

    .line 88
    invoke-virtual {p0}, Lcom/jme3/system/android/AndroidTimer;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jme3/system/android/AndroidTimer;->previousTime:J

    .line 89
    return-void
.end method
