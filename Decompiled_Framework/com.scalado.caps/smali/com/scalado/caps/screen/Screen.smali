.class public Lcom/scalado/caps/screen/Screen;
.super Lcom/scalado/caps/PeerBase;
.source "Screen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/screen/Screen$1;,
        Lcom/scalado/caps/screen/Screen$ScreenRenderIterator;,
        Lcom/scalado/caps/screen/Screen$ScreenState;,
        Lcom/scalado/caps/screen/Screen$ScreenSourceEntryListener;,
        Lcom/scalado/caps/screen/Screen$RenderMode;
    }
.end annotation


# instance fields
.field private error:I

.field private image:Lcom/scalado/base/Image;

.field private isPanCacheEnabled:Z

.field private panX:F

.field private panY:F

.field private rotation:I

.field private session:Lcom/scalado/caps/Session;

.field private state:Lcom/scalado/caps/screen/Screen$ScreenState;

.field private zoom:F


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    new-instance v0, Lcom/scalado/caps/screen/Screen$ScreenState;

    invoke-direct {v0, p0, v3}, Lcom/scalado/caps/screen/Screen$ScreenState;-><init>(Lcom/scalado/caps/screen/Screen;Lcom/scalado/caps/screen/Screen$1;)V

    iput-object v0, p0, Lcom/scalado/caps/screen/Screen;->state:Lcom/scalado/caps/screen/Screen$ScreenState;

    iput v2, p0, Lcom/scalado/caps/screen/Screen;->error:I

    sget-object v0, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    invoke-virtual {v0}, Lcom/scalado/caps/Rotation;->getValue()I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->rotation:I

    iput-boolean v2, p0, Lcom/scalado/caps/screen/Screen;->isPanCacheEnabled:Z

    iput v1, p0, Lcom/scalado/caps/screen/Screen;->zoom:F

    iput v1, p0, Lcom/scalado/caps/screen/Screen;->panX:F

    iput v1, p0, Lcom/scalado/caps/screen/Screen;->panY:F

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iput-object p2, p0, Lcom/scalado/caps/screen/Screen;->image:Lcom/scalado/base/Image;

    iput-object p1, p0, Lcom/scalado/caps/screen/Screen;->session:Lcom/scalado/caps/Session;

    new-instance v0, Lcom/scalado/caps/screen/Screen$ScreenSourceEntryListener;

    invoke-direct {v0, p0, p0}, Lcom/scalado/caps/screen/Screen$ScreenSourceEntryListener;-><init>(Lcom/scalado/caps/screen/Screen;Lcom/scalado/caps/screen/Screen;)V

    invoke-virtual {p1, v0}, Lcom/scalado/caps/Session;->addListener(Lcom/scalado/caps/SessionListener;)V

    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/scalado/caps/screen/Screen;->internalCreate(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method static synthetic access$000(Lcom/scalado/caps/screen/Screen;Lcom/scalado/caps/Decoder;Lcom/scalado/caps/Decoder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/screen/Screen;->internalCreate(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method private internalCreate(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/Decoder;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->state:Lcom/scalado/caps/screen/Screen$ScreenState;

    invoke-virtual {v0, p0}, Lcom/scalado/caps/screen/Screen$ScreenState;->save(Lcom/scalado/caps/screen/Screen;)V

    invoke-direct {p0}, Lcom/scalado/caps/screen/Screen;->nativeDestroyCapsScreen()I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->image:Lcom/scalado/base/Image;

    invoke-direct {p0, p2, v0}, Lcom/scalado/caps/screen/Screen;->nativeCreateCapsScreen(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Image;)I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->state:Lcom/scalado/caps/screen/Screen$ScreenState;

    invoke-virtual {v0, p0}, Lcom/scalado/caps/screen/Screen$ScreenState;->load(Lcom/scalado/caps/screen/Screen;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->image:Lcom/scalado/base/Image;

    invoke-direct {p0, p2, v0}, Lcom/scalado/caps/screen/Screen;->nativeCreateCapsScreen(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Image;)I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    goto :goto_0
.end method

.method private native nativeCreateCapsScreen(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Image;)I
.end method

.method private native nativeDestroyCapsScreen()I
.end method

.method private native nativeGetCanvas(Lcom/scalado/base/Rect;)I
.end method

.method private native nativeGetPan()I
.end method

.method private native nativeGetPoint(Lcom/scalado/base/Point;)I
.end method

.method private native nativeGetRotation()I
.end method

.method private native nativeGetZoom()I
.end method

.method private native nativeIsPanCacheEnabled()I
.end method

.method private native nativeRenderScreen()I
.end method

.method private native nativeSetDitheringEnabled(Z)I
.end method

.method private native nativeSetPan(FF)I
.end method

.method private native nativeSetPanCacheEnabled(Z)I
.end method

.method private native nativeSetRenderMode(I)I
.end method

.method private native nativeSetRotation(I)I
.end method

.method private native nativeSetSharpness(I)I
.end method

.method private native nativeSetZoom(F)I
.end method

.method private native nativeSetZoomPoint(FLcom/scalado/base/Point;)I
.end method

.method private native nativeSetZoomRect(Lcom/scalado/base/Rect;)I
.end method

.method private native nativeTransformFromSessionViewport(Lcom/scalado/base/Point;Lcom/scalado/base/Point;)I
.end method

.method private native nativeTransformToSessionViewport(Lcom/scalado/base/Point;Lcom/scalado/base/Point;)I
.end method


# virtual methods
.method public draw()V
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/screen/Screen;->nativeRenderScreen()I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    return-void
.end method

.method public getCanvas()Lcom/scalado/base/Rect;
    .locals 2

    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    invoke-direct {p0, v0}, Lcom/scalado/caps/screen/Screen;->nativeGetCanvas(Lcom/scalado/base/Rect;)I

    move-result v1

    iput v1, p0, Lcom/scalado/caps/screen/Screen;->error:I

    return-object v0
.end method

.method public getDimensions()Lcom/scalado/base/Size;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->image:Lcom/scalado/base/Image;

    invoke-virtual {v0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    return-object v0
.end method

.method public getImage()Lcom/scalado/base/Image;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->image:Lcom/scalado/base/Image;

    return-object v0
.end method

.method public getPanX()F
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/screen/Screen;->nativeGetPan()I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    iget v0, p0, Lcom/scalado/caps/screen/Screen;->panX:F

    return v0
.end method

.method public getPanY()F
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/screen/Screen;->nativeGetPan()I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    iget v0, p0, Lcom/scalado/caps/screen/Screen;->panY:F

    return v0
.end method

.method public getPoint()Lcom/scalado/base/Point;
    .locals 2

    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    invoke-direct {p0, v0}, Lcom/scalado/caps/screen/Screen;->nativeGetPoint(Lcom/scalado/base/Point;)I

    move-result v1

    iput v1, p0, Lcom/scalado/caps/screen/Screen;->error:I

    return-object v0
.end method

.method public getRotation()Lcom/scalado/caps/Rotation;
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/screen/Screen;->nativeGetRotation()I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    iget v0, p0, Lcom/scalado/caps/screen/Screen;->rotation:I

    invoke-static {v0}, Lcom/scalado/caps/Rotation;->getRotationFromValue(I)Lcom/scalado/caps/Rotation;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lcom/scalado/caps/Session;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->session:Lcom/scalado/caps/Session;

    return-object v0
.end method

.method public getZoom()F
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/screen/Screen;->nativeGetZoom()I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    iget v0, p0, Lcom/scalado/caps/screen/Screen;->zoom:F

    return v0
.end method

.method public isPanCacheEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/screen/Screen;->nativeIsPanCacheEnabled()I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    iget-boolean v0, p0, Lcom/scalado/caps/screen/Screen;->isPanCacheEnabled:Z

    return v0
.end method

.method public preview()Lcom/scalado/base/Iterator;
    .locals 1

    new-instance v0, Lcom/scalado/caps/screen/Screen$ScreenRenderIterator;

    invoke-direct {v0, p0, p0}, Lcom/scalado/caps/screen/Screen$ScreenRenderIterator;-><init>(Lcom/scalado/caps/screen/Screen;Lcom/scalado/caps/screen/Screen;)V

    return-object v0
.end method

.method public setDitheringEnabled(Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/caps/screen/Screen;->nativeSetDitheringEnabled(Z)I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->state:Lcom/scalado/caps/screen/Screen$ScreenState;

    invoke-virtual {v0, p1}, Lcom/scalado/caps/screen/Screen$ScreenState;->setDitheringEnabled(Z)V

    return-void
.end method

.method public setPan(FF)V
    .locals 3

    const/high16 v2, 0x3f80

    const/high16 v1, -0x4080

    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpl-float v0, p1, v2

    if-gtz v0, :cond_0

    cmpg-float v0, p2, v1

    if-ltz v0, :cond_0

    cmpl-float v0, p2, v2

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/screen/Screen;->nativeSetPan(FF)I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    return-void
.end method

.method public setPanCacheEnabled(Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/caps/screen/Screen;->nativeSetPanCacheEnabled(Z)I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->state:Lcom/scalado/caps/screen/Screen$ScreenState;

    invoke-virtual {v0, p1}, Lcom/scalado/caps/screen/Screen$ScreenState;->setPanCacheEnabled(Z)V

    return-void
.end method

.method public setRenderMode(Lcom/scalado/caps/screen/Screen$RenderMode;)V
    .locals 1

    iget v0, p1, Lcom/scalado/caps/screen/Screen$RenderMode;->value:I

    invoke-direct {p0, v0}, Lcom/scalado/caps/screen/Screen;->nativeSetRenderMode(I)I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    return-void
.end method

.method public setRotation(Lcom/scalado/caps/Rotation;)V
    .locals 1

    invoke-virtual {p1}, Lcom/scalado/caps/Rotation;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/screen/Screen;->nativeSetRotation(I)I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->state:Lcom/scalado/caps/screen/Screen$ScreenState;

    invoke-virtual {v0, p1}, Lcom/scalado/caps/screen/Screen$ScreenState;->setRotation(Lcom/scalado/caps/Rotation;)V

    return-void
.end method

.method public setSharpness(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    invoke-direct {p0, p1}, Lcom/scalado/caps/screen/Screen;->nativeSetSharpness(I)I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->state:Lcom/scalado/caps/screen/Screen$ScreenState;

    invoke-virtual {v0, p1}, Lcom/scalado/caps/screen/Screen$ScreenState;->setSharpness(I)V

    return-void
.end method

.method public setZoom(F)V
    .locals 1

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/screen/Screen;->nativeSetZoom(F)I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    return-void
.end method

.method public setZoomPoint(FLcom/scalado/base/Point;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/screen/Screen;->nativeSetZoomPoint(FLcom/scalado/base/Point;)I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    return-void
.end method

.method public setZoomRect(Lcom/scalado/base/Rect;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/screen/Screen;->nativeSetZoomRect(Lcom/scalado/base/Rect;)I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    return-void
.end method

.method public transformFromSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;
    .locals 2

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/scalado/caps/screen/Screen;->nativeTransformFromSessionViewport(Lcom/scalado/base/Point;Lcom/scalado/base/Point;)I

    move-result v1

    iput v1, p0, Lcom/scalado/caps/screen/Screen;->error:I

    return-object v0
.end method

.method public transformToSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;
    .locals 2

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/scalado/caps/screen/Screen;->nativeTransformToSessionViewport(Lcom/scalado/base/Point;Lcom/scalado/base/Point;)I

    move-result v1

    iput v1, p0, Lcom/scalado/caps/screen/Screen;->error:I

    return-object v0
.end method
