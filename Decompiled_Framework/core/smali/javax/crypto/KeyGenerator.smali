.class public Ljavax/crypto/KeyGenerator;
.super Ljava/lang/Object;
.source "KeyGenerator.java"


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;

.field private static final RANDOM:Ljava/security/SecureRandom;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljavax/crypto/KeyGeneratorSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "KeyGenerator"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/crypto/KeyGenerator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljavax/crypto/KeyGenerator;->RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/KeyGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljavax/crypto/KeyGenerator;->provider:Ljava/security/Provider;

    iput-object p3, p0, Ljavax/crypto/KeyGenerator;->algorithm:Ljava/lang/String;

    iput-object p1, p0, Ljavax/crypto/KeyGenerator;->spiImpl:Ljavax/crypto/KeyGeneratorSpi;

    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
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
    sget-object v1, Ljavax/crypto/KeyGenerator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v0

    new-instance v2, Ljavax/crypto/KeyGenerator;

    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/KeyGeneratorSpi;

    iget-object v3, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/KeyGenerator;-><init>(Ljavax/crypto/KeyGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
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
    invoke-static {p0, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;
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
    sget-object v1, Ljavax/crypto/KeyGenerator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljavax/crypto/KeyGenerator;

    check-cast v0, Ljavax/crypto/KeyGeneratorSpi;

    invoke-direct {v1, v0, p1, p0}, Ljavax/crypto/KeyGenerator;-><init>(Ljavax/crypto/KeyGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final generateKey()Ljavax/crypto/SecretKey;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->spiImpl:Ljavax/crypto/KeyGeneratorSpi;

    invoke-virtual {v0}, Ljavax/crypto/KeyGeneratorSpi;->engineGenerateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(I)V
    .locals 2

    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->spiImpl:Ljavax/crypto/KeyGeneratorSpi;

    sget-object v1, Ljavax/crypto/KeyGenerator;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1, v1}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    return-void
.end method

.method public final init(ILjava/security/SecureRandom;)V
    .locals 1

    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->spiImpl:Ljavax/crypto/KeyGeneratorSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    return-void
.end method

.method public final init(Ljava/security/SecureRandom;)V
    .locals 1

    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->spiImpl:Ljavax/crypto/KeyGeneratorSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/SecureRandom;)V

    return-void
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->spiImpl:Ljavax/crypto/KeyGeneratorSpi;

    sget-object v1, Ljavax/crypto/KeyGenerator;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1, v1}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->spiImpl:Ljavax/crypto/KeyGeneratorSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method
