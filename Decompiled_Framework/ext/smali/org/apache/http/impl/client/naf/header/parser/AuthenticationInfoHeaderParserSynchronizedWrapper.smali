.class public Lorg/apache/http/impl/client/naf/header/parser/AuthenticationInfoHeaderParserSynchronizedWrapper;
.super Ljava/lang/Object;
.source "AuthenticationInfoHeaderParserSynchronizedWrapper.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/header/parser/AuthenticationInfoHeaderParser;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;

.field private final unprotectedParser:Lorg/apache/http/impl/client/naf/header/parser/AuthenticationInfoHeaderParser;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/naf/header/parser/AuthenticationInfoHeaderParser;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/header/parser/AuthenticationInfoHeaderParserSynchronizedWrapper;->log:Lorg/apache/commons/logging/Log;

    sget v0, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/parser/AuthenticationInfoHeaderParserSynchronizedWrapper;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuthenticationInfoHeaderParserSynchronizedWrapper()   unprotectedParser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unprotectedParser parameter must be not null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/parser/AuthenticationInfoHeaderParserSynchronizedWrapper;->unprotectedParser:Lorg/apache/http/impl/client/naf/header/parser/AuthenticationInfoHeaderParser;

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/header/parser/HeaderParserException;
        }
    .end annotation

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/parser/AuthenticationInfoHeaderParserSynchronizedWrapper;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse()#started   input="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    sget-object v2, Lorg/apache/http/impl/client/naf/header/parser/SynchronizedHeaderParserFactory;->authenticationInfoHeaderParserSynchronizer:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/parser/AuthenticationInfoHeaderParserSynchronizedWrapper;->unprotectedParser:Lorg/apache/http/impl/client/naf/header/parser/AuthenticationInfoHeaderParser;

    invoke-interface {v1, p1}, Lorg/apache/http/impl/client/naf/header/parser/AuthenticationInfoHeaderParser;->parse(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;

    move-result-object v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/parser/AuthenticationInfoHeaderParserSynchronizedWrapper;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse()#finished   result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
