.class public Ljavax/crypto/spec/RC2ParameterSpec;
.super Ljava/lang/Object;
.source "RC2ParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final effectiveKeyBits:I

.field private final iv:[B


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iv == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p2

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iv.length < 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    new-array v0, v1, [B

    iput-object v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    iget-object v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(I[BI)V
    .locals 3

    const/16 v2, 0x8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iv == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p2

    sub-int/2addr v0, p3

    if-ge v0, v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iv.length - offset < 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    new-array v0, v2, [B

    iput-object v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    iget-object v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

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
    instance-of v3, p1, Ljavax/crypto/spec/RC2ParameterSpec;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/RC2ParameterSpec;

    iget v3, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    iget v4, v0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    iget-object v4, v0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getEffectiveKeyBits()I
    .locals 1

    iget v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    return v0
.end method

.method public getIV()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    iget-object v2, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    iget v4, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    iget-object v6, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    if-nez v6, :cond_0

    move v5, v4

    :goto_0
    return v5

    :cond_0
    iget-object v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-byte v1, v0, v2

    add-int/2addr v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v5, v4

    goto :goto_0
.end method
