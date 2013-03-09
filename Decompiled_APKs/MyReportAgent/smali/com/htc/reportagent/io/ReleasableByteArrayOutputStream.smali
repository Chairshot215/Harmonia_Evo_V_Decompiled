.class public Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "ReleasableByteArrayOutputStream.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 15
    return-void
.end method


# virtual methods
.method public getInnerBuffer()Lcom/htc/reportagent/io/Buffer;
    .locals 6

    .prologue
    .line 18
    const/4 v1, 0x0

    .line 20
    .local v1, ret:Lcom/htc/reportagent/io/Buffer;
    :try_start_0
    new-instance v2, Lcom/htc/reportagent/io/Buffer;

    iget-object v3, p0, Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;->buf:[B

    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;->count:I

    invoke-direct {v2, v3, v4, v5}, Lcom/htc/reportagent/io/Buffer;-><init>([BII)V
    :try_end_0
    .catch Lcom/htc/reportagent/util/UReportException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #ret:Lcom/htc/reportagent/io/Buffer;
    .local v2, ret:Lcom/htc/reportagent/io/Buffer;
    move-object v1, v2

    .line 24
    .end local v2           #ret:Lcom/htc/reportagent/io/Buffer;
    .restart local v1       #ret:Lcom/htc/reportagent/io/Buffer;
    :goto_0
    return-object v1

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, e:Lcom/htc/reportagent/util/UReportException;
    invoke-virtual {v0}, Lcom/htc/reportagent/util/UReportException;->printStackTrace()V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;->buf:[B

    .line 29
    return-void
.end method
