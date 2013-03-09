.class public Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
.super Ljava/lang/Object;
.source "ParametersWithIV.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private iv:[B

.field private parameters:Lcom/android/org/bouncycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[BII)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p4, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->iv:[B

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->parameters:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->iv:[B

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getIV()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->iv:[B

    return-object v0
.end method

.method public getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->parameters:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method
