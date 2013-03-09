.class public Lcom/scalado/caps/speedview/Animation;
.super Lcom/scalado/caps/PeerBase;
.source "Animation.java"


# instance fields
.field private frameIndex:F

.field private screen:Lcom/scalado/caps/screen/Screen;

.field private zoom:F


# direct methods
.method public constructor <init>(Lcom/scalado/caps/screen/Screen;)V
    .locals 2
    .parameter "screen"

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    .line 16
    iput v1, p0, Lcom/scalado/caps/speedview/Animation;->zoom:F

    .line 17
    iput v1, p0, Lcom/scalado/caps/speedview/Animation;->frameIndex:F

    .line 26
    if-nez p1, :cond_0

    .line 27
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 29
    :cond_0
    iput-object p1, p0, Lcom/scalado/caps/speedview/Animation;->screen:Lcom/scalado/caps/screen/Screen;

    .line 30
    iget-object v1, p0, Lcom/scalado/caps/speedview/Animation;->screen:Lcom/scalado/caps/screen/Screen;

    invoke-direct {p0, v1}, Lcom/scalado/caps/speedview/Animation;->nativeCreateAnimation(Lcom/scalado/caps/screen/Screen;)I

    move-result v0

    .line 31
    .local v0, error:I
    return-void
.end method

.method private native nativeBeginPan(Lcom/scalado/base/Point;)I
.end method

.method private native nativeBeginZoom(FLcom/scalado/base/Point;)I
.end method

.method private native nativeCreateAnimation(Lcom/scalado/caps/screen/Screen;)I
.end method

.method private native nativeEndAnimation()I
.end method

.method private native nativeExtendZoom(F)I
.end method

.method private native nativeGetEndPoint(Lcom/scalado/base/Point;)I
.end method

.method private native nativeGetFrameIndex(F)I
.end method

.method private native nativeGetZoomPoint(FLcom/scalado/base/Point;)I
.end method

.method private native nativeUpdateScreen(FF)I
.end method


# virtual methods
.method public beginPan(Lcom/scalado/base/Point;)V
    .locals 1
    .parameter "stopPoint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/scalado/caps/speedview/Animation;->nativeBeginPan(Lcom/scalado/base/Point;)I

    move-result v0

    .line 41
    .local v0, error:I
    return-void
.end method

.method public beginZoom(FLcom/scalado/base/Point;)V
    .locals 1
    .parameter "zoom"
    .parameter "targetPoint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/speedview/Animation;->nativeBeginZoom(FLcom/scalado/base/Point;)I

    move-result v0

    .line 57
    .local v0, error:I
    return-void
.end method

.method public endAnimation()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/scalado/caps/speedview/Animation;->nativeEndAnimation()I

    move-result v0

    .line 89
    .local v0, error:I
    return-void
.end method

.method public extendZoom(F)V
    .locals 1
    .parameter "newZoomStop"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/scalado/caps/speedview/Animation;->nativeExtendZoom(F)I

    move-result v0

    .line 100
    .local v0, error:I
    return-void
.end method

.method public getEndPan()Lcom/scalado/base/Point;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    .line 153
    .local v0, endPoint:Lcom/scalado/base/Point;
    invoke-direct {p0, v0}, Lcom/scalado/caps/speedview/Animation;->nativeGetEndPoint(Lcom/scalado/base/Point;)I

    move-result v1

    .line 154
    .local v1, error:I
    return-object v0
.end method

.method public getEndZoom()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    .line 141
    .local v0, endPoint:Lcom/scalado/base/Point;
    invoke-direct {p0, v0}, Lcom/scalado/caps/speedview/Animation;->nativeGetEndPoint(Lcom/scalado/base/Point;)I

    move-result v1

    .line 142
    .local v1, error:I
    iget v2, p0, Lcom/scalado/caps/speedview/Animation;->zoom:F

    return v2
.end method

.method public getFrameIndex(F)F
    .locals 2
    .parameter "zoom"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/scalado/caps/speedview/Animation;->nativeGetFrameIndex(F)I

    move-result v0

    .line 168
    .local v0, error:I
    iget v1, p0, Lcom/scalado/caps/speedview/Animation;->frameIndex:F

    return v1
.end method

.method public getPan(F)Lcom/scalado/base/Point;
    .locals 2
    .parameter "frameIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v1, Lcom/scalado/base/Point;

    invoke-direct {v1}, Lcom/scalado/base/Point;-><init>()V

    .line 129
    .local v1, midPoint:Lcom/scalado/base/Point;
    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/speedview/Animation;->nativeGetZoomPoint(FLcom/scalado/base/Point;)I

    move-result v0

    .line 130
    .local v0, error:I
    return-object v1
.end method

.method public getZoom(F)F
    .locals 3
    .parameter "frameIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v1, Lcom/scalado/base/Point;

    invoke-direct {v1}, Lcom/scalado/base/Point;-><init>()V

    .line 114
    .local v1, midPoint:Lcom/scalado/base/Point;
    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/speedview/Animation;->nativeGetZoomPoint(FLcom/scalado/base/Point;)I

    move-result v0

    .line 115
    .local v0, error:I
    iget v2, p0, Lcom/scalado/caps/speedview/Animation;->zoom:F

    return v2
.end method

.method public updateScreen(FF)V
    .locals 1
    .parameter "frameIndex"
    .parameter "renderIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/speedview/Animation;->nativeUpdateScreen(FF)I

    move-result v0

    .line 77
    .local v0, error:I
    return-void
.end method
