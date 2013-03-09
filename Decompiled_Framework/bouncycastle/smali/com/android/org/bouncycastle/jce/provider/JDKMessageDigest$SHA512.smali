.class public Lcom/android/org/bouncycastle/jce/provider/JDKMessageDigest$SHA512;
.super Lcom/android/org/bouncycastle/jce/provider/JDKMessageDigest;
.source "JDKMessageDigest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JDKMessageDigest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SHA512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/JDKMessageDigest;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JDKMessageDigest$SHA512;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKMessageDigest;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    check-cast v1, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;)V

    iput-object v2, v0, Lcom/android/org/bouncycastle/jce/provider/JDKMessageDigest;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    return-object v0
.end method
