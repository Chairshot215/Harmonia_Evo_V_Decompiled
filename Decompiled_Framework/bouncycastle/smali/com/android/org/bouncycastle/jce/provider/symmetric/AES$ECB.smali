.class public Lcom/android/org/bouncycastle/jce/provider/symmetric/AES$ECB;
.super Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/AESFastEngine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    return-void
.end method
