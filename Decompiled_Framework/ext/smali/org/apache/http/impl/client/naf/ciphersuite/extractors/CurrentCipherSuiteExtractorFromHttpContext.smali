.class public Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromHttpContext;
.super Ljava/lang/Object;
.source "CurrentCipherSuiteExtractorFromHttpContext.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractor;


# instance fields
.field private final httpContext:Lorg/apache/http/protocol/HttpContext;

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method private constructor <init>(Lorg/apache/http/protocol/HttpContext;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromHttpContext;->log:Lorg/apache/commons/logging/Log;

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromHttpContext;->httpContext:Lorg/apache/http/protocol/HttpContext;

    return-void
.end method

.method static createDefault(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractor;
    .locals 1

    new-instance v0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromHttpContext;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    return-object v0
.end method


# virtual methods
.method public extractCurrentCipherSuiteName()Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromHttpContext;->httpContext:Lorg/apache/http/protocol/HttpContext;

    if-eqz v4, :cond_4

    const/4 v1, 0x0

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromHttpContext;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v5, "http.connection"

    invoke-interface {v4, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v4, v0, Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v4, :cond_2

    move-object v1, v0

    check-cast v1, Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v1}, Lorg/apache/http/conn/ManagedClientConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v3

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromHttpContext;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sslSession="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromHttpContext;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connection.getClass()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromHttpContext;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connection="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromHttpContext;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "httpContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromHttpContext;->httpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0
.end method
