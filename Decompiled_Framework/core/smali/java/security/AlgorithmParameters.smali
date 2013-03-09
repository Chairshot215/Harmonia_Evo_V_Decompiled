.class public Ljava/security/AlgorithmParameters;
.super Ljava/lang/Object;
.source "AlgorithmParameters.java"


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine; = null

.field private static final SEVICE:Ljava/lang/String; = "AlgorithmParameters"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private initialized:Z

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljava/security/AlgorithmParametersSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "AlgorithmParameters"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/AlgorithmParameters;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljava/security/AlgorithmParametersSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljava/security/AlgorithmParameters;->provider:Ljava/security/Provider;

    iput-object p3, p0, Ljava/security/AlgorithmParameters;->algorithm:Ljava/lang/String;

    iput-object p1, p0, Ljava/security/AlgorithmParameters;->spiImpl:Ljava/security/AlgorithmParametersSpi;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
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
    sget-object v1, Ljava/security/AlgorithmParameters;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v0

    new-instance v2, Ljava/security/AlgorithmParameters;

    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    check-cast v1, Ljava/security/AlgorithmParametersSpi;

    iget-object v3, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljava/security/AlgorithmParameters;-><init>(Ljava/security/AlgorithmParametersSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;
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
    invoke-static {p0, v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;
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
    sget-object v1, Ljava/security/AlgorithmParameters;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/security/AlgorithmParameters;

    check-cast v0, Ljava/security/AlgorithmParametersSpi;

    invoke-direct {v1, v0, p1, p0}, Ljava/security/AlgorithmParameters;-><init>(Ljava/security/AlgorithmParametersSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/AlgorithmParameters;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getEncoded()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Parameter has not been initialized"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->spiImpl:Ljava/security/AlgorithmParametersSpi;

    invoke-virtual {v0}, Ljava/security/AlgorithmParametersSpi;->engineGetEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public final getEncoded(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Parameter has not been initialized"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->spiImpl:Ljava/security/AlgorithmParametersSpi;

    invoke-virtual {v0, p1}, Ljava/security/AlgorithmParametersSpi;->engineGetEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "Parameter has not been initialized"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->spiImpl:Ljava/security/AlgorithmParametersSpi;

    invoke-virtual {v0, p1}, Ljava/security/AlgorithmParametersSpi;->engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Ljava/security/AlgorithmParameters;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "Parameter has already been initialized"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->spiImpl:Ljava/security/AlgorithmParametersSpi;

    invoke-virtual {v0, p1}, Ljava/security/AlgorithmParametersSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    return-void
.end method

.method public final init([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Parameter has already been initialized"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->spiImpl:Ljava/security/AlgorithmParametersSpi;

    invoke-virtual {v0, p1}, Ljava/security/AlgorithmParametersSpi;->engineInit([B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    return-void
.end method

.method public final init([BLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Parameter has already been initialized"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->spiImpl:Ljava/security/AlgorithmParametersSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/AlgorithmParametersSpi;->engineInit([BLjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->spiImpl:Ljava/security/AlgorithmParametersSpi;

    invoke-virtual {v0}, Ljava/security/AlgorithmParametersSpi;->engineToString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
