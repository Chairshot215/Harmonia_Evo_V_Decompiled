.class public interface abstract Lcom/android/org/bouncycastle/crypto/DerivationFunction;
.super Ljava/lang/Object;
.source "DerivationFunction.java"


# virtual methods
.method public abstract generateBytes([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract getDigest()Lcom/android/org/bouncycastle/crypto/Digest;
.end method

.method public abstract init(Lcom/android/org/bouncycastle/crypto/DerivationParameters;)V
.end method
