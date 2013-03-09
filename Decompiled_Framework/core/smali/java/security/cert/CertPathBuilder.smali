.class public Ljava/security/cert/CertPathBuilder;
.super Ljava/lang/Object;
.source "CertPathBuilder.java"


# static fields
.field private static final DEFAULTPROPERTY:Ljava/lang/String; = "PKIX"

.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine; = null

.field private static final PROPERTYNAME:Ljava/lang/String; = "certpathbuilder.type"

.field private static final SERVICE:Ljava/lang/String; = "CertPathBuilder"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljava/security/cert/CertPathBuilderSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "CertPathBuilder"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/cert/CertPathBuilder;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljava/security/cert/CertPathBuilderSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljava/security/cert/CertPathBuilder;->provider:Ljava/security/Provider;

    iput-object p3, p0, Ljava/security/cert/CertPathBuilder;->algorithm:Ljava/lang/String;

    iput-object p1, p0, Ljava/security/cert/CertPathBuilder;->spiImpl:Ljava/security/cert/CertPathBuilderSpi;

    return-void
.end method

.method public static final getDefaultType()Ljava/lang/String;
    .locals 2

    const-string v1, "certpathbuilder.type"

    invoke-static {v1}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "PKIX"

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;
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
    sget-object v1, Ljava/security/cert/CertPathBuilder;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v0

    new-instance v2, Ljava/security/cert/CertPathBuilder;

    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    check-cast v1, Ljava/security/cert/CertPathBuilderSpi;

    iget-object v3, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljava/security/cert/CertPathBuilder;-><init>(Ljava/security/cert/CertPathBuilderSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;
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
    invoke-static {p0, v0}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertPathBuilder;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertPathBuilder;
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
    sget-object v1, Ljava/security/cert/CertPathBuilder;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/security/cert/CertPathBuilder;

    check-cast v0, Ljava/security/cert/CertPathBuilderSpi;

    invoke-direct {v1, v0, p1, p0}, Ljava/security/cert/CertPathBuilder;-><init>(Ljava/security/cert/CertPathBuilderSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/cert/CertPathBuilder;->spiImpl:Ljava/security/cert/CertPathBuilderSpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertPathBuilderSpi;->engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/CertPathBuilder;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/CertPathBuilder;->provider:Ljava/security/Provider;

    return-object v0
.end method
