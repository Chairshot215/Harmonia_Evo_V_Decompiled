.class public Lorg/apache/http/impl/client/naf/content/HttpRequestContentExtractorImpl;
.super Lorg/apache/http/impl/client/naf/content/HttpContentExtractorAbstract;
.source "HttpRequestContentExtractorImpl.java"


# instance fields
.field private final httpRequest:Lorg/apache/http/HttpRequest;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpRequest;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/http/impl/client/naf/content/HttpContentExtractorAbstract;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/content/HttpRequestContentExtractorImpl;->httpRequest:Lorg/apache/http/HttpRequest;

    return-void
.end method


# virtual methods
.method public extractContent()Lorg/apache/http/impl/client/naf/content/HttpEntityContent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->EMPTY:Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/content/HttpRequestContentExtractorImpl;->httpRequest:Lorg/apache/http/HttpRequest;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/content/HttpRequestContentExtractorImpl;->httpRequest:Lorg/apache/http/HttpRequest;

    instance-of v2, v2, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/content/HttpRequestContentExtractorImpl;->getEntityReplaceTypeIfNecessary()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/content/HttpRequestContentExtractorImpl;->getHttpContent(Lorg/apache/http/HttpEntity;)Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method protected getEntityReplaceTypeIfNecessary()Lorg/apache/http/HttpEntity;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/content/HttpRequestContentExtractorImpl;->httpRequest:Lorg/apache/http/HttpRequest;

    check-cast v1, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v3, v2, Lorg/apache/http/entity/BufferedHttpEntity;

    if-nez v3, :cond_0

    new-instance v0, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v0, v2}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v2, v0

    :cond_0
    return-object v2
.end method
