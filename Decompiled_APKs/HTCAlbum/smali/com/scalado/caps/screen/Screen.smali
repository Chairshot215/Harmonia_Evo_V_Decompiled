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
    .parameter "session"
    .parameter "image"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 180
    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    .line 162
    new-instance v0, Lcom/scalado/caps/screen/Screen$ScreenState;

    invoke-direct {v0, p0, v3}, Lcom/scalado/caps/screen/Screen$ScreenState;-><init>(Lcom/scalado/caps/screen/Screen;Lcom/scalado/caps/screen/Screen$1;)V

    iput-object v0, p0, Lcom/scalado/caps/screen/Screen;->state:Lcom/scalado/caps/screen/Screen$ScreenState;

    .line 164
    iput v2, p0, Lcom/scalado/caps/screen/Screen;->error:I

    .line 165
    sget-object v0, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    invoke-virtual {v0}, Lcom/scalado/caps/Rotation;->getValue()I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->rotation:I

    .line 166
    iput-boolean v2, p0, Lcom/scalado/caps/screen/Screen;->isPanCacheEnabled:Z

    .line 167
    iput v1, p0, Lcom/scalado/caps/screen/Screen;->zoom:F

    .line 168
    iput v1, p0, Lcom/scalado/caps/screen/Screen;->panX:F

    .line 169
    iput v1, p0, Lcom/scalado/caps/screen/Screen;->panY:F

    .line 181
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 185
    :cond_1
    iput-object p2, p0, Lcom/scalado/caps/screen/Screen;->image:Lcom/scalado/base/Image;

    .line 186
    iput-object p1, p0, Lcom/scalado/caps/screen/Screen;->session:Lcom/scalado/caps/Session;

    .line 187
    new-instance v0, Lcom/scalado/caps/screen/Screen$ScreenSourceEntryListener;

    invoke-direct {v0, p0, p0}, Lcom/scalado/caps/screen/Screen$ScreenSourceEntryListener;-><init>(Lcom/scalado/caps/screen/Screen;Lcom/scalado/caps/screen/Screen;)V

    invoke-virtual {p1, v0}, Lcom/scalado/caps/Session;->addListener(Lcom/scalado/caps/SessionListener;)V

    .line 189
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/scalado/caps/screen/Screen;->internalCreate(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/Decoder;)V

    .line 190
    return-void
.end method

.method static synthetic access$000(Lcom/scalado/caps/screen/Screen;Lcom/scalado/caps/Decoder;Lcom/scalado/caps/Decoder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/screen/Screen;->internalCreate(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method private internalCreate(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/Decoder;)V
    .locals 1
    .parameter "oldDecoder"
    .parameter "newDecoder"

    .prologue
    .line 521
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    .line 522
    if-eqz p1, :cond_0

    .line 523
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->state:Lcom/scalado/caps/screen/Screen$ScreenState;

    invoke-virtual {v0, p0}, Lcom/scalado/caps/screen/Screen$ScreenState;->save(Lcom/scalado/caps/screen/Screen;)V

    .line 524
    invoke-direct {p0}, Lcom/scalado/caps/screen/Screen;->nativeDestroyCapsScreen()I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    .line 525
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->image:Lcom/scalado/base/Image;

    invoke-direct {p0, p2, v0}, Lcom/scalado/caps/screen/Screen;->nativeCreateCapsScreen(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Image;)I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    .line 526
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->state:Lcom/scalado/caps/screen/Screen$ScreenState;

    invoke-virtual {v0, p0}, Lcom/scalado/caps/screen/Screen$ScreenState;->load(Lcom/scalado/caps/screen/Screen;)V

    .line 530
    :goto_0
    return-void

    .line 528
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

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/scalado/caps/screen/Screen;->nativeRenderScreen()I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    .line 518
    return-void
.end method

.method public getCanvas()Lcom/scalado/base/Rect;
    .locals 2

    .prologue
    .line 498
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 499
    .local v0, rect:Lcom/scalado/base/Rect;
    invoke-direct {p0, v0}, Lcom/scalado/caps/screen/Screen;->nativeGetCanvas(Lcom/scalado/base/Rect;)I

    move-result v1

    iput v1, p0, Lcom/scalado/caps/screen/Screen;->error:I

    .line 500
    return-object v0
.end method

.method public getDimensions()Lcom/scalado/base/Size;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->image:Lcom/scalado/base/Image;

    invoke-virtual {v0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    return-object v0
.end method

.method public getImage()Lcom/scalado/base/Image;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->image:Lcom/scalado/base/Image;

    return-object v0
.end method

.method public getPanX()F
    .locals 1

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/scalado/caps/screen/Screen;->nativeGetPan()I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    .line 400
    iget v0, p0, Lcom/scalado/caps/screen/Screen;->panX:F

    return v0
.end method

.method public getPanY()F
    .locals 1

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/scalado/caps/screen/Screen;->nativeGetPan()I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    .line 412
    iget v0, p0, Lcom/scalado/caps/screen/Screen;->panY:F

    return v0
.end method

.method public getPoint()Lcom/scalado/base/Point;
    .locals 2

    .prologue
    .line 369
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    .line 370
    .local v0, point:Lcom/scalado/base/Point;
    invoke-direct {p0, v0}, Lcom/scalado/caps/screen/Screen;->nativeGetPoint(Lcom/scalado/base/Point;)I

    move-result v1

    iput v1, p0, Lcom/scalado/caps/screen/Screen;->error:I

    .line 371
    return-object v0
.end method

.method public getRotation()Lcom/scalado/caps/Rotation;
    .locals 1

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/scalado/caps/screen/Screen;->nativeGetRotation()I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    .line 280
    iget v0, p0, Lcom/scalado/caps/screen/Screen;->rotation:I

    invoke-static {v0}, Lcom/scalado/caps/Rotation;->getRotationFromValue(I)Lcom/scalado/caps/Rotation;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lcom/scalado/caps/Session;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->session:Lcom/scalado/caps/Session;

    return-object v0
.end method

.method public getZoom()F
    .locals 1

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/scalado/caps/screen/Screen;->nativeGetZoom()I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    .line 358
    iget v0, p0, Lcom/scalado/caps/screen/Screen;->zoom:F

    return v0
.end method

.method public isPanCacheEnabled()Z
    .locals 1

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/scalado/caps/screen/Screen;->nativeIsPanCacheEnabled()I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    .line 447
    iget-boolean v0, p0, Lcom/scalado/caps/screen/Screen;->isPanCacheEnabled:Z

    return v0
.end method

.method public preview()Lcom/scalado/base/Iterator;
    .locals 1

    .prologue
    .line 510
    new-instance v0, Lcom/scalado/caps/screen/Screen$ScreenRenderIterator;

    invoke-direct {v0, p0, p0}, Lcom/scalado/caps/screen/Screen$ScreenRenderIterator;-><init>(Lcom/scalado/caps/screen/Screen;Lcom/scalado/caps/screen/Screen;)V

    return-object v0
.end method

.method public setDitheringEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/scalado/caps/screen/Screen;->nativeSetDitheringEnabled(Z)I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    .line 254
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->state:Lcom/scalado/caps/screen/Screen$ScreenState;

    invoke-virtual {v0, p1}, Lcom/scalado/caps/screen/Screen$ScreenState;->setDitheringEnabled(Z)V

    .line 255
    return-void
.end method

.method public setPan(FF)V
    .locals 3
    .parameter "panX"
    .parameter "panY"

    .prologue
    const/high16 v2, 0x3f80

    const/high16 v1, -0x4080

    .line 384
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpl-float v0, p1, v2

    if-gtz v0, :cond_0

    cmpg-float v0, p2, v1

    if-ltz v0, :cond_0

    cmpl-float v0, p2, v2

    if-lez v0, :cond_1

    .line 386
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 388
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/screen/Screen;->nativeSetPan(FF)I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    .line 389
    return-void
.end method

.method public setPanCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lcom/scalado/caps/screen/Screen;->nativeSetPanCacheEnabled(Z)I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    .line 436
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->state:Lcom/scalado/caps/screen/Screen$ScreenState;

    invoke-virtual {v0, p1}, Lcom/scalado/caps/screen/Screen$ScreenState;->setPanCacheEnabled(Z)V

    .line 437
    return-void
.end method

.method public setRenderMode(Lcom/scalado/caps/screen/Screen$RenderMode;)V
    .locals 1
    .parameter "rendermode"

    .prologue
    .line 422
    iget v0, p1, Lcom/scalado/caps/screen/Screen$RenderMode;->value:I

    invoke-direct {p0, v0}, Lcom/scalado/caps/screen/Screen;->nativeSetRenderMode(I)I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    .line 423
    return-void
.end method

.method public setRotation(Lcom/scalado/caps/Rotation;)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 269
    invoke-virtual {p1}, Lcom/scalado/caps/Rotation;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/screen/Screen;->nativeSetRotation(I)I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    .line 270
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->state:Lcom/scalado/caps/screen/Screen$ScreenState;

    invoke-virtual {v0, p1}, Lcom/scalado/caps/screen/Screen$ScreenState;->setRotation(Lcom/scalado/caps/Rotation;)V

    .line 271
    return-void
.end method

.method public setSharpness(I)V
    .locals 1
    .parameter "level"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 231
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 236
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    .line 237
    invoke-direct {p0, p1}, Lcom/scalado/caps/screen/Screen;->nativeSetSharpness(I)I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    .line 238
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen;->state:Lcom/scalado/caps/screen/Screen$ScreenState;

    invoke-virtual {v0, p1}, Lcom/scalado/caps/screen/Screen$ScreenState;->setSharpness(I)V

    .line 240
    return-void
.end method

.method public setZoom(F)V
    .locals 1
    .parameter "zoom"

    .prologue
    .line 293
    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 298
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/screen/Screen;->nativeSetZoom(F)I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    .line 299
    return-void
.end method

.method public setZoomPoint(FLcom/scalado/base/Point;)V
    .locals 1
    .parameter "zoom"
    .parameter "midpoint"

    .prologue
    .line 316
    if-nez p2, :cond_0

    .line 318
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 320
    :cond_0
    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 325
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/screen/Screen;->nativeSetZoomPoint(FLcom/scalado/base/Point;)I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    .line 326
    return-void
.end method

.method public setZoomRect(Lcom/scalado/base/Rect;)V
    .locals 1
    .parameter "zoomRect"

    .prologue
    .line 343
    if-nez p1, :cond_0

    .line 345
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 348
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/screen/Screen;->nativeSetZoomRect(Lcom/scalado/base/Rect;)I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/screen/Screen;->error:I

    .line 349
    return-void
.end method

.method public transformFromSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;
    .locals 2
    .parameter "sessionCoordinates"

    .prologue
    .line 459
    if-nez p1, :cond_0

    .line 461
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 463
    :cond_0
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    .line 464
    .local v0, outPoint:Lcom/scalado/base/Point;
    invoke-direct {p0, v0, p1}, Lcom/scalado/caps/screen/Screen;->nativeTransformFromSessionViewport(Lcom/scalado/base/Point;Lcom/scalado/base/Point;)I

    move-result v1

    iput v1, p0, Lcom/scalado/caps/screen/Screen;->error:I

    .line 466
    return-object v0
.end method

.method public transformToSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;
    .locals 2
    .parameter "screenCoordinates"

    .prologue
    .line 478
    if-nez p1, :cond_0

    .line 480
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 482
    :cond_0
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    .line 483
    .local v0, outPoint:Lcom/scalado/base/Point;
    invoke-direct {p0, v0, p1}, Lcom/scalado/caps/screen/Screen;->nativeTransformToSessionViewport(Lcom/scalado/base/Point;Lcom/scalado/base/Point;)I

    move-result v1

    iput v1, p0, Lcom/scalado/caps/screen/Screen;->error:I

    .line 485
    return-object v0
.end method
