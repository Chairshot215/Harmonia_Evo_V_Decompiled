.class Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;
.super Ljava/security/KeyPairGenerator;
.source "KeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyPairGeneratorImpl"
.end annotation


# instance fields
.field private spiImpl:Ljava/security/KeyPairGeneratorSpi;


# direct methods
.method private constructor <init>(Ljava/security/KeyPairGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    #setter for: Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;
    invoke-static {p0, p2}, Ljava/security/KeyPairGenerator;->access$102(Ljava/security/KeyPairGenerator;Ljava/security/Provider;)Ljava/security/Provider;

    iput-object p1, p0, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;->spiImpl:Ljava/security/KeyPairGeneratorSpi;

    return-void
.end method

.method synthetic constructor <init>(Ljava/security/KeyPairGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/KeyPairGenerator$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;-><init>(Ljava/security/KeyPairGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 1

    iget-object v0, p0, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;->spiImpl:Ljava/security/KeyPairGeneratorSpi;

    invoke-virtual {v0}, Ljava/security/KeyPairGeneratorSpi;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 1

    iget-object v0, p0, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;->spiImpl:Ljava/security/KeyPairGeneratorSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyPairGeneratorSpi;->initialize(ILjava/security/SecureRandom;)V

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;->spiImpl:Ljava/security/KeyPairGeneratorSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method
