.class public Ljavax/crypto/SecretKeyFactory;
.super Ljava/lang/Object;
.source "SecretKeyFactory.java"


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljavax/crypto/SecretKeyFactorySpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "SecretKeyFactory"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/crypto/SecretKeyFactory;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/SecretKeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljavax/crypto/SecretKeyFactory;->provider:Ljava/security/Provider;

    iput-object p3, p0, Ljavax/crypto/SecretKeyFactory;->algorithm:Ljava/lang/String;

    iput-object p1, p0, Ljavax/crypto/SecretKeyFactory;->spiImpl:Ljavax/crypto/SecretKeyFactorySpi;

    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
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
    sget-object v1, Ljavax/crypto/SecretKeyFactory;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v0

    new-instance v2, Ljavax/crypto/SecretKeyFactory;

    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/SecretKeyFactorySpi;

    iget-object v3, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/SecretKeyFactory;-><init>(Ljavax/crypto/SecretKeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
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
    invoke-static {p0, v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;
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
    sget-object v1, Ljavax/crypto/SecretKeyFactory;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljavax/crypto/SecretKeyFactory;

    check-cast v0, Ljavax/crypto/SecretKeyFactorySpi;

    invoke-direct {v1, v0, p1, p0}, Ljavax/crypto/SecretKeyFactory;-><init>(Ljavax/crypto/SecretKeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/crypto/SecretKeyFactory;->spiImpl:Ljavax/crypto/SecretKeyFactorySpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/SecretKeyFactorySpi;->engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/SecretKeyFactory;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/crypto/SecretKeyFactory;->spiImpl:Ljavax/crypto/SecretKeyFactorySpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/SecretKeyFactorySpi;->engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/SecretKeyFactory;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final translateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/crypto/SecretKeyFactory;->spiImpl:Ljavax/crypto/SecretKeyFactorySpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/SecretKeyFactorySpi;->engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method
