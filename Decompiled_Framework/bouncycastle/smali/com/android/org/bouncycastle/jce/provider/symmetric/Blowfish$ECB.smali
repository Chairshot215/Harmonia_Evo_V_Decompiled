.class public Lcom/android/org/bouncycastle/jce/provider/symmetric/Blowfish$ECB;
.super Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;
.source "Blowfish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/symmetric/Blowfish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/BlowfishEngine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/BlowfishEngine;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    return-void
.end method
