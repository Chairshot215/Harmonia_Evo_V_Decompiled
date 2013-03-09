.class public Ljavax/crypto/ExemptionMechanism;
.super Ljava/lang/Object;
.source "ExemptionMechanism.java"


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;


# instance fields
.field private generated:Z

.field private initKey:Ljava/security/Key;

.field private isInit:Z

.field private final mechanism:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljavax/crypto/ExemptionMechanismSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "ExemptionMechanism"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/crypto/ExemptionMechanism;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/ExemptionMechanismSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Ljavax/crypto/ExemptionMechanism;->mechanism:Ljava/lang/String;

    iput-object p1, p0, Ljavax/crypto/ExemptionMechanism;->spiImpl:Ljavax/crypto/ExemptionMechanismSpi;

    iput-object p2, p0, Ljavax/crypto/ExemptionMechanism;->provider:Ljava/security/Provider;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->isInit:Z

    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/ExemptionMechanism;
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
    sget-object v1, Ljavax/crypto/ExemptionMechanism;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v0

    new-instance v2, Ljavax/crypto/ExemptionMechanism;

    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/ExemptionMechanismSpi;

    iget-object v3, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/ExemptionMechanism;-><init>(Ljavax/crypto/ExemptionMechanismSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/ExemptionMechanism;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "provider == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-nez p0, :cond_2

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_2
    invoke-static {p0, v0}, Ljavax/crypto/ExemptionMechanism;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/ExemptionMechanism;

    move-result-object v1

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/ExemptionMechanism;
    .locals 3
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
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "provider == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    sget-object v1, Ljavax/crypto/ExemptionMechanism;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljavax/crypto/ExemptionMechanism;

    check-cast v0, Ljavax/crypto/ExemptionMechanismSpi;

    invoke-direct {v1, v0, p1, p0}, Ljavax/crypto/ExemptionMechanism;-><init>(Ljavax/crypto/ExemptionMechanismSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final genExemptionBlob([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/crypto/ExemptionMechanism;->genExemptionBlob([BI)I

    move-result v0

    return v0
.end method

.method public final genExemptionBlob([BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    iget-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->isInit:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ExemptionMechanism is not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->generated:Z

    iget-object v1, p0, Ljavax/crypto/ExemptionMechanism;->spiImpl:Ljavax/crypto/ExemptionMechanismSpi;

    invoke-virtual {v1, p1, p2}, Ljavax/crypto/ExemptionMechanismSpi;->engineGenExemptionBlob([BI)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->generated:Z

    return v0
.end method

.method public final genExemptionBlob()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    iget-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->isInit:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ExemptionMechanism is not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->generated:Z

    iget-object v1, p0, Ljavax/crypto/ExemptionMechanism;->spiImpl:Ljavax/crypto/ExemptionMechanismSpi;

    invoke-virtual {v1}, Ljavax/crypto/ExemptionMechanismSpi;->engineGenExemptionBlob()[B

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->generated:Z

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->mechanism:Ljava/lang/String;

    return-object v0
.end method

.method public final getOutputSize(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->isInit:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ExemptionMechanism is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->spiImpl:Ljavax/crypto/ExemptionMechanismSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/ExemptionMechanismSpi;->engineGetOutputSize(I)I

    move-result v0

    return v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(Ljava/security/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->generated:Z

    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->spiImpl:Ljavax/crypto/ExemptionMechanismSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/ExemptionMechanismSpi;->engineInit(Ljava/security/Key;)V

    iput-object p1, p0, Ljavax/crypto/ExemptionMechanism;->initKey:Ljava/security/Key;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->isInit:Z

    return-void
.end method

.method public final init(Ljava/security/Key;Ljava/security/AlgorithmParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->generated:Z

    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->spiImpl:Ljavax/crypto/ExemptionMechanismSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/ExemptionMechanismSpi;->engineInit(Ljava/security/Key;Ljava/security/AlgorithmParameters;)V

    iput-object p1, p0, Ljavax/crypto/ExemptionMechanism;->initKey:Ljava/security/Key;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->isInit:Z

    return-void
.end method

.method public final init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->generated:Z

    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->spiImpl:Ljavax/crypto/ExemptionMechanismSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/ExemptionMechanismSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iput-object p1, p0, Ljavax/crypto/ExemptionMechanism;->initKey:Ljava/security/Key;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->isInit:Z

    return-void
.end method

.method public final isCryptoAllowed(Ljava/security/Key;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    iget-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->generated:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->initKey:Ljava/security/Key;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->initKey:Ljava/security/Key;

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
