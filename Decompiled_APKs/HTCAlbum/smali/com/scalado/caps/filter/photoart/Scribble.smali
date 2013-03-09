.class public final Lcom/scalado/caps/filter/photoart/Scribble;
.super Lcom/scalado/caps/Filter;
.source "Scribble.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/filter/photoart/Scribble$Shape;,
        Lcom/scalado/caps/filter/photoart/Scribble$Config;
    }
.end annotation


# instance fields
.field private angle:F

.field private color:Lcom/scalado/base/Color;

.field private config:Lcom/scalado/caps/filter/photoart/Scribble$Config;

.field private noMoreDrawing:Z

.field private position:Lcom/scalado/base/Point;

.field private scale:F

.field private size:Lcom/scalado/base/Size;


# direct methods
.method public constructor <init>(Lcom/scalado/caps/screen/Screen;Lcom/scalado/caps/filter/photoart/Scribble$Config;Lcom/scalado/base/Color;)V
    .locals 3
    .parameter "screen"
    .parameter "config"
    .parameter "color"

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-virtual {p1}, Lcom/scalado/caps/screen/Screen;->getSession()Lcom/scalado/caps/Session;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 73
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0, v1, v1}, Lcom/scalado/base/Point;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->position:Lcom/scalado/base/Point;

    .line 74
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->scale:F

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->angle:F

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->config:Lcom/scalado/caps/filter/photoart/Scribble$Config;

    .line 78
    iput-boolean v1, p0, Lcom/scalado/caps/filter/photoart/Scribble;->noMoreDrawing:Z

    .line 98
    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 101
    :cond_1
    #getter for: Lcom/scalado/caps/filter/photoart/Scribble$Config;->colormode:I
    invoke-static {p2}, Lcom/scalado/caps/filter/photoart/Scribble$Config;->access$000(Lcom/scalado/caps/filter/photoart/Scribble$Config;)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeBeginScribble(Lcom/scalado/caps/screen/Screen;ILcom/scalado/base/Color;)I

    .line 102
    iput-object p2, p0, Lcom/scalado/caps/filter/photoart/Scribble;->config:Lcom/scalado/caps/filter/photoart/Scribble$Config;

    .line 103
    iput-object p3, p0, Lcom/scalado/caps/filter/photoart/Scribble;->color:Lcom/scalado/base/Color;

    .line 104
    invoke-virtual {p1}, Lcom/scalado/caps/screen/Screen;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->size:Lcom/scalado/base/Size;

    .line 105
    new-instance v0, Lcom/scalado/base/Point;

    iget-object v1, p0, Lcom/scalado/caps/filter/photoart/Scribble;->size:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/scalado/caps/filter/photoart/Scribble;->size:Lcom/scalado/base/Size;

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Point;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->position:Lcom/scalado/base/Point;

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Scribble;->setHasActiveFilter(Z)V

    .line 108
    return-void
.end method

.method private native nativeApplyScribble(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Point;FF)I
.end method

.method private native nativeBeginScribble(Lcom/scalado/caps/screen/Screen;ILcom/scalado/base/Color;)I
.end method

.method private native nativeEndScribble()I
.end method

.method private native nativeEraseScribbleBuffer()I
.end method

.method private native nativeRemoveDotInScribble(Lcom/scalado/base/Point;II)I
.end method

.method private native nativeSetDotInScribble(Lcom/scalado/base/Point;II)I
.end method

.method private native nativeSetEllipseInScribble(Lcom/scalado/base/Point;Lcom/scalado/base/Size;IZ)I
.end method

.method private native nativeSetLineInScribble(Lcom/scalado/base/Point;Lcom/scalado/base/Point;II)I
.end method

.method private native nativeSetRectangleInScribble(Lcom/scalado/base/Point;Lcom/scalado/base/Size;IZ)I
.end method

.method private native nativeSetScribbleColor(Lcom/scalado/base/Color;)I
.end method

.method private native nativeSetScribbleOrientation(Lcom/scalado/base/Point;FF)I
.end method


# virtual methods
.method public addDot(Lcom/scalado/base/Point;ILcom/scalado/caps/filter/photoart/Scribble$Shape;)V
    .locals 2
    .parameter "coords"
    .parameter "radius"
    .parameter "shape"

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 288
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    iget-boolean v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->noMoreDrawing:Z

    if-eqz v0, :cond_1

    .line 292
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Drawing not allowed after setting position/scale/angle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_1
    invoke-virtual {p1}, Lcom/scalado/base/Point;->getX()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Lcom/scalado/base/Point;->getY()I

    move-result v0

    if-gez v0, :cond_3

    .line 296
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_3
    iget v0, p3, Lcom/scalado/caps/filter/photoart/Scribble$Shape;->value:I

    invoke-direct {p0, p1, p2, v0}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeSetDotInScribble(Lcom/scalado/base/Point;II)I

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 300
    return-void
.end method

.method public addEllipse(Lcom/scalado/base/Point;Lcom/scalado/base/Size;IZ)V
    .locals 2
    .parameter "upperLeft"
    .parameter "dimensions"
    .parameter "brushRadius"
    .parameter "filled"

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 371
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_0
    iget-boolean v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->noMoreDrawing:Z

    if-eqz v0, :cond_1

    .line 375
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Drawing not allowed after setting position/scale/angle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_1
    invoke-virtual {p1}, Lcom/scalado/base/Point;->getX()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Lcom/scalado/base/Point;->getY()I

    move-result v0

    if-gez v0, :cond_3

    .line 379
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeSetEllipseInScribble(Lcom/scalado/base/Point;Lcom/scalado/base/Size;IZ)I

    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 383
    return-void
.end method

.method public addLine(Lcom/scalado/base/Point;Lcom/scalado/base/Point;ILcom/scalado/caps/filter/photoart/Scribble$Shape;)V
    .locals 2
    .parameter "srcCoords"
    .parameter "dstCoords"
    .parameter "brushRadius"
    .parameter "shape"

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 321
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    iget-boolean v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->noMoreDrawing:Z

    if-eqz v0, :cond_1

    .line 325
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Drawing not allowed after setting position/scale/angle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_1
    invoke-virtual {p1}, Lcom/scalado/base/Point;->getX()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Lcom/scalado/base/Point;->getY()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p2}, Lcom/scalado/base/Point;->getX()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p2}, Lcom/scalado/base/Point;->getY()I

    move-result v0

    if-gez v0, :cond_3

    .line 331
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_3
    iget v0, p4, Lcom/scalado/caps/filter/photoart/Scribble$Shape;->value:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeSetLineInScribble(Lcom/scalado/base/Point;Lcom/scalado/base/Point;II)I

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 335
    return-void
.end method

.method public addRectangle(Lcom/scalado/base/Point;Lcom/scalado/base/Size;IZ)V
    .locals 2
    .parameter "upperLeft"
    .parameter "dimensions"
    .parameter "brushRadius"
    .parameter "filled"

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 347
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_0
    iget-boolean v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->noMoreDrawing:Z

    if-eqz v0, :cond_1

    .line 351
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Drawing not allowed after setting position/scale/angle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_1
    invoke-virtual {p1}, Lcom/scalado/base/Point;->getX()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Lcom/scalado/base/Point;->getY()I

    move-result v0

    if-gez v0, :cond_3

    .line 355
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeSetRectangleInScribble(Lcom/scalado/base/Point;Lcom/scalado/base/Size;IZ)I

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 359
    return-void
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->angle:F

    return v0
.end method

.method public getColor()Lcom/scalado/base/Color;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->color:Lcom/scalado/base/Color;

    return-object v0
.end method

.method public getDimensions()Lcom/scalado/base/Size;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->size:Lcom/scalado/base/Size;

    return-object v0
.end method

.method public getPosition()Lcom/scalado/base/Point;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->position:Lcom/scalado/base/Point;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->scale:F

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 4
    .parameter "decoder"

    .prologue
    .line 112
    iget-object v1, p0, Lcom/scalado/caps/filter/photoart/Scribble;->position:Lcom/scalado/base/Point;

    iget v2, p0, Lcom/scalado/caps/filter/photoart/Scribble;->scale:F

    iget v3, p0, Lcom/scalado/caps/filter/photoart/Scribble;->angle:F

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeApplyScribble(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Point;FF)I

    move-result v0

    .line 113
    .local v0, error:I
    return-void
.end method

.method protected internalCommit()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeEndScribble()I

    .line 119
    return-void
.end method

.method public removeDot(Lcom/scalado/base/Point;ILcom/scalado/caps/filter/photoart/Scribble$Shape;)V
    .locals 2
    .parameter "coords"
    .parameter "radius"
    .parameter "shape"

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 402
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_0
    iget-boolean v0, p0, Lcom/scalado/caps/filter/photoart/Scribble;->noMoreDrawing:Z

    if-eqz v0, :cond_1

    .line 406
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Drawing not allowed after setting position/scale/angle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_1
    invoke-virtual {p1}, Lcom/scalado/base/Point;->getX()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Lcom/scalado/base/Point;->getY()I

    move-result v0

    if-gez v0, :cond_3

    .line 410
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_3
    iget v0, p3, Lcom/scalado/caps/filter/photoart/Scribble$Shape;->value:I

    invoke-direct {p0, p1, p2, v0}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeRemoveDotInScribble(Lcom/scalado/base/Point;II)I

    .line 413
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeEraseScribbleBuffer()I

    .line 422
    return-void
.end method

.method public setAngle(F)V
    .locals 3
    .parameter "angle"

    .prologue
    .line 186
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    .line 187
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_0
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    if-nez v1, :cond_1

    .line 191
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Nothing drawn yet"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_1
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_2

    const/high16 v1, 0x43b4

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    .line 195
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal parameter"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_3
    iget-object v1, p0, Lcom/scalado/caps/filter/photoart/Scribble;->position:Lcom/scalado/base/Point;

    iget v2, p0, Lcom/scalado/caps/filter/photoart/Scribble;->scale:F

    invoke-direct {p0, v1, v2, p1}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeSetScribbleOrientation(Lcom/scalado/base/Point;FF)I

    move-result v0

    .line 198
    .local v0, error:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/filter/photoart/Scribble;->noMoreDrawing:Z

    .line 199
    iput p1, p0, Lcom/scalado/caps/filter/photoart/Scribble;->angle:F

    .line 200
    return-void
.end method

.method public setColor(Lcom/scalado/base/Color;)V
    .locals 3
    .parameter "color"

    .prologue
    .line 260
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    .line 261
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 263
    :cond_0
    iget-boolean v1, p0, Lcom/scalado/caps/filter/photoart/Scribble;->noMoreDrawing:Z

    if-eqz v1, :cond_1

    .line 265
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Drawing not allowed after setting position/scale/angle"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 267
    :cond_1
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeSetScribbleColor(Lcom/scalado/base/Color;)I

    move-result v0

    .line 268
    .local v0, error:I
    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/Scribble;->color:Lcom/scalado/base/Color;

    .line 269
    return-void
.end method

.method public setPosition(Lcom/scalado/base/Point;)V
    .locals 3
    .parameter "position"

    .prologue
    .line 134
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    .line 135
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_0
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    if-nez v1, :cond_1

    .line 139
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Nothing drawn yet"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_1
    iget v1, p0, Lcom/scalado/caps/filter/photoart/Scribble;->scale:F

    iget v2, p0, Lcom/scalado/caps/filter/photoart/Scribble;->angle:F

    invoke-direct {p0, p1, v1, v2}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeSetScribbleOrientation(Lcom/scalado/base/Point;FF)I

    move-result v0

    .line 142
    .local v0, error:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/filter/photoart/Scribble;->noMoreDrawing:Z

    .line 143
    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/Scribble;->position:Lcom/scalado/base/Point;

    .line 144
    return-void
.end method

.method public setScale(F)V
    .locals 3
    .parameter "scale"

    .prologue
    .line 158
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    .line 159
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_0
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    if-nez v1, :cond_1

    .line 163
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Nothing drawn yet"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_1
    const v1, 0x3a83126f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    .line 167
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal parameter"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/scalado/caps/filter/photoart/Scribble;->position:Lcom/scalado/base/Point;

    iget v2, p0, Lcom/scalado/caps/filter/photoart/Scribble;->angle:F

    invoke-direct {p0, v1, p1, v2}, Lcom/scalado/caps/filter/photoart/Scribble;->nativeSetScribbleOrientation(Lcom/scalado/base/Point;FF)I

    move-result v0

    .line 170
    .local v0, error:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/filter/photoart/Scribble;->noMoreDrawing:Z

    .line 171
    iput p1, p0, Lcom/scalado/caps/filter/photoart/Scribble;->scale:F

    .line 172
    return-void
.end method
