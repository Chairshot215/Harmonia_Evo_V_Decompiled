.class public Lcom/android/org/bouncycastle/jce/provider/symmetric/DESede$CBCMAC;
.super Lcom/android/org/bouncycastle/jce/provider/JCEMac;
.source "DESede.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/symmetric/DESede;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CBCMAC"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEMac;-><init>(Lcom/android/org/bouncycastle/crypto/Mac;)V

    return-void
.end method
