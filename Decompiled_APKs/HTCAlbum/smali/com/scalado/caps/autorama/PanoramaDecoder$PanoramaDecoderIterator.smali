.class Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;
.super Lcom/scalado/base/Iterator;
.source "PanoramaDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/autorama/PanoramaDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PanoramaDecoderIterator"
.end annotation


# instance fields
.field private decoder:Lcom/scalado/caps/autorama/PanoramaDecoder;

.field private isDone:Z

.field private stitcher:Lcom/scalado/caps/autorama/Stitcher;


# direct methods
.method constructor <init>(Lcom/scalado/caps/autorama/Stitcher;)V
    .locals 2
    .parameter "stitcher"

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Lcom/scalado/base/Iterator;-><init>()V

    .line 15
    iput-object v1, p0, Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;->decoder:Lcom/scalado/caps/autorama/PanoramaDecoder;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;->isDone:Z

    .line 20
    new-instance v0, Lcom/scalado/caps/autorama/PanoramaDecoder;

    invoke-direct {v0, v1}, Lcom/scalado/caps/autorama/PanoramaDecoder;-><init>(Lcom/scalado/caps/autorama/PanoramaDecoder$1;)V

    iput-object v0, p0, Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;->decoder:Lcom/scalado/caps/autorama/PanoramaDecoder;

    .line 21
    invoke-direct {p0, p1}, Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;->nativeBeginCreate(Lcom/scalado/caps/autorama/Stitcher;)V

    .line 22
    iput-object p1, p0, Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;->stitcher:Lcom/scalado/caps/autorama/Stitcher;

    .line 23
    return-void
.end method

.method private native nativeAbort()V
.end method

.method private native nativeBeginCreate(Lcom/scalado/caps/autorama/Stitcher;)V
.end method

.method private native nativeGetIterationCount()I
.end method

.method private native nativeGetTotalIterations()I
.end method

.method private native nativeStep(Lcom/scalado/caps/autorama/PanoramaDecoder;)Z
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;->isDone:Z

    if-nez v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;->nativeAbort()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;->isDone:Z

    .line 62
    :cond_0
    return-void
.end method

.method public done()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;->isDone:Z

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;->isDone:Z

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;->decoder:Lcom/scalado/caps/autorama/PanoramaDecoder;

    return-object v0
.end method

.method public step()F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/high16 v1, 0x3f80

    .line 32
    iget-boolean v2, p0, Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;->isDone:Z

    if-eqz v2, :cond_0

    .line 34
    new-instance v1, Ljava/lang/IllegalAccessException;

    invoke-direct {v1}, Ljava/lang/IllegalAccessException;-><init>()V

    throw v1

    .line 37
    :cond_0
    iget-object v2, p0, Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;->decoder:Lcom/scalado/caps/autorama/PanoramaDecoder;

    invoke-direct {p0, v2}, Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;->nativeStep(Lcom/scalado/caps/autorama/PanoramaDecoder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38
    iget-object v2, p0, Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;->decoder:Lcom/scalado/caps/autorama/PanoramaDecoder;

    iget-object v3, p0, Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;->stitcher:Lcom/scalado/caps/autorama/Stitcher;

    #setter for: Lcom/scalado/caps/autorama/PanoramaDecoder;->stitcher:Lcom/scalado/caps/autorama/Stitcher;
    invoke-static {v2, v3}, Lcom/scalado/caps/autorama/PanoramaDecoder;->access$102(Lcom/scalado/caps/autorama/PanoramaDecoder;Lcom/scalado/caps/autorama/Stitcher;)Lcom/scalado/caps/autorama/Stitcher;

    .line 39
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;->isDone:Z

    move v0, v1

    .line 54
    :cond_1
    :goto_0
    return v0

    .line 43
    :cond_2
    invoke-direct {p0}, Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;->nativeGetTotalIterations()I

    move-result v2

    if-gtz v2, :cond_3

    move v0, v1

    .line 44
    goto :goto_0

    .line 47
    :cond_3
    invoke-direct {p0}, Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;->nativeGetIterationCount()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;->nativeGetTotalIterations()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 50
    .local v0, progress:F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    move v0, v1

    .line 51
    goto :goto_0
.end method
