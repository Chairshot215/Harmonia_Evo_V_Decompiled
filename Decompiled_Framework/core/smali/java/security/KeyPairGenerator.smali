.class public abstract Ljava/security/KeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "KeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyPairGenerator$1;,
        Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;
    }
.end annotation


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine; = null

.field private static final RANDOM:Ljava/security/SecureRandom; = null

.field private static final SERVICE:Ljava/lang/String; = "KeyPairGenerator"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private provider:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "KeyPairGenerator"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/KeyPairGenerator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljava/security/KeyPairGenerator;->RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    iput-object p1, p0, Ljava/security/KeyPairGenerator;->algorithm:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$102(Ljava/security/KeyPairGenerator;Ljava/security/Provider;)Ljava/security/Provider;
    .locals 0

    iput-object p1, p0, Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;

    return-object p1
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    sget-object v4, Ljava/security/KeyPairGenerator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    invoke-virtual {v4, p0, v5}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v2

    iget-object v3, v2, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    iget-object v0, v2, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    instance-of v4, v3, Ljava/security/KeyPairGenerator;

    if-eqz v4, :cond_1

    move-object v1, v3

    check-cast v1, Ljava/security/KeyPairGenerator;

    iput-object p0, v1, Ljava/security/KeyPairGenerator;->algorithm:Ljava/lang/String;

    iput-object v0, v1, Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;

    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;

    check-cast v3, Ljava/security/KeyPairGeneratorSpi;

    invoke-direct {v1, v3, v0, p0, v5}, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;-><init>(Ljava/security/KeyPairGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/KeyPairGenerator$1;)V

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;
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
    invoke-static {p0, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    if-nez p0, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_1
    sget-object v2, Ljava/security/KeyPairGenerator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    invoke-virtual {v2, p0, p1, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/security/KeyPairGenerator;

    if-eqz v2, :cond_2

    move-object v0, v1

    check-cast v0, Ljava/security/KeyPairGenerator;

    iput-object p0, v0, Ljava/security/KeyPairGenerator;->algorithm:Ljava/lang/String;

    iput-object p1, v0, Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;

    check-cast v1, Ljava/security/KeyPairGeneratorSpi;

    invoke-direct {v0, v1, p1, p0, v3}, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;-><init>(Ljava/security/KeyPairGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/KeyPairGenerator$1;)V

    goto :goto_0
.end method


# virtual methods
.method public final genKeyPair()Ljava/security/KeyPair;
    .locals 1

    invoke-virtual {p0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/KeyPairGenerator;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public initialize(I)V
    .locals 1

    sget-object v0, Ljava/security/KeyPairGenerator;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, v0}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    return-void
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    sget-object v0, Ljava/security/KeyPairGenerator;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    return-void
.end method
