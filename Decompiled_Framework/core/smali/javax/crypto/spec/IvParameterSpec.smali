.class public Ljavax/crypto/spec/IvParameterSpec;
.super Ljava/lang/Object;
.source "IvParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final iv:[B


# direct methods
.method public constructor <init>([B)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "iv == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    iget-object v0, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    new-array v0, p3, [B

    iput-object v0, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    iget-object v0, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getIV()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    iget-object v2, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
