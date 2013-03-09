.class public Lcom/htc/util/mail/lib/org/apache/commons/io/CopyUtils;
.super Ljava/lang/Object;
.source "CopyUtils.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 197
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 198
    .local v1, count:I
    const/4 v2, 0x0

    .line 199
    .local v2, n:I
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v3, v2, :cond_0

    .line 200
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 201
    add-int/2addr v1, v2

    goto :goto_0

    .line 203
    :cond_0
    return v1
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 4
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    const/16 v3, 0x1000

    new-array v0, v3, [C

    .line 222
    .local v0, buffer:[C
    const/4 v1, 0x0

    .line 223
    .local v1, count:I
    const/4 v2, 0x0

    .line 224
    .local v2, n:I
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    if-eq v3, v2, :cond_0

    .line 225
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 226
    add-int/2addr v1, v2

    goto :goto_0

    .line 228
    :cond_0
    return v1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;)V
    .locals 1
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 248
    .local v0, in:Ljava/io/InputStreamReader;
    invoke-static {v0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/CopyUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 249
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .parameter "input"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 267
    .local v0, in:Ljava/io/InputStreamReader;
    invoke-static {v0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/CopyUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 268
    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 287
    .local v0, out:Ljava/io/OutputStreamWriter;
    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/CopyUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 290
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 291
    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 2
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 310
    .local v0, in:Ljava/io/StringReader;
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 311
    .local v1, out:Ljava/io/OutputStreamWriter;
    invoke-static {v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/CopyUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 314
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 315
    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 0
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public static copy([BLjava/io/OutputStream;)V
    .locals 0
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 139
    return-void
.end method

.method public static copy([BLjava/io/Writer;)V
    .locals 1
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 156
    .local v0, in:Ljava/io/ByteArrayInputStream;
    invoke-static {v0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/CopyUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    .line 157
    return-void
.end method

.method public static copy([BLjava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .parameter "input"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 176
    .local v0, in:Ljava/io/ByteArrayInputStream;
    invoke-static {v0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/CopyUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V

    .line 177
    return-void
.end method
