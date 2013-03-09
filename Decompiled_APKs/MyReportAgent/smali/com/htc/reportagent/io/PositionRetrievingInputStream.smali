.class public Lcom/htc/reportagent/io/PositionRetrievingInputStream;
.super Ljava/io/FilterInputStream;
.source "PositionRetrievingInputStream.java"


# instance fields
.field protected mPos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/htc/reportagent/io/PositionRetrievingInputStream;->mPos:I

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 19
    .local v0, res:I
    if-lez v0, :cond_0

    .line 20
    iget v1, p0, Lcom/htc/reportagent/io/PositionRetrievingInputStream;->mPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/htc/reportagent/io/PositionRetrievingInputStream;->mPos:I

    .line 21
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 26
    .local v0, res:I
    if-lez v0, :cond_0

    .line 27
    iget v1, p0, Lcom/htc/reportagent/io/PositionRetrievingInputStream;->mPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/htc/reportagent/io/PositionRetrievingInputStream;->mPos:I

    .line 28
    :cond_0
    return v0
.end method
