.class public interface abstract Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;
.super Ljava/lang/Object;
.source "AsymmetricBlockCipher.java"


# virtual methods
.method public abstract getInputBlockSize()I
.end method

.method public abstract getOutputBlockSize()I
.end method

.method public abstract init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
.end method

.method public abstract processBlock([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation
.end method
