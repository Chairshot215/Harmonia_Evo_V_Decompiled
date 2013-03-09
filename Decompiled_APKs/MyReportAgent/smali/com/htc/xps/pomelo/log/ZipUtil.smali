.class public Lcom/htc/xps/pomelo/log/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Pomelo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deflateCompress([B)[B
    .locals 9
    .parameter "inBytes"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 76
    if-nez p0, :cond_0

    move-object v3, v5

    .line 95
    :goto_0
    return-object v3

    .line 78
    :cond_0
    array-length v6, p0

    if-nez v6, :cond_1

    .line 79
    new-array v3, v7, [B

    goto :goto_0

    .line 82
    :cond_1
    :try_start_0
    const-string v6, "Pomelo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inBytes=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    .line 84
    .local v0, compresser:Ljava/util/zip/Deflater;
    array-length v6, p0

    new-array v4, v6, [B

    .line 85
    .local v4, zipBytes:[B
    invoke-virtual {v0, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 86
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 87
    invoke-virtual {v0, v4}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v2

    .line 88
    .local v2, len:I
    new-array v3, v2, [B

    .line 89
    .local v3, outBytes:[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v6, v3, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    const-string v6, "Pomelo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "outBytes=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    .end local v0           #compresser:Ljava/util/zip/Deflater;
    .end local v2           #len:I
    .end local v3           #outBytes:[B
    .end local v4           #zipBytes:[B
    :catch_0
    move-exception v1

    .line 94
    .local v1, ex:Ljava/lang/Exception;
    const-string v6, "Pomelo"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    .line 95
    goto :goto_0
.end method

.method public static deflateDecompress([B)[B
    .locals 9
    .parameter "inBytes"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 100
    if-nez p0, :cond_0

    move-object v3, v5

    .line 119
    :goto_0
    return-object v3

    .line 102
    :cond_0
    array-length v6, p0

    if-nez v6, :cond_1

    .line 103
    new-array v3, v7, [B

    goto :goto_0

    .line 106
    :cond_1
    :try_start_0
    const-string v6, "Pomelo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inBytes=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    .line 108
    .local v0, decompresser:Ljava/util/zip/Inflater;
    const/4 v6, 0x0

    array-length v7, p0

    invoke-virtual {v0, p0, v6, v7}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 109
    array-length v6, p0

    mul-int/lit8 v6, v6, 0xa

    new-array v4, v6, [B

    .line 110
    .local v4, result:[B
    invoke-virtual {v0, v4}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v2

    .line 111
    .local v2, len:I
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 112
    new-array v3, v2, [B

    .line 113
    .local v3, outBytes:[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v6, v3, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    const-string v6, "Pomelo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "outBytes=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    .end local v0           #decompresser:Ljava/util/zip/Inflater;
    .end local v2           #len:I
    .end local v3           #outBytes:[B
    .end local v4           #result:[B
    :catch_0
    move-exception v1

    .line 118
    .local v1, ex:Ljava/lang/Exception;
    const-string v6, "Pomelo"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    .line 119
    goto :goto_0
.end method

.method public static gzipCompress([B)[B
    .locals 8
    .parameter "inBytes"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 19
    if-nez p0, :cond_0

    move-object v3, v4

    .line 37
    :goto_0
    return-object v3

    .line 21
    :cond_0
    array-length v5, p0

    if-nez v5, :cond_1

    .line 22
    new-array v3, v6, [B

    goto :goto_0

    .line 25
    :cond_1
    :try_start_0
    const-string v5, "Pomelo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inBytes=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 27
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 28
    .local v2, gzos:Ljava/util/zip/GZIPOutputStream;
    const/4 v5, 0x0

    array-length v6, p0

    invoke-virtual {v2, p0, v5, v6}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 29
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 30
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 31
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 32
    .local v3, outBytes:[B
    const-string v5, "Pomelo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "outBytes.length=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #gzos:Ljava/util/zip/GZIPOutputStream;
    .end local v3           #outBytes:[B
    :catch_0
    move-exception v1

    .line 36
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "Pomelo"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 37
    goto :goto_0
.end method

.method public static gzipDecompress([B)[B
    .locals 11
    .parameter "inBytes"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 42
    if-nez p0, :cond_0

    move-object v5, v7

    .line 71
    :goto_0
    return-object v5

    .line 44
    :cond_0
    array-length v8, p0

    if-nez v8, :cond_1

    .line 45
    new-array v5, v9, [B

    goto :goto_0

    .line 48
    :cond_1
    :try_start_0
    const-string v8, "Pomelo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "inBytes=["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, p0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 50
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 51
    .local v3, gzis:Ljava/util/zip/GZIPInputStream;
    const/4 v5, 0x0

    .line 52
    .local v5, outBytes:[B
    const/16 v8, 0x400

    new-array v1, v8, [B

    .line 54
    .local v1, buf:[B
    :goto_1
    invoke-virtual {v3, v1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    .local v4, len:I
    if-lez v4, :cond_4

    .line 55
    if-eqz v5, :cond_2

    array-length v8, v5

    if-nez v8, :cond_3

    .line 56
    :cond_2
    new-array v5, v4, [B

    .line 57
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v1, v8, v5, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 69
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v1           #buf:[B
    .end local v3           #gzis:Ljava/util/zip/GZIPInputStream;
    .end local v4           #len:I
    .end local v5           #outBytes:[B
    :catch_0
    move-exception v2

    .line 70
    .local v2, ex:Ljava/lang/Exception;
    const-string v8, "Pomelo"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v7

    .line 71
    goto :goto_0

    .line 59
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #buf:[B
    .restart local v3       #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v4       #len:I
    .restart local v5       #outBytes:[B
    :cond_3
    :try_start_1
    array-length v8, v5

    array-length v9, v1

    add-int/2addr v8, v9

    new-array v6, v8, [B

    .line 60
    .local v6, temp:[B
    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, v5

    invoke-static {v5, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    const/4 v8, 0x0

    array-length v9, v5

    invoke-static {v1, v8, v6, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    array-length v8, v6

    new-array v5, v8, [B

    .line 63
    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, v6

    invoke-static {v6, v8, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 66
    .end local v6           #temp:[B
    :cond_4
    const-string v8, "Pomelo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "outBytes.length=["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
