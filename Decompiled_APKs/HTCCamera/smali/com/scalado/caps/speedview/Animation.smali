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

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    iput v1, p0, Lcom/scalado/caps/speedview/Animation;->zoom:F

    iput v1, p0, Lcom/scalado/caps/speedview/Animation;->frameIndex:F

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    iput-object p1, p0, Lcom/scalado/caps/speedview/Animation;->screen:Lcom/scalado/caps/screen/Screen;

    iget-object v1, p0, Lcom/scalado/caps/speedview/Animation;->screen:Lcom/scalado/caps/screen/Screen;

    invoke-direct {p0, v1}, Lcom/scalado/caps/speedview/Animation;->nativeCreateAnimation(Lcom/scalado/caps/screen/Screen;)I

    move-result v0

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/scalado/caps/speedview/Animation;->nativeBeginPan(Lcom/scalado/base/Point;)I

    move-result v0

    return-void
.end method

.method public beginZoom(FLcom/scalado/base/Point;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/speedview/Animation;->nativeBeginZoom(FLcom/scalado/base/Point;)I

    move-result v0

    return-void
.end method

.method public endAnimation()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/scalado/caps/speedview/Animation;->nativeEndAnimation()I

    move-result v0

    return-void
.end method

.method public extendZoom(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/scalado/caps/speedview/Animation;->nativeExtendZoom(F)I

    move-result v0

    return-void
.end method

.method public getEndPan()Lcom/scalado/base/Point;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    invoke-direct {p0, v0}, Lcom/scalado/caps/speedview/Animation;->nativeGetEndPoint(Lcom/scalado/base/Point;)I

    move-result v1

    return-object v0
.end method

.method public getEndZoom()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    invoke-direct {p0, v0}, Lcom/scalado/caps/speedview/Animation;->nativeGetEndPoint(Lcom/scalado/base/Point;)I

    move-result v1

    iget v2, p0, Lcom/scalado/caps/speedview/Animation;->zoom:F

    return v2
.end method

.method public getFrameIndex(F)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/scalado/caps/speedview/Animation;->nativeGetFrameIndex(F)I

    move-result v0

    iget v1, p0, Lcom/scalado/caps/speedview/Animation;->frameIndex:F

    return v1
.end method

.method public getPan(F)Lcom/scalado/base/Point;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v1, Lcom/scalado/base/Point;

    invoke-direct {v1}, Lcom/scalado/base/Point;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/speedview/Animation;->nativeGetZoomPoint(FLcom/scalado/base/Point;)I

    move-result v0

    return-object v1
.end method

.method public getZoom(F)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v1, Lcom/scalado/base/Point;

    invoke-direct {v1}, Lcom/scalado/base/Point;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/speedview/Animation;->nativeGetZoomPoint(FLcom/scalado/base/Point;)I

    move-result v0

    iget v2, p0, Lcom/scalado/caps/speedview/Animation;->zoom:F

    return v2
.end method

.method public updateScreen(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/speedview/Animation;->nativeUpdateScreen(FF)I

    move-result v0

    return-void
.end method
