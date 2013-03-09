.class public interface abstract Lcom/android/org/bouncycastle/crypto/Wrapper;
.super Ljava/lang/Object;
.source "Wrapper.java"


# virtual methods
.method public abstract getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
.end method

.method public abstract unwrap([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation
.end method

.method public abstract wrap([BII)[B
.end method
