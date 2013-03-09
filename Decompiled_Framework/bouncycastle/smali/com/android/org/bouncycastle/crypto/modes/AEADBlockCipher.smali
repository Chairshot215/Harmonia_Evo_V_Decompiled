.class public interface abstract Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;
.super Ljava/lang/Object;
.source "AEADBlockCipher.java"


# virtual methods
.method public abstract doFinal([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation
.end method

.method public abstract getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract getMac()[B
.end method

.method public abstract getOutputSize(I)I
.end method

.method public abstract getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
.end method

.method public abstract getUpdateOutputSize(I)I
.end method

.method public abstract init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract processByte(B[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation
.end method

.method public abstract processBytes([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method
