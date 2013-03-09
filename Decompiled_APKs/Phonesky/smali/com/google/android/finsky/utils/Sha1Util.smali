.class public Lcom/google/android/finsky/utils/Sha1Util;
.super Ljava/lang/Object;
.source "Sha1Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/Sha1Util$1;,
        Lcom/google/android/finsky/utils/Sha1Util$DigestResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method private static digest(Ljava/io/InputStream;)Lcom/google/android/finsky/utils/Sha1Util$DigestResult;
    .locals 13
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 77
    const/16 v8, 0x400

    new-array v2, v8, [B

    .line 78
    .local v2, inputBuf:[B
    const-wide/16 v6, 0x0

    .line 82
    .local v6, totalBytesRead:J
    :try_start_0
    const-string v8, "SHA-1"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 87
    .local v3, messageDigest:Ljava/security/MessageDigest;
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, bytesRead:I
    if-ltz v0, :cond_2

    .line 88
    if-eqz v0, :cond_0

    .line 91
    array-length v8, v2

    if-ne v0, v8, :cond_1

    .line 93
    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 100
    :goto_1
    int-to-long v10, v0

    add-long/2addr v6, v10

    goto :goto_0

    .line 83
    .end local v0           #bytesRead:I
    .end local v3           #messageDigest:Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    move-object v8, v9

    .line 104
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :goto_2
    return-object v8

    .line 96
    .restart local v0       #bytesRead:I
    .restart local v3       #messageDigest:Ljava/security/MessageDigest;
    :cond_1
    new-array v5, v0, [B

    .line 97
    .local v5, tmpArray:[B
    invoke-static {v2, v12, v5, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_1

    .line 102
    .end local v5           #tmpArray:[B
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 103
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 104
    .local v4, result:[B
    new-instance v8, Lcom/google/android/finsky/utils/Sha1Util$DigestResult;

    const/16 v10, 0xb

    invoke-static {v4, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10, v6, v7, v9}, Lcom/google/android/finsky/utils/Sha1Util$DigestResult;-><init>(Ljava/lang/String;JLcom/google/android/finsky/utils/Sha1Util$1;)V

    goto :goto_2
.end method

.method public static secureHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "input"

    .prologue
    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/Sha1Util;->secureHash([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static secureHash([B)Ljava/lang/String;
    .locals 4
    .parameter "input"

    .prologue
    .line 58
    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 62
    .local v1, messageDigest:Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 63
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 64
    .local v2, result:[B
    const/16 v3, 0xb

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .end local v1           #messageDigest:Ljava/security/MessageDigest;
    .end local v2           #result:[B
    :goto_0
    return-object v3

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static verify(Ljava/io/InputStream;Ljava/lang/String;J)Z
    .locals 3
    .parameter "input"
    .parameter "hash"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p0}, Lcom/google/android/finsky/utils/Sha1Util;->digest(Ljava/io/InputStream;)Lcom/google/android/finsky/utils/Sha1Util$DigestResult;

    move-result-object v0

    .line 36
    .local v0, result:Lcom/google/android/finsky/utils/Sha1Util$DigestResult;
    iget-object v1, v0, Lcom/google/android/finsky/utils/Sha1Util$DigestResult;->sha1HashBase64:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/google/android/finsky/utils/Sha1Util$DigestResult;->byteCount:J

    cmp-long v1, v1, p2

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
