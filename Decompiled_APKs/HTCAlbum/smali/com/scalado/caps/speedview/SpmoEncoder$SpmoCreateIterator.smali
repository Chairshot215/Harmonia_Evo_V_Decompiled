.class Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;
.super Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;
.source "SpmoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/speedview/SpmoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpmoCreateIterator"
.end annotation


# instance fields
.field private commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

.field private dstJpegStream:Lcom/scalado/stream/Stream;

.field private dstSpmoStream:Lcom/scalado/stream/Stream;

.field private isDone:Z

.field private mode:I

.field private optimalDimensions:Lcom/scalado/base/Size;

.field private quality:I

.field private spmo:Lcom/scalado/caps/speedview/Spmo;

.field private srcStream:Lcom/scalado/stream/Stream;


# direct methods
.method constructor <init>(Lcom/scalado/base/Size;Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;)V
    .locals 2
    .parameter "optimalDimensions"
    .parameter "dstJpegStream"
    .parameter "dstSpmoStream"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 265
    invoke-direct {p0, v0}, Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;-><init>(Lcom/scalado/caps/speedview/SpmoEncoder$1;)V

    .line 254
    iput-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->srcStream:Lcom/scalado/stream/Stream;

    .line 258
    iput-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->spmo:Lcom/scalado/caps/speedview/Spmo;

    .line 260
    iput-boolean v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->isDone:Z

    .line 266
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 267
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 269
    :cond_0
    if-nez p1, :cond_1

    .line 270
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 272
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/scalado/stream/Stream;->isWritable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Destination stream not writable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/scalado/stream/Stream;->isWritable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 277
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Destination stream not writable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_3
    iput-object p1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->optimalDimensions:Lcom/scalado/base/Size;

    .line 281
    iput-object p3, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->dstSpmoStream:Lcom/scalado/stream/Stream;

    .line 282
    iput-object p2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->dstJpegStream:Lcom/scalado/stream/Stream;

    .line 283
    iput v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->mode:I

    .line 284
    const/4 v0, 0x5

    iput v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->quality:I

    .line 285
    return-void
.end method

.method static synthetic access$100(Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->setMode(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->setQuality(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;)Lcom/scalado/stream/Stream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->getJpegDestination()Lcom/scalado/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;)Lcom/scalado/stream/Stream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->getSpmoDestination()Lcom/scalado/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;Lcom/scalado/stream/Stream;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->setJpegSource(Lcom/scalado/stream/Stream;)V

    return-void
.end method

.method private extractSpmo()V
    .locals 3

    .prologue
    .line 365
    new-instance v0, Lcom/scalado/caps/speedview/Spmo;

    invoke-direct {v0}, Lcom/scalado/caps/speedview/Spmo;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->spmo:Lcom/scalado/caps/speedview/Spmo;

    .line 366
    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->spmo:Lcom/scalado/caps/speedview/Spmo;

    invoke-direct {p0, v0}, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->nativeGetObject(Lcom/scalado/caps/speedview/Spmo;)V

    .line 367
    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->dstSpmoStream:Lcom/scalado/stream/Stream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->dstJpegStream:Lcom/scalado/stream/Stream;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->spmo:Lcom/scalado/caps/speedview/Spmo;

    iget-object v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->dstSpmoStream:Lcom/scalado/stream/Stream;

    invoke-virtual {v0, v1}, Lcom/scalado/caps/speedview/Spmo;->copyToStream(Lcom/scalado/stream/Stream;)V

    .line 374
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->dstSpmoStream:Lcom/scalado/stream/Stream;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->spmo:Lcom/scalado/caps/speedview/Spmo;

    iget-object v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->dstSpmoStream:Lcom/scalado/stream/Stream;

    invoke-virtual {v0, v1}, Lcom/scalado/caps/speedview/Spmo;->copyToStream(Lcom/scalado/stream/Stream;)V

    goto :goto_0

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->spmo:Lcom/scalado/caps/speedview/Spmo;

    iget-object v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->srcStream:Lcom/scalado/stream/Stream;

    iget-object v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->dstJpegStream:Lcom/scalado/stream/Stream;

    invoke-virtual {v0, v1, v2}, Lcom/scalado/caps/speedview/Spmo;->addToStream(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;)V

    goto :goto_0
.end method

.method private getJpegDestination()Lcom/scalado/stream/Stream;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->dstJpegStream:Lcom/scalado/stream/Stream;

    return-object v0
.end method

.method private getSpmoDestination()Lcom/scalado/stream/Stream;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->dstSpmoStream:Lcom/scalado/stream/Stream;

    return-object v0
.end method

.method private native nativeBeginCreate(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;II)V
.end method

.method private native nativeGetObject(Lcom/scalado/caps/speedview/Spmo;)V
.end method

.method private setJpegSource(Lcom/scalado/stream/Stream;)V
    .locals 0
    .parameter "srcStream"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->srcStream:Lcom/scalado/stream/Stream;

    .line 305
    return-void
.end method

.method private setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 288
    iput p1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->mode:I

    .line 289
    return-void
.end method

.method private setQuality(I)V
    .locals 0
    .parameter "quality"

    .prologue
    .line 292
    iput p1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->quality:I

    .line 293
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    invoke-virtual {v0}, Lcom/scalado/base/Iterator$CommonIterator;->abort()V

    .line 357
    return-void
.end method

.method protected begin()V
    .locals 4

    .prologue
    .line 308
    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->srcStream:Lcom/scalado/stream/Stream;

    iget-object v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->optimalDimensions:Lcom/scalado/base/Size;

    iget v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->mode:I

    iget v3, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->quality:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->nativeBeginCreate(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;II)V

    .line 310
    new-instance v0, Lcom/scalado/base/Iterator$CommonIterator;

    invoke-direct {v0, p0, p0}, Lcom/scalado/base/Iterator$CommonIterator;-><init>(Lcom/scalado/base/Iterator;Lcom/scalado/base/Iterator;)V

    iput-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    .line 311
    return-void
.end method

.method public done()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->isDone:Z

    return v0
.end method

.method protected getDestinationStream()Lcom/scalado/stream/Stream;
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->spmo:Lcom/scalado/caps/speedview/Spmo;

    return-object v0
.end method

.method protected onSuccessorComplete()V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method protected setSource(Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;)V
    .locals 1
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    iput-object p1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;->source:Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;

    .line 327
    invoke-virtual {p1}, Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;->getDestinationStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->setSourceStream(Lcom/scalado/stream/Stream;)V

    .line 328
    return-void
.end method

.method protected setSourceStream(Lcom/scalado/stream/Stream;)V
    .locals 3
    .parameter "srcStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    instance-of v2, p1, Lcom/scalado/stream/FileStream;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 315
    check-cast v1, Lcom/scalado/stream/FileStream;

    .line 316
    .local v1, srcFileStream:Lcom/scalado/stream/FileStream;
    invoke-virtual {v1}, Lcom/scalado/stream/FileStream;->isReadable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 317
    invoke-virtual {v1}, Lcom/scalado/stream/FileStream;->getFilename()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, filename:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/scalado/stream/FileStream;->close()V

    .line 319
    new-instance p1, Lcom/scalado/stream/FileStream;

    .end local p1
    sget-object v2, Lcom/scalado/stream/FileStream$Access;->READ:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {p1, v0, v2}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V

    .line 322
    .end local v0           #filename:Ljava/lang/String;
    .end local v1           #srcFileStream:Lcom/scalado/stream/FileStream;
    .restart local p1
    :cond_0
    iput-object p1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->srcStream:Lcom/scalado/stream/Stream;

    .line 323
    return-void
.end method

.method public step()F
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    invoke-virtual {v0}, Lcom/scalado/base/Iterator$CommonIterator;->done()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    invoke-direct {p0}, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->extractSpmo()V

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->isDone:Z

    .line 346
    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;->source:Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;->source:Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;

    invoke-virtual {v0}, Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;->onSuccessorComplete()V

    .line 349
    :cond_0
    const/high16 v0, 0x3f80

    .line 351
    :goto_0
    return v0

    :cond_1
    const v0, 0x3f666666

    iget-object v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    invoke-virtual {v1}, Lcom/scalado/base/Iterator$CommonIterator;->step()F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_0
.end method
