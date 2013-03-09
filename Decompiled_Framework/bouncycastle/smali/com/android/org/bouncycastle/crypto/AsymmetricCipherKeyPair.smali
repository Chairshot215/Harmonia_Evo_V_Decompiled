.class public Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
.super Ljava/lang/Object;
.source "AsymmetricCipherKeyPair.java"


# instance fields
.field private privateParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

.field private publicParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->publicParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->privateParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    return-void
.end method


# virtual methods
.method public getPrivate()Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->privateParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getPublic()Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->publicParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method
