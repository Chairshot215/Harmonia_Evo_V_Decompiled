.class public interface abstract Lcom/android/org/bouncycastle/crypto/Mac;
.super Ljava/lang/Object;
.source "Mac.java"


# virtual methods
.method public abstract doFinal([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract getMacSize()I
.end method

.method public abstract init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public abstract update(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract update([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
