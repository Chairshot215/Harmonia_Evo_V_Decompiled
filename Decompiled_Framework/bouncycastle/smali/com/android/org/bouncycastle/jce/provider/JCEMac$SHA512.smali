.class public Lcom/android/org/bouncycastle/jce/provider/JCEMac$SHA512;
.super Lcom/android/org/bouncycastle/jce/provider/JCEMac;
.source "JCEMac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JCEMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SHA512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEMac;-><init>(Lcom/android/org/bouncycastle/crypto/Mac;)V

    return-void
.end method
