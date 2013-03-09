.class public Ljavax/crypto/spec/PBEParameterSpec;
.super Ljava/lang/Object;
.source "PBEParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final iterationCount:I

.field private final salt:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "salt == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PBEParameterSpec;->salt:[B

    iget-object v0, p0, Ljavax/crypto/spec/PBEParameterSpec;->salt:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p2, p0, Ljavax/crypto/spec/PBEParameterSpec;->iterationCount:I

    return-void
.end method


# virtual methods
.method public getIterationCount()I
    .locals 1

    iget v0, p0, Ljavax/crypto/spec/PBEParameterSpec;->iterationCount:I

    return v0
.end method

.method public getSalt()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljavax/crypto/spec/PBEParameterSpec;->salt:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Ljavax/crypto/spec/PBEParameterSpec;->salt:[B

    iget-object v2, p0, Ljavax/crypto/spec/PBEParameterSpec;->salt:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
