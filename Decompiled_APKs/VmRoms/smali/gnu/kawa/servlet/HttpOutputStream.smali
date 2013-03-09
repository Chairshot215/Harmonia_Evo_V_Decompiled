.class Lgnu/kawa/servlet/HttpOutputStream;
.super Ljava/io/OutputStream;
.source "ServletPrinter.java"


# instance fields
.field buffer:[B

.field context:Lgnu/kawa/servlet/HttpRequestContext;

.field count:I

.field out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lgnu/kawa/servlet/HttpRequestContext;I)V
    .locals 1
    .parameter "context"
    .parameter "bufSize"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 80
    iput-object p1, p0, Lgnu/kawa/servlet/HttpOutputStream;->context:Lgnu/kawa/servlet/HttpRequestContext;

    .line 81
    new-array v0, p2, [B

    iput-object v0, p0, Lgnu/kawa/servlet/HttpOutputStream;->buffer:[B

    .line 82
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lgnu/kawa/servlet/HttpOutputStream;->out:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 149
    iget v0, p0, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    invoke-virtual {p0, v0}, Lgnu/kawa/servlet/HttpOutputStream;->maybeSendResponseHeaders(I)V

    .line 150
    iget-object v0, p0, Lgnu/kawa/servlet/HttpOutputStream;->context:Lgnu/kawa/servlet/HttpRequestContext;

    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getResponseStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/servlet/HttpOutputStream;->out:Ljava/io/OutputStream;

    .line 152
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/servlet/HttpOutputStream;->flush()V

    .line 153
    iget-object v0, p0, Lgnu/kawa/servlet/HttpOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 154
    return-void
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Lgnu/kawa/servlet/HttpOutputStream;->out:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 123
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lgnu/kawa/servlet/HttpOutputStream;->maybeSendResponseHeaders(I)V

    .line 124
    iget-object v0, p0, Lgnu/kawa/servlet/HttpOutputStream;->context:Lgnu/kawa/servlet/HttpRequestContext;

    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getResponseStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/servlet/HttpOutputStream;->out:Ljava/io/OutputStream;

    .line 126
    :cond_0
    iget v0, p0, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    if-lez v0, :cond_1

    .line 128
    iget-object v0, p0, Lgnu/kawa/servlet/HttpOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lgnu/kawa/servlet/HttpOutputStream;->buffer:[B

    iget v2, p0, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 129
    iput v3, p0, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    .line 131
    :cond_1
    return-void
.end method

.method maybeSendResponseHeaders(I)V
    .locals 6
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, -0x3e7

    .line 136
    iget-object v1, p0, Lgnu/kawa/servlet/HttpOutputStream;->context:Lgnu/kawa/servlet/HttpRequestContext;

    iget v0, v1, Lgnu/kawa/servlet/HttpRequestContext;->statusCode:I

    .line 137
    .local v0, statusCode:I
    if-eq v0, v5, :cond_0

    .line 139
    iget-object v1, p0, Lgnu/kawa/servlet/HttpOutputStream;->context:Lgnu/kawa/servlet/HttpRequestContext;

    iget-object v2, p0, Lgnu/kawa/servlet/HttpOutputStream;->context:Lgnu/kawa/servlet/HttpRequestContext;

    iget-object v2, v2, Lgnu/kawa/servlet/HttpRequestContext;->statusReasonPhrase:Ljava/lang/String;

    int-to-long v3, p1

    invoke-virtual {v1, v0, v2, v3, v4}, Lgnu/kawa/servlet/HttpRequestContext;->sendResponseHeaders(ILjava/lang/String;J)V

    .line 140
    iget-object v1, p0, Lgnu/kawa/servlet/HttpOutputStream;->context:Lgnu/kawa/servlet/HttpRequestContext;

    iput v5, v1, Lgnu/kawa/servlet/HttpRequestContext;->statusCode:I

    .line 142
    :cond_0
    return-void
.end method

.method public reset()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    iput v1, p0, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    .line 115
    iget-object v0, p0, Lgnu/kawa/servlet/HttpOutputStream;->out:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget v0, p0, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    iget-object v1, p0, Lgnu/kawa/servlet/HttpOutputStream;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lgnu/kawa/servlet/HttpOutputStream;->flush()V

    .line 89
    :cond_0
    iget-object v0, p0, Lgnu/kawa/servlet/HttpOutputStream;->buffer:[B

    iget v1, p0, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 90
    return-void
.end method

.method public write([BII)V
    .locals 3
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v1, p0, Lgnu/kawa/servlet/HttpOutputStream;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    sub-int v0, v1, v2

    .line 96
    .local v0, avail:I
    :goto_0
    if-le p3, v0, :cond_0

    .line 98
    iget-object v1, p0, Lgnu/kawa/servlet/HttpOutputStream;->buffer:[B

    iget v2, p0, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iget v1, p0, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    .line 100
    invoke-virtual {p0}, Lgnu/kawa/servlet/HttpOutputStream;->flush()V

    .line 101
    add-int/2addr p2, v0

    .line 102
    sub-int/2addr p3, v0

    .line 103
    iget-object v1, p0, Lgnu/kawa/servlet/HttpOutputStream;->buffer:[B

    array-length v0, v1

    goto :goto_0

    .line 105
    :cond_0
    if-lez p3, :cond_1

    .line 107
    iget-object v1, p0, Lgnu/kawa/servlet/HttpOutputStream;->buffer:[B

    iget v2, p0, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    iget v1, p0, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    add-int/2addr v1, p3

    iput v1, p0, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    .line 110
    :cond_1
    return-void
.end method
