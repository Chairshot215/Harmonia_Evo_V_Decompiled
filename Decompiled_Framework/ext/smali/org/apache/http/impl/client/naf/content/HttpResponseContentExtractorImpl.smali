.class public Lorg/apache/http/impl/client/naf/content/HttpResponseContentExtractorImpl;
.super Lorg/apache/http/impl/client/naf/content/HttpContentExtractorAbstract;
.source "HttpResponseContentExtractorImpl.java"


# instance fields
.field private final httpResponse:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/http/impl/client/naf/content/HttpContentExtractorAbstract;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/content/HttpResponseContentExtractorImpl;->httpResponse:Lorg/apache/http/HttpResponse;

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

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/content/HttpResponseContentExtractorImpl;->httpResponse:Lorg/apache/http/HttpResponse;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/content/HttpResponseContentExtractorImpl;->getEntityReplaceTypeIfNecessary()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/content/HttpResponseContentExtractorImpl;->getHttpContent(Lorg/apache/http/HttpEntity;)Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method protected getEntityReplaceTypeIfNecessary()Lorg/apache/http/HttpEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/content/HttpResponseContentExtractorImpl;->httpResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lorg/apache/http/entity/BufferedHttpEntity;

    if-nez v2, :cond_0

    new-instance v0, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v0, v1}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/content/HttpResponseContentExtractorImpl;->httpResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v2, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v1, v0

    :cond_0
    return-object v1
.end method
