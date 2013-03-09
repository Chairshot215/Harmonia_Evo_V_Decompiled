.class public Lorg/jivesoftware/smack/util/Base64$OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputStream"
.end annotation


# instance fields
.field private b4:[B

.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private encode:Z

.field private lineLength:I

.field private position:I

.field private suspendEncoding:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 1272
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smack/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 1273
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 5
    .parameter "out"
    .parameter "options"

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1300
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1301
    and-int/lit8 v0, p2, 0x8

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->breakLines:Z

    .line 1302
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->encode:Z

    .line 1303
    iget-boolean v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->encode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_2
    iput v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->bufferLength:I

    .line 1304
    iget v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->buffer:[B

    .line 1305
    iput v2, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->position:I

    .line 1306
    iput v2, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->lineLength:I

    .line 1307
    iput-boolean v2, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->suspendEncoding:Z

    .line 1308
    new-array v0, v3, [B

    iput-object v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->b4:[B

    .line 1309
    return-void

    :cond_0
    move v0, v2

    .line 1301
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1302
    goto :goto_1

    :cond_2
    move v0, v3

    .line 1303
    goto :goto_2
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
    const/4 v0, 0x0

    .line 1416
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->flushBase64()V

    .line 1420
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 1422
    iput-object v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->buffer:[B

    .line 1423
    iput-object v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    .line 1424
    return-void
.end method

.method public flushBase64()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1396
    iget v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->position:I

    if-lez v0, :cond_0

    .line 1397
    iget-boolean v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->encode:Z

    if-eqz v0, :cond_1

    .line 1398
    iget-object v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->b4:[B

    iget-object v2, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->buffer:[B

    iget v3, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->position:I

    #calls: Lorg/jivesoftware/smack/util/Base64;->encode3to4([B[BI)[B
    invoke-static {v1, v2, v3}, Lorg/jivesoftware/smack/util/Base64;->access$300([B[BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1399
    const/4 v0, 0x0

    iput v0, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->position:I

    .line 1407
    :cond_0
    return-void

    .line 1402
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(I)V
    .locals 6
    .parameter "theByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x5

    const/4 v5, 0x0

    .line 1323
    iget-boolean v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->suspendEncoding:Z

    if-eqz v1, :cond_1

    .line 1324
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1363
    :cond_0
    :goto_0
    return-void

    .line 1329
    :cond_1
    iget-boolean v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->encode:Z

    if-eqz v1, :cond_3

    .line 1330
    iget-object v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->buffer:[B

    iget v2, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->position:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 1331
    iget v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->position:I

    iget v2, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->bufferLength:I

    if-lt v1, v2, :cond_0

    .line 1333
    iget-object v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->b4:[B

    iget-object v3, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->buffer:[B

    iget v4, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->bufferLength:I

    #calls: Lorg/jivesoftware/smack/util/Base64;->encode3to4([B[BI)[B
    invoke-static {v2, v3, v4}, Lorg/jivesoftware/smack/util/Base64;->access$300([B[BI)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1335
    iget v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->lineLength:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->lineLength:I

    .line 1336
    iget-boolean v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->breakLines:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->lineLength:I

    const/16 v2, 0x4c

    if-lt v1, v2, :cond_2

    .line 1337
    iget-object v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1338
    iput v5, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->lineLength:I

    .line 1341
    :cond_2
    iput v5, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->position:I

    goto :goto_0

    .line 1348
    :cond_3
    invoke-static {}, Lorg/jivesoftware/smack/util/Base64;->access$100()[B

    move-result-object v1

    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    if-le v1, v3, :cond_4

    .line 1349
    iget-object v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->buffer:[B

    iget v2, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->position:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 1350
    iget v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->position:I

    iget v2, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->bufferLength:I

    if-lt v1, v2, :cond_0

    .line 1352
    iget-object v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->buffer:[B

    iget-object v2, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->b4:[B

    #calls: Lorg/jivesoftware/smack/util/Base64;->decode4to3([BI[BI)I
    invoke-static {v1, v5, v2, v5}, Lorg/jivesoftware/smack/util/Base64;->access$200([BI[BI)I

    move-result v0

    .line 1353
    .local v0, len:I
    iget-object v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->b4:[B

    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1355
    iput v5, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->position:I

    goto :goto_0

    .line 1358
    .end local v0           #len:I
    :cond_4
    invoke-static {}, Lorg/jivesoftware/smack/util/Base64;->access$100()[B

    move-result-object v1

    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    if-eq v1, v3, :cond_0

    .line 1359
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid character in Base64 data."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write([BII)V
    .locals 2
    .parameter "theBytes"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1380
    iget-boolean v1, p0, Lorg/jivesoftware/smack/util/Base64$OutputStream;->suspendEncoding:Z

    if-eqz v1, :cond_1

    .line 1381
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1389
    :cond_0
    return-void

    .line 1385
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 1386
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->write(I)V

    .line 1385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
