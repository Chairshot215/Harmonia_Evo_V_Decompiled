.class public interface abstract Lcom/android/org/bouncycastle/crypto/BlockCipher;
.super Ljava/lang/Object;
.source "BlockCipher.java"


# virtual methods
.method public abstract getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract getBlockSize()I
.end method

.method public abstract init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract processBlock([BI[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method
