.class public abstract Ljavax/crypto/KeyGeneratorSpi;
.super Ljava/lang/Object;
.source "KeyGeneratorSpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract engineGenerateKey()Ljavax/crypto/SecretKey;
.end method

.method protected abstract engineInit(ILjava/security/SecureRandom;)V
.end method

.method protected abstract engineInit(Ljava/security/SecureRandom;)V
.end method

.method protected abstract engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method
