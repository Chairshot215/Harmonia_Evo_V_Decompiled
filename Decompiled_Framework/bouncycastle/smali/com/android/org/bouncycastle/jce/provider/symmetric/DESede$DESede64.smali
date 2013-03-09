.class public Lcom/android/org/bouncycastle/jce/provider/symmetric/DESede$DESede64;
.super Lcom/android/org/bouncycastle/jce/provider/JCEMac;
.source "DESede.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/symmetric/DESede;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DESede64"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEMac;-><init>(Lcom/android/org/bouncycastle/crypto/Mac;)V

    return-void
.end method
