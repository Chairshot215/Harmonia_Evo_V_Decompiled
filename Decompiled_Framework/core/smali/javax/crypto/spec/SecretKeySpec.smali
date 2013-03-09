.class public Ljavax/crypto/spec/SecretKeySpec;
.super Ljava/lang/Object;
.source "SecretKeySpec.java"

# interfaces
.implements Ljavax/crypto/SecretKey;
.implements Ljava/security/spec/KeySpec;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5b470b66e230614dL


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final key:[B


# direct methods
.method public constructor <init>([BIILjava/lang/String;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ltz p3, :cond_2

    if-gez p2, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "len < 0 || offset < 0"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-nez p4, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "algorithm == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput-object p4, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    new-array v0, p3, [B

    iput-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    iget-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "algorithm == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p2, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    iget-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Ljavax/crypto/spec/SecretKeySpec;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    iget-object v4, v0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    iget-object v4, v0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "RAW"

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v5, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    add-int/2addr v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v4
.end method
