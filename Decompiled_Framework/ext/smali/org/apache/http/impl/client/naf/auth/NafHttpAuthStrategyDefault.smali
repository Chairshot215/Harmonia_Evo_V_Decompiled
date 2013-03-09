.class public Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;
.super Ljava/lang/Object;
.source "NafHttpAuthStrategyDefault.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategy;


# instance fields
.field private final androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

.field private final androidContextProvider:Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

.field private final gbaAuthProvider:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

.field private final gbaSupportPermissionRequestChecker:Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestChecker;

.field private isGbaSupportPossibleHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/apache/commons/logging/Log;

.field private final requestUpdater:Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdater;

.field private final uaSecurityProtocolIdCalculator:Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculator;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->isGbaSupportPossibleHolder:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "NafHttpAuthStrategyDefault()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    invoke-direct {p0}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->initSharedResources()V

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->getGbaSupportPermissionRequestChecker()Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestChecker;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->gbaSupportPermissionRequestChecker:Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestChecker;

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->getAndroidContextProvider()Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->androidContextProvider:Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->androidContextProvider:Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;->getContext()Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    invoke-static {v0}, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->init(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)V

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->getGbaAuthProvider()Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->gbaAuthProvider:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    new-instance v0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;

    new-instance v1, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapperDefault;

    invoke-direct {v1}, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapperDefault;-><init>()V

    invoke-direct {v0, v2, v1}, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;-><init>([BLorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->uaSecurityProtocolIdCalculator:Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculator;

    new-instance v0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterDefault;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterDefault;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->requestUpdater:Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdater;

    return-void
.end method

.method private initSharedResources()V
    .locals 1

    invoke-static {}, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->instance()Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->init()V

    return-void
.end method


# virtual methods
.method getAndroidContextProvider()Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;
    .locals 1

    invoke-static {}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->instance()Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

    move-result-object v0

    return-object v0
.end method

.method getEntityBodyFromRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/naf/content/HttpEntityContent;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "getEntityBodyFromRequest()#started"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/naf/content/HttpRequestContentExtractorImpl;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/naf/content/HttpRequestContentExtractorImpl;-><init>(Lorg/apache/http/HttpRequest;)V

    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/content/HttpContentExtractor;->extractContent()Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    move-result-object v1

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "getEntityBodyFromRequest()#finished"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method getEntityBodyFromResponse(Lorg/apache/http/HttpResponse;)Lorg/apache/http/impl/client/naf/content/HttpEntityContent;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "getEntityBodyFromResponse()#started"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/naf/content/HttpResponseContentExtractorImpl;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/naf/content/HttpResponseContentExtractorImpl;-><init>(Lorg/apache/http/HttpResponse;)V

    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/content/HttpContentExtractor;->extractContent()Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    move-result-object v1

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "getEntityBodyFromResponse()#finished"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method getGbaAuthData(Lorg/apache/http/impl/client/naf/gba/GbaType;Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    .locals 6

    sget v3, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_0

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "getGbaAuthData()#started"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->gbaAuthProvider:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    invoke-interface {v3, p1, p2, p3}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;->provideAuth(Lorg/apache/http/impl/client/naf/gba/GbaType;Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    :try_end_0
    .catch Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    sget v3, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_1

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "getGbaAuthData()#finished"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-object v2

    :catch_0
    move-exception v0

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "During attempt to use GBA service (Keys) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GBA keys are not available : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getGbaAuthProvider()Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;
    .locals 1

    invoke-static {}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->instance()Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    move-result-object v0

    return-object v0
.end method

.method getGbaSupportPermissionRequestChecker()Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestChecker;
    .locals 1

    new-instance v0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;

    invoke-direct {v0}, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;-><init>()V

    return-object v0
.end method

.method getPasswordBase64(Lorg/apache/http/impl/client/naf/gba/GbaAuthData;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/base64/Base64ConversionException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/gba/GbaAuthData;->getKsNaf()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lorg/apache/http/impl/client/naf/gba/base64/Base64Keeper;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getSupportedGbaType()Lorg/apache/http/impl/client/naf/gba/GbaType;
    .locals 5

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "getSupportedGbaType()#started"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    sget-object v1, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_NOT_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->gbaAuthProvider:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    invoke-interface {v2}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;->getSupportedGbaType()Lorg/apache/http/impl/client/naf/gba/GbaType;
    :try_end_0
    .catch Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportedGbaType()#finished   gbaType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "During attempt to use GBA service (Type): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isItPossibleToSupportGba()Z
    .locals 5

    const/4 v4, 0x0

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "isItPossibleToSupportGba()#started"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->isGbaSupportPossibleHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   cached value : gbaSupportIsPossible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    if-nez v0, :cond_1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    invoke-interface {v1}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;->isThisContextOfGbaService()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "   The current context is a context of GBA service."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->isGbaSupportPossibleHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isItPossibleToSupportGba()#finished   gbaSupportIsPossible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_3
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "   The current context is NOT a context of GBA service."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->gbaSupportPermissionRequestChecker:Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestChecker;

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    invoke-interface {v1, v2}, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestChecker;->isCurrentProcessAllowedToUseGba(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "   The USE_GBA_SERVICE permission request is in place."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "   The GBA permission wasn\'t requested for this process."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "   androidApplicationContext == null"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method parserFirstNafResponseHeaders(Lorg/apache/http/HttpResponse;)Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/header/parser/HeaderParserException;
        }
    .end annotation

    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "parserFirstNafResponseHeaders()#started"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    const-string v4, "WWW-Authenticate"

    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_1
    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_2

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "We need to parse WWW-Authenticate header   value is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_2
    invoke-static {}, Lorg/apache/http/impl/client/naf/header/parser/SynchronizedHeaderParserFactory;->createSynchronizedWwwAuthenticateHeaderParser()Lorg/apache/http/impl/client/naf/header/parser/WwwAuthenticateHeaderParser;

    move-result-object v2

    invoke-interface {v2, v3}, Lorg/apache/http/impl/client/naf/header/parser/WwwAuthenticateHeaderParser;->parse(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;

    move-result-object v0

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parserFirstNafResponseHeaders()#completed   parsedWwwAuthenticateHeader="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-object v0
.end method

.method parserSecondNafResponseHeaders(Lorg/apache/http/HttpResponse;)Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/header/parser/HeaderParserException;
        }
    .end annotation

    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "parserSecondNafResponseHeaders()#started"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    const-string v4, "Authentication-Info"

    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    return-object v3

    :cond_3
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/apache/http/impl/client/naf/header/parser/SynchronizedHeaderParserFactory;->createSynchronizedAuthenticationInfoHeaderParser()Lorg/apache/http/impl/client/naf/header/parser/AuthenticationInfoHeaderParser;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/http/impl/client/naf/header/parser/AuthenticationInfoHeaderParser;->parse(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;

    move-result-object v3

    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_2

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "parserSecondNafResponseHeaders()#finished"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public performAuthExecution(Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/HttpResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;,
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    sget v3, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_0

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "performAuthExecution()#started"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    new-instance v2, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;

    invoke-direct {v2, p1}, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;-><init>(Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;)V

    :try_start_0
    invoke-virtual {p0, v2, p2}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->performAuthExecutionUnsafe(Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    sget v3, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_1

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "performAuthExecution()#finished"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/impl/client/naf/header/parser/HeaderParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/impl/client/naf/realm/NafRealmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/http/impl/client/naf/AuthInfoException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/apache/http/impl/client/naf/gba/base64/Base64ConversionException; {:try_start_0 .. :try_end_0} :catch_6

    :cond_1
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->gbaAuthProvider:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    invoke-interface {v3}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;->promiseToReleaseInNearTime()V

    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v3, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->gbaAuthProvider:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    invoke-interface {v4}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;->promiseToReleaseInNearTime()V

    throw v3

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v3, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/header/parser/HeaderParserException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v0

    new-instance v3, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/realm/NafRealmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_3
    move-exception v0

    new-instance v3, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_4
    move-exception v0

    new-instance v3, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/AuthInfoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_5
    move-exception v0

    new-instance v3, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_6
    move-exception v0

    new-instance v3, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/gba/base64/Base64ConversionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method performAuthExecutionUnsafe(Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/HttpResponse;
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Lorg/apache/http/impl/client/naf/header/parser/HeaderParserException;,
            Lorg/apache/http/impl/client/naf/realm/NafRealmException;,
            Ljava/security/NoSuchAlgorithmException;,
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;,
            Lorg/apache/http/impl/client/naf/AuthInfoException;,
            Ljava/net/URISyntaxException;,
            Lorg/apache/http/impl/client/naf/gba/base64/Base64ConversionException;
        }
    .end annotation

    sget v37, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v37, v37, 0x2

    if-lez v37, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "performAuthExecutionUnsafe()#started"

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->isItPossibleToSupportGba()Z

    move-result v26

    if-eqz v26, :cond_a

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;->enableRedirectionHandlingForGba()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->getSupportedGbaType()Lorg/apache/http/impl/client/naf/gba/GbaType;

    move-result-object v24

    sget-object v37, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_ME_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_1

    sget-object v37, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_U_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_8

    :cond_1
    sget-object v23, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_ME_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    sget v37, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v37, v37, 0x1

    if-lez v37, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "TEMPORARY FIX, we always use gbaTypeForNafIndication="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->getCurrentHttpRequest()Lorg/apache/http/HttpRequest;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->requestUpdater:Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdater;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdater;->update(Lorg/apache/http/HttpRequest;Lorg/apache/http/impl/client/naf/gba/GbaType;)V

    new-instance v19, Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdaterImpl;

    invoke-direct/range {v19 .. v19}, Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdaterImpl;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdater;->updateRequestWithCachedAuthorizationHeader(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)V

    invoke-virtual/range {p0 .. p2}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->sendFirstRequest(Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/HttpResponse;

    move-result-object v21

    if-eqz v21, :cond_4

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v37

    const/16 v38, 0x191

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "Not 401 response was received. Authorization is not required or completed already."

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    sget v37, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v37, v37, 0x4

    if-lez v37, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "performAuthExecutionUnsafe()#finished   firstNafResponse="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-object v21

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "401 response was received. We need to calculate digest and send second request."

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->parserFirstNafResponseHeaders(Lorg/apache/http/HttpResponse;)Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "Obtaining NAF\'s FQDN from realm."

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    invoke-virtual/range {v36 .. v36}, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v31

    new-instance v29, Lorg/apache/http/impl/client/naf/realm/NafRealmParserImpl;

    invoke-direct/range {v29 .. v29}, Lorg/apache/http/impl/client/naf/realm/NafRealmParserImpl;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/http/impl/client/naf/realm/NafRealmParser;->parse(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/realm/NafRealmParsed;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/apache/http/impl/client/naf/realm/NafRealmDataExtractor;->getNafFqdn(Lorg/apache/http/impl/client/naf/gba/GbaType;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "   nafFqdn="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "   gbaTypeForNafIndication="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "Obtaining current Ua Security Protocol Id."

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->uaSecurityProtocolIdCalculator:Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculator;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculator;->getUaSecurityProtocolId()Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "Obtaining the NAF keys from GBA service."

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->getGbaAuthData(Lorg/apache/http/impl/client/naf/gba/GbaType;Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;

    move-result-object v22

    if-nez v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "It is impossible to obtain keys from GBA service now, possible reasons are: no GBA service or it was killed, some problems on server side, network timeout."

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "Preparing parameters for AKA digest request calculation."

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    invoke-virtual/range {v36 .. v36}, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lorg/apache/http/impl/client/naf/wrapper/Qop;->parseServerQop(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/wrapper/Qop;

    move-result-object v5

    invoke-virtual/range {v36 .. v36}, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;->parseServerAlgorithm(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/wrapper/Algorithm;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/impl/client/naf/gba/GbaAuthData;->getBtid()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->getPasswordBase64(Lorg/apache/http/impl/client/naf/gba/GbaAuthData;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v36 .. v36}, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;->create()Lorg/apache/http/impl/client/naf/wrapper/Cnonce;

    move-result-object v11

    invoke-static {}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;->createNext()Lorg/apache/http/impl/client/naf/wrapper/NonceCount;

    move-result-object v12

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->parse(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    move-result-object v13

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->getEntityBodyFromRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    move-result-object v15

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/apache/http/impl/client/naf/realm/NafRealmDataExtractor;->getRealmPart(Lorg/apache/http/impl/client/naf/gba/GbaType;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "   newRealm="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "   gbaTypeForNafIndication="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    new-instance v4, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;

    invoke-direct/range {v4 .. v15}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;-><init>(Lorg/apache/http/impl/client/naf/wrapper/Qop;Lorg/apache/http/impl/client/naf/wrapper/Algorithm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/naf/wrapper/Cnonce;Lorg/apache/http/impl/client/naf/wrapper/NonceCount;Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;Ljava/lang/String;Lorg/apache/http/impl/client/naf/content/HttpEntityContent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "Running digest AKA calculation algorithm."

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    new-instance v16, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;-><init>()V

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculator;->calculateRequestDigest(Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "updating second NAF request with Authorization header."

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    invoke-virtual/range {v36 .. v36}, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v37

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->updateNafRequestWithAuthorizationHeader(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;Ljava/lang/String;Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p2}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->sendSecondRequest(Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/HttpResponse;

    move-result-object v33

    if-eqz v33, :cond_6

    invoke-interface/range {v33 .. v33}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v37

    const/16 v38, 0xc8

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "200OK was received as the second response from NAF"

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->parserSecondNafResponseHeaders(Lorg/apache/http/HttpResponse;)Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->getEntityBodyFromResponse(Lorg/apache/http/HttpResponse;)Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    move-result-object v20

    new-instance v30, Lorg/apache/http/impl/client/naf/NafResponseResult;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->getOpaque()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    move-object/from16 v2, v37

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/http/impl/client/naf/NafResponseResult;-><init>(Lorg/apache/http/impl/client/naf/content/HttpEntityContent;Ljava/lang/String;Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "Running of Authentication-Info header validation"

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    new-instance v17, Lorg/apache/http/impl/client/naf/AuthInfoResponseValidatorDefault;

    invoke-direct/range {v17 .. v17}, Lorg/apache/http/impl/client/naf/AuthInfoResponseValidatorDefault;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/impl/client/naf/AuthInfoResponseValidator;->validate(Lorg/apache/http/impl/client/naf/NafResponseResult;Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculator;)V

    :cond_6
    sget v37, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v37, v37, 0x4

    if-lez v37, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "performAuthExecutionUnsafe()#finished   secondNafResponse="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_7
    move-object/from16 v21, v33

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "It is impossible to support GBA now (many possible reasons: no UICC, no permissions, no GBA service, broken dependencies, etc.), then it will be just usual HTTP."

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual/range {p0 .. p2}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->sendFirstRequest(Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/HttpResponse;

    move-result-object v35

    sget v37, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v37, v37, 0x4

    if-lez v37, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "performAuthExecutionUnsafe()#finished   usualNafResponse="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_9
    move-object/from16 v21, v35

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "It is impossible to support GBA now (many possible reasons: no Android Context, current client is GBA service, etc.), then it will be just usual HTTP."

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method sendFirstRequest(Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "sendFirstRequest()#started"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;->executeRequestSending(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->uaSecurityProtocolIdCalculator:Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculator;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->getUsedCipherSuiteAndroidName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculator;->setLastUsedCipherSuiteName(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v0

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "sendFirstRequest()#finished"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method sendSecondRequest(Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "sendSecondRequest()#started"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;->executeRequestSending(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->uaSecurityProtocolIdCalculator:Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculator;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->getUsedCipherSuiteAndroidName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculator;->setLastUsedCipherSuiteName(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v0

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "sendSecondRequest()#finished"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method updateNafRequestWithAuthorizationHeader(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;Ljava/lang/String;Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;Ljava/lang/String;)V
    .locals 7

    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "updateNafRequestWithAuthorizationHeader()#started"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->getCurrentHttpHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->getCurrentHttpRequest()Lorg/apache/http/HttpRequest;

    move-result-object v3

    new-instance v0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;

    invoke-direct {v0}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;-><init>()V

    invoke-virtual {v0, p2}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->setOpaque(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getNonce()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->setNonce(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getRealm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->setRealm(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getAlgorithm()Lorg/apache/http/impl/client/naf/wrapper/Algorithm;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->setAlgorithm(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getQop()Lorg/apache/http/impl/client/naf/wrapper/Qop;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/http/impl/client/naf/wrapper/Qop;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->setQop(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getCnonce()Lorg/apache/http/impl/client/naf/wrapper/Cnonce;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->setCnonce(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getNonceCount()Lorg/apache/http/impl/client/naf/wrapper/NonceCount;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->setNc(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getDigestUriValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->setUri(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->setUsername(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->setResponse(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->buildHttpHeaderValue()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Authorization"

    invoke-interface {v3, v4, v1}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateNafRequestWithAuthorizationHeader(...)#   New Authorization header value is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    invoke-static {}, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKeeper;->instance()Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCache;

    move-result-object v4

    invoke-interface {v4, p1, v0}, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCache;->putItem(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;)V

    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_1

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "updateNafRequestWithAuthorizationHeader()#completed"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
