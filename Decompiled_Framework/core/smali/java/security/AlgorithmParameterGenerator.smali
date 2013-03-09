.class public Ljava/security/AlgorithmParameterGenerator;
.super Ljava/lang/Object;
.source "AlgorithmParameterGenerator.java"


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine; = null

.field private static final RANDOM:Ljava/security/SecureRandom; = null

.field private static final SERVICE:Ljava/lang/String; = "AlgorithmParameterGenerator"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljava/security/AlgorithmParameterGeneratorSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "AlgorithmParameterGenerator"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/AlgorithmParameterGenerator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljava/security/AlgorithmParameterGenerator;->RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method protected constructor <init>(Ljava/security/AlgorithmParameterGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljava/security/AlgorithmParameterGenerator;->provider:Ljava/security/Provider;

    iput-object p3, p0, Ljava/security/AlgorithmParameterGenerator;->algorithm:Ljava/lang/String;

    iput-object p1, p0, Ljava/security/AlgorithmParameterGenerator;->spiImpl:Ljava/security/AlgorithmParameterGeneratorSpi;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameterGenerator;
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
    sget-object v1, Ljava/security/AlgorithmParameterGenerator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v0

    new-instance v2, Ljava/security/AlgorithmParameterGenerator;

    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    check-cast v1, Ljava/security/AlgorithmParameterGeneratorSpi;

    iget-object v3, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljava/security/AlgorithmParameterGenerator;-><init>(Ljava/security/AlgorithmParameterGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameterGenerator;
    .locals 2
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

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {p0, v0}, Ljava/security/AlgorithmParameterGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameterGenerator;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameterGenerator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    if-nez p0, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    sget-object v1, Ljava/security/AlgorithmParameterGenerator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/security/AlgorithmParameterGenerator;

    check-cast v0, Ljava/security/AlgorithmParameterGeneratorSpi;

    invoke-direct {v1, v0, p1, p0}, Ljava/security/AlgorithmParameterGenerator;-><init>(Ljava/security/AlgorithmParameterGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final generateParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->spiImpl:Ljava/security/AlgorithmParameterGeneratorSpi;

    invoke-virtual {v0}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineGenerateParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(I)V
    .locals 2

    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->spiImpl:Ljava/security/AlgorithmParameterGeneratorSpi;

    sget-object v1, Ljava/security/AlgorithmParameterGenerator;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1, v1}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    return-void
.end method

.method public final init(ILjava/security/SecureRandom;)V
    .locals 1

    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->spiImpl:Ljava/security/AlgorithmParameterGeneratorSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    return-void
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->spiImpl:Ljava/security/AlgorithmParameterGeneratorSpi;

    sget-object v1, Ljava/security/AlgorithmParameterGenerator;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1, v1}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->spiImpl:Ljava/security/AlgorithmParameterGeneratorSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method
