.class public Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;
.super Ljava/lang/Object;
.source "NafRequestExecutorWrapperRedirectionHandler.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;

.field private final nafRequestExecutor:Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;

.field private final redirectHandler:Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandler;

.field private useRedirectionHandling:Z


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;-><init>(Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->redirectHandler:Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandler;

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->nafRequestExecutor:Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->useRedirectionHandling:Z

    return-void
.end method


# virtual methods
.method public enableRedirectionHandlingForGba()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->useRedirectionHandling:Z

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "   GBA redirection handling is enabled now."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-void
.end method

.method public executeRequestSending(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeRequestSending()#started   nafRequestWrapper="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->useRedirectionHandling:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "   It is GBA flow, redirection responses are handled."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->executeRequestSendingWithRedirection(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;

    move-result-object v0

    :goto_0
    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeRequestSending()#finished   responseWrapper="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-object v0

    :cond_2
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "   It isn\'t GBA flow, redirection responses are not handled."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->executeRequestSendingUsual(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;

    move-result-object v0

    goto :goto_0
.end method

.method public executeRequestSendingUsual(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeRequestSendingUsual()#started   nafRequestWrapper="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->nafRequestExecutor:Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;

    invoke-interface {v1, p1}, Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;->executeRequestSending(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;

    move-result-object v0

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeRequestSendingUsual()#finished   responseWrapper="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public executeRequestSendingWithRedirection(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeRequestSendingWithRedirection()#started   nafRequestWrapper="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->redirectHandler:Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandler;

    invoke-interface {v1, p1}, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandler;->executeWithRedirectionHandling(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;

    move-result-object v0

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeRequestSendingWithRedirection()#finished   responseWrapper="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method
