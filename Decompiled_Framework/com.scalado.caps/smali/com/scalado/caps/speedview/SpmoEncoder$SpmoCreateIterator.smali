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

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;-><init>(Lcom/scalado/caps/speedview/SpmoEncoder$1;)V

    iput-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->srcStream:Lcom/scalado/stream/Stream;

    iput-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->spmo:Lcom/scalado/caps/speedview/Spmo;

    iput-boolean v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->isDone:Z

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/scalado/stream/Stream;->isWritable()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Destination stream not writable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/scalado/stream/Stream;->isWritable()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Destination stream not writable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->optimalDimensions:Lcom/scalado/base/Size;

    iput-object p3, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->dstSpmoStream:Lcom/scalado/stream/Stream;

    iput-object p2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->dstJpegStream:Lcom/scalado/stream/Stream;

    iput v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->mode:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->quality:I

    return-void
.end method

.method static synthetic access$100(Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->setMode(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->setQuality(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;)Lcom/scalado/stream/Stream;
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->getJpegDestination()Lcom/scalado/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;)Lcom/scalado/stream/Stream;
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->getSpmoDestination()Lcom/scalado/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;Lcom/scalado/stream/Stream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->setJpegSource(Lcom/scalado/stream/Stream;)V

    return-void
.end method

.method private extractSpmo()V
    .locals 3

    new-instance v0, Lcom/scalado/caps/speedview/Spmo;

    invoke-direct {v0}, Lcom/scalado/caps/speedview/Spmo;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->spmo:Lcom/scalado/caps/speedview/Spmo;

    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->spmo:Lcom/scalado/caps/speedview/Spmo;

    invoke-direct {p0, v0}, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->nativeGetObject(Lcom/scalado/caps/speedview/Spmo;)V

    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->dstSpmoStream:Lcom/scalado/stream/Stream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->dstJpegStream:Lcom/scalado/stream/Stream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->spmo:Lcom/scalado/caps/speedview/Spmo;

    iget-object v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->dstSpmoStream:Lcom/scalado/stream/Stream;

    invoke-virtual {v0, v1}, Lcom/scalado/caps/speedview/Spmo;->copyToStream(Lcom/scalado/stream/Stream;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->dstSpmoStream:Lcom/scalado/stream/Stream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->spmo:Lcom/scalado/caps/speedview/Spmo;

    iget-object v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->dstSpmoStream:Lcom/scalado/stream/Stream;

    invoke-virtual {v0, v1}, Lcom/scalado/caps/speedview/Spmo;->copyToStream(Lcom/scalado/stream/Stream;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->spmo:Lcom/scalado/caps/speedview/Spmo;

    iget-object v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->srcStream:Lcom/scalado/stream/Stream;

    iget-object v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->dstJpegStream:Lcom/scalado/stream/Stream;

    invoke-virtual {v0, v1, v2}, Lcom/scalado/caps/speedview/Spmo;->addToStream(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;)V

    goto :goto_0
.end method

.method private getJpegDestination()Lcom/scalado/stream/Stream;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->dstJpegStream:Lcom/scalado/stream/Stream;

    return-object v0
.end method

.method private getSpmoDestination()Lcom/scalado/stream/Stream;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->dstSpmoStream:Lcom/scalado/stream/Stream;

    return-object v0
.end method

.method private native nativeBeginCreate(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;II)V
.end method

.method private native nativeGetObject(Lcom/scalado/caps/speedview/Spmo;)V
.end method

.method private setJpegSource(Lcom/scalado/stream/Stream;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->srcStream:Lcom/scalado/stream/Stream;

    return-void
.end method

.method private setMode(I)V
    .locals 0

    iput p1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->mode:I

    return-void
.end method

.method private setQuality(I)V
    .locals 0

    iput p1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->quality:I

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    invoke-virtual {v0}, Lcom/scalado/base/Iterator$CommonIterator;->abort()V

    return-void
.end method

.method protected begin()V
    .locals 4

    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->srcStream:Lcom/scalado/stream/Stream;

    iget-object v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->optimalDimensions:Lcom/scalado/base/Size;

    iget v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->mode:I

    iget v3, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->quality:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->nativeBeginCreate(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;II)V

    new-instance v0, Lcom/scalado/base/Iterator$CommonIterator;

    invoke-direct {v0, p0, p0}, Lcom/scalado/base/Iterator$CommonIterator;-><init>(Lcom/scalado/base/Iterator;Lcom/scalado/base/Iterator;)V

    iput-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    return-void
.end method

.method public done()Z
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->isDone:Z

    return v0
.end method

.method protected getDestinationStream()Lcom/scalado/stream/Stream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->spmo:Lcom/scalado/caps/speedview/Spmo;

    return-object v0
.end method

.method protected onSuccessorComplete()V
    .locals 0

    return-void
.end method

.method protected setSource(Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;->source:Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;

    invoke-virtual {p1}, Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;->getDestinationStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->setSourceStream(Lcom/scalado/stream/Stream;)V

    return-void
.end method

.method protected setSourceStream(Lcom/scalado/stream/Stream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v3, p1, Lcom/scalado/stream/FileStream;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/scalado/stream/FileStream;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/scalado/stream/FileStream;->isReadable()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/scalado/stream/FileStream;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/scalado/stream/FileStream;->close()V

    new-instance p1, Lcom/scalado/stream/FileStream;

    sget-object v3, Lcom/scalado/stream/FileStream$Access;->READ:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {p1, v1, v3}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V

    :cond_0
    iput-object p1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->srcStream:Lcom/scalado/stream/Stream;

    return-void
.end method

.method public step()F
    .locals 2

    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    invoke-virtual {v0}, Lcom/scalado/base/Iterator$CommonIterator;->done()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->extractSpmo()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoCreateIterator;->isDone:Z

    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;->source:Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;->source:Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;

    invoke-virtual {v0}, Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;->onSuccessorComplete()V

    :cond_0
    const/high16 v0, 0x3f80

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
