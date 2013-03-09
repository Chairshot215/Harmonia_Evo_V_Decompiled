.class public Ljavax/crypto/KeyAgreement;
.super Ljava/lang/Object;
.source "KeyAgreement.java"


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;

.field private static final RANDOM:Ljava/security/SecureRandom;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljavax/crypto/KeyAgreementSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "KeyAgreement"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/crypto/KeyAgreement;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljavax/crypto/KeyAgreement;->RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/KeyAgreementSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;

    iput-object p3, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    iput-object p1, p0, Ljavax/crypto/KeyAgreement;->spiImpl:Ljavax/crypto/KeyAgreementSpi;

    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    sget-object v1, Ljavax/crypto/KeyAgreement;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v0

    new-instance v2, Ljavax/crypto/KeyAgreement;

    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/KeyAgreementSpi;

    iget-object v3, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/KeyAgreement;-><init>(Ljavax/crypto/KeyAgreementSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provider is null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {p0, v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;

    move-result-object v1

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "provider == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p0, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    sget-object v1, Ljavax/crypto/KeyAgreement;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljavax/crypto/KeyAgreement;

    check-cast v0, Ljavax/crypto/KeyAgreementSpi;

    invoke-direct {v1, v0, p1, p0}, Ljavax/crypto/KeyAgreement;-><init>(Ljavax/crypto/KeyAgreementSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final doPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spiImpl:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyAgreementSpi;->engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public final generateSecret([BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spiImpl:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyAgreementSpi;->engineGenerateSecret([BI)I

    move-result v0

    return v0
.end method

.method public final generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spiImpl:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/KeyAgreementSpi;->engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public final generateSecret()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spiImpl:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0}, Ljavax/crypto/KeyAgreementSpi;->engineGenerateSecret()[B

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(Ljava/security/Key;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spiImpl:Ljavax/crypto/KeyAgreementSpi;

    sget-object v1, Ljavax/crypto/KeyAgreement;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1, v1}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public final init(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spiImpl:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public final init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spiImpl:Ljavax/crypto/KeyAgreementSpi;

    sget-object v1, Ljavax/crypto/KeyAgreement;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1, p2, v1}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public final init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spiImpl:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method
