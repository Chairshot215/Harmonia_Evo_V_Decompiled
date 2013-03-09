.class public Ljava/io/LineNumberInputStream;
.super Ljava/io/FilterInputStream;
.source "LineNumberInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private lastChar:I

.field private lineNumber:I

.field private markedLastChar:I

.field private markedLineNumber:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput v0, p0, Ljava/io/LineNumberInputStream;->markedLineNumber:I

    iput v0, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    iget v0, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLineNumber()I
    .locals 1

    iget v0, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    return v0
.end method

.method public mark(I)V
    .locals 1

    iget-object v0, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    iget v0, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    iput v0, p0, Ljava/io/LineNumberInputStream;->markedLineNumber:I

    iget v0, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    iput v0, p0, Ljava/io/LineNumberInputStream;->markedLastChar:I

    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, -0x1

    iget v0, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    if-ne v0, v3, :cond_0

    iget-object v1, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    return v0

    :cond_0
    iput v3, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xa

    iget-object v1, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    iget v1, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    iput v3, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    :cond_1
    :pswitch_2
    iget v1, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, -0x1

    array-length v4, p1

    invoke-static {v4, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_2

    :try_start_0
    invoke-virtual {p0}, Ljava/io/LineNumberInputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v3, :cond_1

    if-nez v2, :cond_0

    move v2, v3

    :cond_0
    :goto_1
    return v2

    :catch_0
    move-exception v1

    if-nez v2, :cond_0

    throw v1

    :cond_1
    add-int v4, p2, v2

    int-to-byte v5, v0

    aput-byte v5, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, p3

    goto :goto_1
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget v0, p0, Ljava/io/LineNumberInputStream;->markedLineNumber:I

    iput v0, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    iget v0, p0, Ljava/io/LineNumberInputStream;->markedLastChar:I

    iput v0, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    return-void
.end method

.method public setLineNumber(I)V
    .locals 0

    iput p1, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    return-void
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method
