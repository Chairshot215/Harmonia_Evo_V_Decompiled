.class public Lcom/scalado/caps/screen2/Viewport;
.super Lcom/scalado/caps/PeerBase;
.source "Viewport.java"


# instance fields
.field private nativeFloat:F


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/caps/screen2/Viewport;->nativeFloat:F

    return-void
.end method

.method public constructor <init>(Lcom/scalado/base/Size;Lcom/scalado/base/Size;)V
    .locals 3

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/scalado/caps/screen2/Viewport;->nativeFloat:F

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null is not a valid argument."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/screen2/Viewport;->nativeCreateCapsViewport(Lcom/scalado/base/Size;Lcom/scalado/base/Size;)I

    move-result v0

    return-void
.end method

.method private native nativeClearPivotPoint()I
.end method

.method private native nativeCreateCapsViewport(Lcom/scalado/base/Size;Lcom/scalado/base/Size;)I
.end method

.method private native nativeGetBestFitFactors(Lcom/scalado/caps/screen2/Viewport;)I
.end method

.method private native nativeGetOneToOneZoom()I
.end method

.method private native nativeGetPivotPoint(Lcom/scalado/base/Pointf;)I
.end method

.method private native nativeGetViewportRectangle(Lcom/scalado/base/Rectf;)I
.end method

.method private native nativeGetZoom()I
.end method

.method private native nativeGetZoomPoint(Lcom/scalado/base/Pointf;)I
.end method

.method private native nativeImageToTarget(Lcom/scalado/base/Pointf;Lcom/scalado/base/Pointf;)I
.end method

.method private native nativeModelMatrix([F)I
.end method

.method private native nativePan(Lcom/scalado/base/Pointf;)I
.end method

.method private native nativeSetFrom(Lcom/scalado/caps/screen2/Viewport;)I
.end method

.method private native nativeSetPivotPoint(Lcom/scalado/base/Pointf;)I
.end method

.method private native nativeSetRotation(F)I
.end method

.method private native nativeSetZoom(F)I
.end method

.method private native nativeSetZoomPoint(FLcom/scalado/base/Pointf;)I
.end method

.method private native nativeTargetToImage(Lcom/scalado/base/Pointf;Lcom/scalado/base/Pointf;)I
.end method


# virtual methods
.method public clearPivotPoint()V
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/screen2/Viewport;->nativeClearPivotPoint()I

    move-result v0

    return-void
.end method

.method public getBestFitFactors()Lcom/scalado/caps/screen2/Viewport;
    .locals 2

    new-instance v0, Lcom/scalado/caps/screen2/Viewport;

    invoke-direct {v0}, Lcom/scalado/caps/screen2/Viewport;-><init>()V

    invoke-direct {p0, v0}, Lcom/scalado/caps/screen2/Viewport;->nativeGetBestFitFactors(Lcom/scalado/caps/screen2/Viewport;)I

    move-result v1

    return-object v0
.end method

.method public getOneToOneZoom()F
    .locals 2

    invoke-direct {p0}, Lcom/scalado/caps/screen2/Viewport;->nativeGetOneToOneZoom()I

    move-result v0

    iget v1, p0, Lcom/scalado/caps/screen2/Viewport;->nativeFloat:F

    return v1
.end method

.method public getPivotPoint(Lcom/scalado/base/Pointf;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null is not a valid argument."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/screen2/Viewport;->nativeGetPivotPoint(Lcom/scalado/base/Pointf;)I

    move-result v0

    return-void
.end method

.method public getViewport()Lcom/scalado/base/Rectf;
    .locals 2

    new-instance v1, Lcom/scalado/base/Rectf;

    invoke-direct {v1}, Lcom/scalado/base/Rectf;-><init>()V

    invoke-direct {p0, v1}, Lcom/scalado/caps/screen2/Viewport;->nativeGetViewportRectangle(Lcom/scalado/base/Rectf;)I

    move-result v0

    return-object v1
.end method

.method public getZoom()F
    .locals 2

    invoke-direct {p0}, Lcom/scalado/caps/screen2/Viewport;->nativeGetZoom()I

    move-result v0

    iget v1, p0, Lcom/scalado/caps/screen2/Viewport;->nativeFloat:F

    return v1
.end method

.method public getZoomPoint(Lcom/scalado/base/Pointf;)F
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null is not a valid argument."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/screen2/Viewport;->nativeGetZoomPoint(Lcom/scalado/base/Pointf;)I

    move-result v0

    iget v1, p0, Lcom/scalado/caps/screen2/Viewport;->nativeFloat:F

    return v1
.end method

.method public imageToTarget(Lcom/scalado/base/Pointf;Lcom/scalado/base/Pointf;)V
    .locals 3

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null is not a valid argument."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/screen2/Viewport;->nativeImageToTarget(Lcom/scalado/base/Pointf;Lcom/scalado/base/Pointf;)I

    move-result v0

    return-void
.end method

.method public modelMatrix()[F
    .locals 3

    const/16 v2, 0x10

    new-array v1, v2, [F

    invoke-direct {p0, v1}, Lcom/scalado/caps/screen2/Viewport;->nativeModelMatrix([F)I

    move-result v0

    return-object v1
.end method

.method public pan(Lcom/scalado/base/Pointf;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null is not a valid argument."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/screen2/Viewport;->nativePan(Lcom/scalado/base/Pointf;)I

    move-result v0

    return-void
.end method

.method public setFrom(Lcom/scalado/caps/screen2/Viewport;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null is not a valid argument."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/screen2/Viewport;->nativeSetFrom(Lcom/scalado/caps/screen2/Viewport;)I

    move-result v0

    return-void
.end method

.method public setPivotPoint(Lcom/scalado/base/Pointf;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null is not a valid argument."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/screen2/Viewport;->nativeSetPivotPoint(Lcom/scalado/base/Pointf;)I

    move-result v0

    return-void
.end method

.method public setRotation(F)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/caps/screen2/Viewport;->nativeSetRotation(F)I

    move-result v0

    return-void
.end method

.method public setZoom(F)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/caps/screen2/Viewport;->nativeSetZoom(F)I

    move-result v0

    return-void
.end method

.method public setZoomPoint(FLcom/scalado/base/Pointf;)V
    .locals 3

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null is not a valid argument."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/screen2/Viewport;->nativeSetZoomPoint(FLcom/scalado/base/Pointf;)I

    move-result v0

    return-void
.end method

.method public targetToImage(Lcom/scalado/base/Pointf;Lcom/scalado/base/Pointf;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null is not a valid argument."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/screen2/Viewport;->nativeTargetToImage(Lcom/scalado/base/Pointf;Lcom/scalado/base/Pointf;)I

    move-result v0

    return-void
.end method
