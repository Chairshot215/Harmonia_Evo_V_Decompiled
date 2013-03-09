.class public Ljava/security/cert/CertStore;
.super Ljava/lang/Object;
.source "CertStore.java"


# static fields
.field private static final DEFAULTPROPERTY:Ljava/lang/String; = "LDAP"

.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine; = null

.field private static final PROPERTYNAME:Ljava/lang/String; = "certstore.type"

.field private static final SERVICE:Ljava/lang/String; = "CertStore"


# instance fields
.field private final certStoreParams:Ljava/security/cert/CertStoreParameters;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljava/security/cert/CertStoreSpi;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "CertStore"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/cert/CertStore;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljava/security/cert/CertStore;->provider:Ljava/security/Provider;

    iput-object p3, p0, Ljava/security/cert/CertStore;->type:Ljava/lang/String;

    iput-object p1, p0, Ljava/security/cert/CertStore;->spiImpl:Ljava/security/cert/CertStoreSpi;

    iput-object p4, p0, Ljava/security/cert/CertStore;->certStoreParams:Ljava/security/cert/CertStoreParameters;

    return-void
.end method

.method public static final getDefaultType()Ljava/lang/String;
    .locals 2

    const-string v1, "certstore.type"

    invoke-static {v1}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "LDAP"

    :cond_0
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    :try_start_0
    sget-object v3, Ljava/security/cert/CertStore;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    invoke-virtual {v3, p0, p1}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v1

    new-instance v4, Ljava/security/cert/CertStore;

    iget-object v3, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    check-cast v3, Ljava/security/cert/CertStoreSpi;

    iget-object v5, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v4, v3, v5, p0, p1}, Ljava/security/cert/CertStore;-><init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_1

    throw v0

    :cond_1
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/lang/String;)Ljava/security/cert/CertStore;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    invoke-static {p2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1, p2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {p0, p1, v0}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/security/Provider;)Ljava/security/cert/CertStore;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/security/Provider;)Ljava/security/cert/CertStore;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_0
    if-nez p0, :cond_1

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_1
    :try_start_0
    sget-object v3, Ljava/security/cert/CertStore;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    invoke-virtual {v3, p0, p2, p1}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Ljava/security/cert/CertStore;

    check-cast v1, Ljava/security/cert/CertStoreSpi;

    invoke-direct {v3, v1, p2, p0, p1}, Ljava/security/cert/CertStore;-><init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_2

    throw v0

    :cond_2
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public final getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CRLSelector;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/cert/CertStore;->spiImpl:Ljava/security/cert/CertStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertStoreSpi;->engineGetCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final getCertStoreParameters()Ljava/security/cert/CertStoreParameters;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/CertStore;->certStoreParams:Ljava/security/cert/CertStoreParameters;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/security/cert/CertStore;->certStoreParams:Ljava/security/cert/CertStoreParameters;

    invoke-interface {v0}, Ljava/security/cert/CertStoreParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertStoreParameters;

    goto :goto_0
.end method

.method public final getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CertSelector;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/cert/CertStore;->spiImpl:Ljava/security/cert/CertStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertStoreSpi;->engineGetCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/CertStore;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/CertStore;->type:Ljava/lang/String;

    return-object v0
.end method
