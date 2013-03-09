.class public Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorCompound;
.super Ljava/lang/Object;
.source "CurrentCipherSuiteExtractorCompound.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractor;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;

.field private final providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractor;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorCompound;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorCompound;->providers:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorCompound;->providers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public static createDefault(Lorg/apache/http/client/RequestDirector;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorCompound;
    .locals 2

    new-instance v0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorCompound;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorCompound;-><init>(Ljava/util/List;)V

    invoke-static {p0}, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->createDefault(Lorg/apache/http/client/RequestDirector;)Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorCompound;->addProvider(Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractor;)V

    invoke-static {p1}, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromHttpContext;->createDefault(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorCompound;->addProvider(Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractor;)V

    return-object v0
.end method

.method static createEmpty()Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorCompound;
    .locals 2

    new-instance v0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorCompound;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorCompound;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addProvider(Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractor;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorCompound;->providers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized extractCurrentCipherSuiteName()Ljava/lang/String;
    .locals 8

    monitor-enter p0

    :try_start_0
    sget v5, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v5, v5, 0x2

    if-lez v5, :cond_0

    iget-object v5, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorCompound;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extractCurrentCipherSuiteName()#started   providers.size()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorCompound;->providers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    iget-object v5, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorCompound;->providers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v4}, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractor;->extractCurrentCipherSuiteName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-lez v5, :cond_1

    move-object v1, v0

    :cond_2
    :try_start_2
    sget v5, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v5, v5, 0x4

    if-lez v5, :cond_3

    iget-object v5, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorCompound;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extractCurrentCipherSuiteName()#finished   currentCipherSuiteNameRes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v2

    :try_start_3
    iget-object v5, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorCompound;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!!! Some problems with cipher suite extraction !!!   extractor="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   errorMessage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
