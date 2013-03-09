.class public Lcom/htc/reportagent/io/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# instance fields
.field protected mBuf:[B

.field protected mLength:I

.field protected mOffset:I


# direct methods
.method public constructor <init>([BII)V
    .locals 3
    .parameter "_buf"
    .parameter "_offset"
    .parameter "_length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/reportagent/util/UReportException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    if-nez p1, :cond_0

    .line 12
    new-instance v0, Lcom/htc/reportagent/util/UReportException;

    const-string v1, "_buf is null"

    invoke-direct {v0, v1}, Lcom/htc/reportagent/util/UReportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_0
    if-ltz p2, :cond_1

    array-length v0, p1

    if-lt p2, v0, :cond_2

    .line 14
    :cond_1
    new-instance v0, Lcom/htc/reportagent/util/UReportException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_buf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", _offset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/reportagent/util/UReportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_2
    if-ltz p3, :cond_3

    array-length v0, p1

    if-le p3, v0, :cond_4

    .line 16
    :cond_3
    new-instance v0, Lcom/htc/reportagent/util/UReportException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_buf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", _length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/reportagent/util/UReportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_4
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_5

    .line 18
    new-instance v0, Lcom/htc/reportagent/util/UReportException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[offset + length] _buf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", _length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/reportagent/util/UReportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_5
    iput-object p1, p0, Lcom/htc/reportagent/io/Buffer;->mBuf:[B

    .line 21
    iput p2, p0, Lcom/htc/reportagent/io/Buffer;->mOffset:I

    .line 22
    iput p3, p0, Lcom/htc/reportagent/io/Buffer;->mLength:I

    .line 23
    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/reportagent/io/Buffer;->mBuf:[B

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/reportagent/io/Buffer;->mLength:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/htc/reportagent/io/Buffer;->mOffset:I

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/reportagent/io/Buffer;->mBuf:[B

    .line 27
    iput v1, p0, Lcom/htc/reportagent/io/Buffer;->mOffset:I

    .line 28
    iput v1, p0, Lcom/htc/reportagent/io/Buffer;->mLength:I

    .line 29
    return-void
.end method
