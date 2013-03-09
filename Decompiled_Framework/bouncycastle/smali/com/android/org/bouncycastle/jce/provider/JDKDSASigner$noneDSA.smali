.class public Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner$noneDSA;
.super Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;
.source "JDKDSASigner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "noneDSA"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/NullDigest;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/digests/NullDigest;-><init>()V

    new-instance v1, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/DSA;)V

    return-void
.end method
