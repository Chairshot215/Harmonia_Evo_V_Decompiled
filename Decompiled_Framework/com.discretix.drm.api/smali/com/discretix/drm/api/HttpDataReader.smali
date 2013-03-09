.class public Lcom/discretix/drm/api/HttpDataReader;
.super Lcom/discretix/drm/api/IDxDataReader;
.source "HttpDataReader.java"


# instance fields
.field private mHttpAgent:Lcom/discretix/drm/api/CDxJavaHttpAgent;

.field private mHttpHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field private mHttpPass:Ljava/lang/String;

.field private mHttpRequest:Lcom/discretix/drm/api/IDxHttpRequest;

.field private mHttpResult:I

.field private mHttpUser:Ljava/lang/String;

.field private mRealm:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Lcom/discretix/drm/api/IDxDataReader;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/discretix/drm/api/HttpDataReader;->mUrl:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpResult:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpRequest:Lcom/discretix/drm/api/IDxHttpRequest;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpHeaders:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/discretix/drm/api/IDxHttpRequest;[Lorg/apache/http/Header;)V
    .locals 3

    invoke-direct {p0}, Lcom/discretix/drm/api/IDxDataReader;-><init>()V

    iput-object p1, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpRequest:Lcom/discretix/drm/api/IDxHttpRequest;

    const/4 v1, 0x0

    iput v1, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpResult:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpHeaders:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpHeaders:Ljava/util/ArrayList;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpAgent:Lcom/discretix/drm/api/CDxJavaHttpAgent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpAgent:Lcom/discretix/drm/api/CDxJavaHttpAgent;

    invoke-virtual {v0}, Lcom/discretix/drm/api/CDxJavaHttpAgent;->closeResponse()V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/discretix/drm/api/HttpDataReader;->close()V

    return-void
.end method

.method public getDataStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpAgent:Lcom/discretix/drm/api/CDxJavaHttpAgent;

    invoke-virtual {v0}, Lcom/discretix/drm/api/CDxJavaHttpAgent;->getResponseBody()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()[Lorg/apache/http/Header;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpAgent:Lcom/discretix/drm/api/CDxJavaHttpAgent;

    invoke-virtual {v0}, Lcom/discretix/drm/api/CDxJavaHttpAgent;->getResponseHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpAgent:Lcom/discretix/drm/api/CDxJavaHttpAgent;

    invoke-virtual {v0}, Lcom/discretix/drm/api/CDxJavaHttpAgent;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpResult()I
    .locals 1

    iget v0, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpResult:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpAgent:Lcom/discretix/drm/api/CDxJavaHttpAgent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lcom/discretix/drm/api/HttpDataReader;->getHeaderByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpAgent:Lcom/discretix/drm/api/CDxJavaHttpAgent;

    invoke-virtual {v0}, Lcom/discretix/drm/api/CDxJavaHttpAgent;->getRealm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/discretix/drm/api/IDxDrmCoreClient;[Lorg/apache/http/Header;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v1, Lcom/discretix/drm/api/CDxJavaHttpAgent;

    invoke-direct {v1}, Lcom/discretix/drm/api/CDxJavaHttpAgent;-><init>()V

    iput-object v1, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpAgent:Lcom/discretix/drm/api/CDxJavaHttpAgent;

    iget-object v1, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpPass:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpUser:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpAgent:Lcom/discretix/drm/api/CDxJavaHttpAgent;

    iget-object v2, p0, Lcom/discretix/drm/api/HttpDataReader;->mRealm:Ljava/lang/String;

    iget-object v3, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpUser:Ljava/lang/String;

    iget-object v4, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpPass:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/discretix/drm/api/CDxJavaHttpAgent;->setHttpCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpHeaders:Ljava/util/ArrayList;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/discretix/drm/api/HttpDataReader;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpAgent:Lcom/discretix/drm/api/CDxJavaHttpAgent;

    iget-object v3, p0, Lcom/discretix/drm/api/HttpDataReader;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpHeaders:Ljava/util/ArrayList;

    new-array v4, v5, [Lorg/apache/http/Header;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/http/Header;

    check-cast v1, [Lorg/apache/http/Header;

    invoke-virtual {v2, v3, v1}, Lcom/discretix/drm/api/CDxJavaHttpAgent;->getUrl(Ljava/lang/String;[Lorg/apache/http/Header;)V

    :goto_1
    iget-object v1, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpAgent:Lcom/discretix/drm/api/CDxJavaHttpAgent;

    invoke-virtual {v1}, Lcom/discretix/drm/api/CDxJavaHttpAgent;->getHttpResult()I

    move-result v1

    iput v1, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpResult:I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpRequest:Lcom/discretix/drm/api/IDxHttpRequest;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpAgent:Lcom/discretix/drm/api/CDxJavaHttpAgent;

    iget-object v3, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpRequest:Lcom/discretix/drm/api/IDxHttpRequest;

    iget-object v1, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpHeaders:Ljava/util/ArrayList;

    new-array v4, v5, [Lorg/apache/http/Header;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/http/Header;

    check-cast v1, [Lorg/apache/http/Header;

    invoke-virtual {v2, v3, v1}, Lcom/discretix/drm/api/CDxJavaHttpAgent;->sendRequest(Lcom/discretix/drm/api/IDxHttpRequest;[Lorg/apache/http/Header;)V

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    sget-object v2, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_BAD_ARGUMENTS:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-direct {v1, v2}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v1
.end method

.method public setHttpCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpUser:Ljava/lang/String;

    iput-object p3, p0, Lcom/discretix/drm/api/HttpDataReader;->mHttpPass:Ljava/lang/String;

    iput-object p1, p0, Lcom/discretix/drm/api/HttpDataReader;->mRealm:Ljava/lang/String;

    return-void
.end method
