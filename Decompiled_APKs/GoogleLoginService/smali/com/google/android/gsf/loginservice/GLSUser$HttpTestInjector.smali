.class public Lcom/google/android/gsf/loginservice/GLSUser$HttpTestInjector;
.super Ljava/lang/Object;
.source "GLSUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/loginservice/GLSUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpTestInjector"
.end annotation


# instance fields
.field mTestResponse:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2579
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser$HttpTestInjector;->mTestResponse:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public httpPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lorg/apache/http/Header;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 7
    .parameter "url"
    .parameter "entity"
    .parameter "header"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 2585
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GLSUser$HttpTestInjector;->mTestResponse:Ljava/util/Map;

    invoke-interface {v3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2586
    .local v0, mockResponse:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2588
    .local v2, sc:I
    if-eqz v0, :cond_0

    .line 2589
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GLSUser$HttpTestInjector;->mTestResponse:Ljava/util/Map;

    invoke-interface {v3, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2590
    new-instance v1, Lorg/apache/http/message/BasicHttpResponse;

    new-instance v3, Lorg/apache/http/message/BasicStatusLine;

    new-instance v4, Lorg/apache/http/ProtocolVersion;

    const-string v5, "HTTP"

    invoke-direct {v4, v5, v6, v6}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0xc8

    const-string v6, ""

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {v1, v3}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    .line 2592
    .local v1, response:Lorg/apache/http/HttpResponse;
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v3, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 2595
    .end local v1           #response:Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public injectTestResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "gaiaResponse"

    .prologue
    .line 2613
    if-nez p2, :cond_0

    .line 2614
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser$HttpTestInjector;->mTestResponse:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2616
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser$HttpTestInjector;->mTestResponse:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2617
    return-void
.end method
