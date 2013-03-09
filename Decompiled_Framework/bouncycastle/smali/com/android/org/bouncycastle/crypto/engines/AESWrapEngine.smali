.class public Lcom/android/org/bouncycastle/crypto/engines/AESWrapEngine;
.super Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;
.source "AESWrapEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    return-void
.end method
