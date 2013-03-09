.class public Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
.super Ljava/lang/Object;
.source "ParametersWithRandom.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private parameters:Lcom/android/org/bouncycastle/crypto/CipherParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->random:Ljava/security/SecureRandom;

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->parameters:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->parameters:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getRandom()Ljava/security/SecureRandom;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->random:Ljava/security/SecureRandom;

    return-object v0
.end method
