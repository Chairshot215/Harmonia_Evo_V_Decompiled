.class public interface abstract Lcom/android/org/bouncycastle/crypto/Signer;
.super Ljava/lang/Object;
.source "Signer.java"


# virtual methods
.method public abstract generateSignature()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/CryptoException;,
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation
.end method

.method public abstract init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
.end method

.method public abstract reset()V
.end method

.method public abstract update(B)V
.end method

.method public abstract update([BII)V
.end method

.method public abstract verifySignature([B)Z
.end method
