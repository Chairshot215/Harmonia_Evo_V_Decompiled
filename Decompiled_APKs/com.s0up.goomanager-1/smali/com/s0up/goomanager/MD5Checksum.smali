.class public Lcom/s0up/goomanager/MD5Checksum;
.super Ljava/lang/Object;
.source "MD5Checksum.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createChecksum(Ljava/lang/String;)[B
    .locals 5
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 9
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 11
    .local v2, fis:Ljava/io/InputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 12
    .local v0, buffer:[B
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 16
    .local v1, complete:Ljava/security/MessageDigest;
    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 17
    .local v3, numRead:I
    if-lez v3, :cond_1

    .line 18
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 20
    :cond_1
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 22
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 23
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    return-object v4
.end method

.method public static getMD5Checksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getting MD5 for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    invoke-static {p0}, Lcom/s0up/goomanager/MD5Checksum;->createChecksum(Ljava/lang/String;)[B

    move-result-object v0

    .line 31
    .local v0, b:[B
    const-string v2, ""

    .line 33
    .local v2, result:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 36
    return-object v2

    .line 34
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit16 v4, v4, 0x100

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
