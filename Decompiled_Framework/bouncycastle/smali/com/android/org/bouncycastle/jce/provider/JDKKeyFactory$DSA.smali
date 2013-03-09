.class public Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory$DSA;
.super Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;
.source "JDKKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DSA"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/spec/DSAPrivateKeySpec;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;

    check-cast p1, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;-><init>(Ljava/security/spec/DSAPrivateKeySpec;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    goto :goto_0
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/spec/DSAPublicKeySpec;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;

    check-cast p1, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPublicKey;-><init>(Ljava/security/spec/DSAPublicKeySpec;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    goto :goto_0
.end method
