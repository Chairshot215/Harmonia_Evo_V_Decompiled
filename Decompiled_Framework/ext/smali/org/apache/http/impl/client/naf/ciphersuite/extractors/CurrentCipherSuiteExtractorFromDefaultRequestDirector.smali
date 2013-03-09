.class public Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;
.super Ljava/lang/Object;
.source "CurrentCipherSuiteExtractorFromDefaultRequestDirector.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractor;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;

.field private final requestDirector:Lorg/apache/http/client/RequestDirector;


# direct methods
.method private constructor <init>(Lorg/apache/http/client/RequestDirector;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->requestDirector:Lorg/apache/http/client/RequestDirector;

    return-void
.end method

.method static createDefault(Lorg/apache/http/client/RequestDirector;)Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractor;
    .locals 1

    new-instance v0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;-><init>(Lorg/apache/http/client/RequestDirector;)V

    return-object v0
.end method


# virtual methods
.method public extractCurrentCipherSuiteName()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->obtainUnsafe()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method obtainUnsafe()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->requestDirector:Lorg/apache/http/client/RequestDirector;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->requestDirector:Lorg/apache/http/client/RequestDirector;

    instance-of v7, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;

    if-eqz v7, :cond_5

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->requestDirector:Lorg/apache/http/client/RequestDirector;

    check-cast v0, Lorg/apache/http/impl/client/DefaultRequestDirector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v7, "managedConn"

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    instance-of v7, v4, Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v7, :cond_2

    move-object v2, v4

    check-cast v2, Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v6

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    sget v7, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v7, v7, 0x1

    if-lez v7, :cond_0

    iget-object v7, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sslSession="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget v7, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v7, v7, 0x1

    if-lez v7, :cond_0

    iget-object v7, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "managedConnFieldValue.getClass()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget v7, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v7, v7, 0x1

    if-lez v7, :cond_0

    iget-object v7, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "managedConnFieldValue="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    sget v7, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v7, v7, 0x1

    if-lez v7, :cond_0

    iget-object v7, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "managedConnField="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    sget v7, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v7, v7, 0x1

    if-lez v7, :cond_0

    iget-object v7, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestDirector.getClass()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->requestDirector:Lorg/apache/http/client/RequestDirector;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    sget v7, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v7, v7, 0x1

    if-lez v7, :cond_0

    iget-object v7, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestDirector="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->requestDirector:Lorg/apache/http/client/RequestDirector;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
