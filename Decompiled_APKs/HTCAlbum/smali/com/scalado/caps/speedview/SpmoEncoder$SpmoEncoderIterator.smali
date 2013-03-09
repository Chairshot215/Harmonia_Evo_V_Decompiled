.class Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;
.super Lcom/scalado/base/Iterator;
.source "SpmoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/speedview/SpmoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpmoEncoderIterator"
.end annotation


# instance fields
.field protected index:I

.field protected isDone:Z

.field iterators:[Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;


# direct methods
.method protected constructor <init>([Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;)V
    .locals 1
    .parameter "iterators"

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/scalado/base/Iterator;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->isDone:Z

    .line 41
    iput v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->index:I

    .line 44
    iput-object p1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->iterators:[Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;

    .line 45
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->isDone:Z

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->iterators:[Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;

    iget v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;->abort()V

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public done()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->isDone:Z

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->isDone:Z

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 88
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initNextStep()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->index:I

    if-lez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->iterators:[Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;

    iget v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->index:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->iterators:[Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;

    iget v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->index:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;->setSource(Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->iterators:[Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;

    iget v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;->begin()V

    .line 98
    return-void
.end method

.method public step()F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 54
    iget-boolean v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->isDone:Z

    if-eqz v2, :cond_0

    .line 55
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 58
    :cond_0
    const/4 v0, 0x0

    .line 60
    .local v0, init:Z
    :goto_0
    iget v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->index:I

    iget-object v3, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->iterators:[Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->iterators:[Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;

    iget v3, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->index:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;->done()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    iget v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->index:I

    .line 62
    const/4 v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    iget v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->index:I

    iget-object v3, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->iterators:[Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;

    array-length v3, v3

    if-lt v2, v3, :cond_2

    .line 65
    iput-boolean v4, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->isDone:Z

    .line 66
    const/high16 v1, 0x3f80

    .line 73
    .local v1, progress:F
    :goto_1
    return v1

    .line 68
    .end local v1           #progress:F
    :cond_2
    if-eqz v0, :cond_3

    .line 69
    invoke-virtual {p0}, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->initNextStep()V

    .line 71
    :cond_3
    iget-object v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->iterators:[Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;

    iget v3, p0, Lcom/scalado/caps/speedview/SpmoEncoder$SpmoEncoderIterator;->index:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;->step(I)F

    move-result v1

    .restart local v1       #progress:F
    goto :goto_1
.end method
