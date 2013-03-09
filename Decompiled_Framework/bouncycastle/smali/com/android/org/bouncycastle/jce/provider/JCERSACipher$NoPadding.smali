.class public Lcom/android/org/bouncycastle/jce/provider/JCERSACipher$NoPadding;
.super Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;
.source "JCERSACipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoPadding"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/JCERSACipher;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V

    return-void
.end method
