.class public final Lcom/discretix/drm/api/CDxJavaHttpAgent;
.super Ljava/lang/Object;
.source "CDxJavaHttpAgent.java"


# static fields
.field public static final DX_USER_AGENT_HDR:Ljava/lang/String; = "User-Agent"

.field public static final DX_WWW_AUTHENTICATE_HDR:Ljava/lang/String; = "WWW-Authenticate"

.field public static final DX_X_WAP_PROFILE_HDR:Ljava/lang/String; = "x-wap-profile"

.field private static final TAG:Ljava/lang/String; = "CDxJavaHttpAgent"

.field private static final challengeTag:Ljava/lang/String; = "challenge="

.field private static mLA_URL:Ljava/lang/String;


# instance fields
.field private headersAdded:Ljava/util/Map;

.field private mBAOSResponseBody:Ljava/io/ByteArrayOutputStream;

.field private mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private mDebugMode:Z

.field private mHttpPass:Ljava/lang/String;

.field private mHttpUser:Ljava/lang/String;

.field private mIsLAResponse:Z

.field private mParams:Lorg/apache/http/params/HttpParams;

.field private mRealm:Ljava/lang/String;

.field private mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

.field private mResponse:Lorg/apache/http/HttpResponse;

.field private mResponseBody:Ljava/io/InputStream;

.field private mResponseHeaders:[Lorg/apache/http/Header;

.field private mStatusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mLA_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "JavaHTTPLog"

    invoke-static {v0, v2}, Lcom/discretix/drm/api/DxDrmCore;->DxGetConfigBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mDebugMode:Z

    iput v2, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mStatusCode:I

    iput-object v1, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iput-object v1, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mResponseBody:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mResponseHeaders:[Lorg/apache/http/Header;

    iput-object v1, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mResponse:Lorg/apache/http/HttpResponse;

    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    iput-object v0, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRealm:Ljava/lang/String;

    iput-object v1, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mBAOSResponseBody:Ljava/io/ByteArrayOutputStream;

    iput-boolean v2, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mIsLAResponse:Z

    return-void
.end method

.method private addHeaders(Lcom/discretix/drm/api/IDxHttpRequest;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    sget-object v6, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Lcom/discretix/drm/api/IDxHttpRequest;->GetNumOfHttpHeaders()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    :goto_0
    cmp-long v7, v4, v2

    if-gez v7, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v4, v5, v0, v1}, Lcom/discretix/drm/api/IDxHttpRequest;->GetHttpHeader(JLjava/lang/StringBuffer;Ljava/lang/StringBuffer;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v6

    sget-object v7, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v6, v7, :cond_0

    new-instance v7, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v7, v6}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v7

    :cond_0
    iget-object v7, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->headersAdded:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mDebugMode:Z

    if-eqz v7, :cond_1

    const-string v7, "CDxJavaHttpAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "header added: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v7, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->headersAdded:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-wide/16 v7, 0x1

    add-long/2addr v4, v7

    goto :goto_0

    :cond_3
    return-void
.end method

.method private doRequest()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    :try_start_0
    iget-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mHttpUser:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mHttpPass:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v9

    iget-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v10

    new-instance v11, Lorg/apache/http/auth/AuthScope;

    invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Ljava/net/URI;->getPort()I

    move-result v13

    iget-object v14, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRealm:Ljava/lang/String;

    invoke-direct {v11, v12, v13, v14}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v12, Lorg/apache/http/auth/UsernamePasswordCredentials;

    iget-object v13, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mHttpUser:Ljava/lang/String;

    iget-object v14, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mHttpPass:Ljava/lang/String;

    invoke-direct {v12, v13, v14}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11, v12}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    :cond_0
    iget-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    iget-object v11, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mParams:Lorg/apache/http/params/HttpParams;

    invoke-virtual {v10, v11}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    iget-boolean v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mDebugMode:Z

    if-eqz v10, :cond_1

    const-string v10, "CDxJavaHttpAgent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "doRequest: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v12}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v11, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v10, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    iput-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mResponse:Lorg/apache/http/HttpResponse;

    iget-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    iput v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mStatusCode:I

    iget-boolean v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mDebugMode:Z

    if-eqz v10, :cond_2

    const-string v10, "CDxJavaHttpAgent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "doRequest returned: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mStatusCode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mStatusCode:I

    const/16 v11, 0x191

    if-ne v10, v11, :cond_3

    iget-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v9

    iget-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v10

    iput-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mResponseHeaders:[Lorg/apache/http/Header;

    iget-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mResponse:Lorg/apache/http/HttpResponse;

    const-string v11, "WWW-Authenticate"

    invoke-interface {v10, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/discretix/drm/api/CDxJavaHttpAgent;->getRealm(Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRealm:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuffer;

    const/16 v10, 0x80

    invoke-direct {v7, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v6, Ljava/lang/StringBuffer;

    const/16 v10, 0x80

    invoke-direct {v6, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v4

    invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRealm:Ljava/lang/String;

    invoke-virtual {v4, v10, v11, v7, v6}, Lcom/discretix/drm/api/DxDrmClient;->GetHttpAuthenticationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v10

    new-instance v11, Lorg/apache/http/auth/AuthScope;

    invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Ljava/net/URI;->getPort()I

    move-result v13

    iget-object v14, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRealm:Ljava/lang/String;

    invoke-direct {v11, v12, v13, v14}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v12, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11, v12}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    iget-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v11, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v10, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    iput-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mResponse:Lorg/apache/http/HttpResponse;

    iget-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    iput v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mStatusCode:I

    :cond_3
    iget-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v10

    iput-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mResponseHeaders:[Lorg/apache/http/Header;

    iget-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    iput-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mResponseBody:Ljava/io/InputStream;

    iget-boolean v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mIsLAResponse:Z

    if-eqz v10, :cond_4

    iget v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mStatusCode:I

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_4

    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mBAOSResponseBody:Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0x800

    new-array v0, v10, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v8, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    iget-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mResponseBody:Ljava/io/InputStream;

    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_6

    iget-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mBAOSResponseBody:Ljava/io/ByteArrayOutputStream;

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v11, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_2
    const-string v10, "CDxJavahttpAgent"

    const-string v11, "body data IOException"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    iget v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mStatusCode:I

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_7

    const-string v10, "CDxJavaHttpAgent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "doRequest returned: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mStatusCode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v12}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_5
    :goto_2
    return-void

    :cond_6
    :try_start_3
    iget-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mBAOSResponseBody:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->flush()V

    const-string v10, "CDxJavahttpAgent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "response body len: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mBAOSResponseBody:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/io/ByteArrayInputStream;

    iget-object v11, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mBAOSResponseBody:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mResponseBody:Ljava/io/InputStream;

    iget-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mBAOSResponseBody:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v10, "CDxJavahttpAgent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "body data: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "<html>"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {}, Lcom/discretix/drm/api/DxPlatformUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.discretix.drm.intent.action.DX_HTTP_RESPONSE"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "DX_HTTP_RESPONSE_EXTRA"

    invoke-virtual {v2, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v10, "CDxJavahttpAgent"

    const-string v11, "Broadcast <html> response"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v5

    const-string v10, "CDxJavahttpAgent"

    const-string v11, ""

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    new-instance v10, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    sget-object v11, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_CANNOT_CONNECT_TO_SERVER:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-direct {v10, v11}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v10

    :cond_7
    :try_start_4
    iget-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mHttpUser:Ljava/lang/String;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mHttpPass:Ljava/lang/String;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v9

    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v4

    invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRealm:Ljava/lang/String;

    iget-object v12, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mHttpUser:Ljava/lang/String;

    iget-object v13, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mHttpPass:Ljava/lang/String;

    invoke-virtual {v4, v10, v11, v12, v13}, Lcom/discretix/drm/api/DxDrmClient;->AddHttpAuthenticationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    :catch_2
    move-exception v5

    const-string v10, "CDxJavahttpAgent"

    const-string v11, ""

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v10, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    new-instance v10, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    sget-object v11, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_CANNOT_CONNECT_TO_SERVER:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-direct {v10, v11}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v10
.end method

.method private getHttpURL(Lcom/discretix/drm/api/IDxHttpRequest;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1}, Lcom/discretix/drm/api/CDxJavaHttpAgent;->isLARequest(Lcom/discretix/drm/api/IDxHttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mLA_URL:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mDebugMode:Z

    if-eqz v0, :cond_0

    const-string v0, "CDxJavaHttpAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Specified LA_URL is used, which is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mLA_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mLA_URL:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/discretix/drm/api/IDxHttpRequest;->GetHttpUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRealm(Lorg/apache/http/Header;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_1

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\""

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 8

    const v7, 0xea60

    const/4 v6, 0x0

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    iput-object v5, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mResponseBody:Ljava/io/InputStream;

    iput-object v5, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mResponseHeaders:[Lorg/apache/http/Header;

    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v3, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v3, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mParams:Lorg/apache/http/params/HttpParams;

    iget-object v3, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mParams:Lorg/apache/http/params/HttpParams;

    const-string v4, "http.connection.timeout"

    invoke-interface {v3, v4, v7}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    iget-object v3, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mParams:Lorg/apache/http/params/HttpParams;

    const-string v4, "http.socket.timeout"

    invoke-interface {v3, v4, v7}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    iget-object v3, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mParams:Lorg/apache/http/params/HttpParams;

    const-string v4, "http.protocol.expect-continue"

    invoke-interface {v3, v4, v6}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->headersAdded:Ljava/util/Map;

    new-instance v2, Landroid/net/Proxy;

    invoke-direct {v2}, Landroid/net/Proxy;-><init>()V

    invoke-static {}, Lcom/discretix/drm/api/DxPlatformUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-static {v0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v1, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mParams:Lorg/apache/http/params/HttpParams;

    const-string v4, "http.route.default-proxy"

    invoke-interface {v3, v4, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_0
    iput-object v5, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mBAOSResponseBody:Ljava/io/ByteArrayOutputStream;

    iput-boolean v6, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mIsLAResponse:Z

    return-void
.end method

.method private isLARequest(Lcom/discretix/drm/api/IDxHttpRequest;)Z
    .locals 6

    sget-object v2, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mIsLAResponse:Z

    invoke-virtual {p1}, Lcom/discretix/drm/api/IDxHttpRequest;->RestartHttpBody()Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v2

    sget-object v3, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v2, v3, :cond_0

    const-string v3, "challenge="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    new-array v0, v3, [B

    invoke-virtual {p1, v0}, Lcom/discretix/drm/api/IDxHttpRequest;->ReadHttpBody([B)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v2

    sget-object v3, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v2, v3, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v3, "challenge="

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mIsLAResponse:Z

    :cond_0
    iget-boolean v3, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mDebugMode:Z

    if-eqz v3, :cond_1

    const-string v3, "CDxJavaHttpAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLARequest is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mIsLAResponse:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v3, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mIsLAResponse:Z

    return v3
.end method

.method public static setLA_URL(Ljava/lang/String;)V
    .locals 3

    const-string v0, "CDxJavaHttpAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LA_URL was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mLA_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CDxJavaHttpAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LA_URL is set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mLA_URL:Ljava/lang/String;

    return-void
.end method

.method private writeDataToRequest(Lcom/discretix/drm/api/IDxHttpRequest;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    sget-object v4, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    const-wide/16 v1, 0x0

    invoke-virtual {p1}, Lcom/discretix/drm/api/IDxHttpRequest;->GetHttpMethod()Lcom/discretix/drm/api/EDxHttpMethod;

    move-result-object v5

    sget-object v6, Lcom/discretix/drm/api/EDxHttpMethod;->DX_HTTP_METHOD_POST:Lcom/discretix/drm/api/EDxHttpMethod;

    if-eq v5, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/discretix/drm/api/IDxHttpRequest;->RestartHttpBody()Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v4

    sget-object v5, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v4, v5, :cond_2

    new-instance v5, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v5, v4}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v5

    :cond_2
    invoke-virtual {p1}, Lcom/discretix/drm/api/IDxHttpRequest;->GetHttpBodySize()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-eqz v5, :cond_0

    long-to-int v5, v1

    new-array v0, v5, [B

    invoke-virtual {p1, v0}, Lcom/discretix/drm/api/IDxHttpRequest;->ReadHttpBody([B)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v4

    sget-object v5, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v4, v5, :cond_3

    new-instance v5, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v5, v4}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v5

    :cond_3
    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v3, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    iget-object v5, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v5, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0
.end method


# virtual methods
.method public closeResponse()V
    .locals 4

    iget-object v2, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mResponse:Lorg/apache/http/HttpResponse;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    iget-object v2, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CDxJavaHttpAgent"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getHttpResult()I
    .locals 1

    iget v0, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mStatusCode:I

    return v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRealm:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseBody()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mResponseBody:Ljava/io/InputStream;

    return-object v0
.end method

.method public getResponseHeaders()[Lorg/apache/http/Header;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mResponseHeaders:[Lorg/apache/http/Header;

    return-object v0
.end method

.method public getUrl(Ljava/lang/String;[Lorg/apache/http/Header;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/discretix/drm/api/CDxJavaHttpAgent;->init()V

    if-nez p1, :cond_0

    new-instance v7, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    sget-object v8, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_GENERAL_FAILURE:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-direct {v7, v8}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v7

    :cond_0
    iget-boolean v7, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mDebugMode:Z

    if-eqz v7, :cond_1

    const-string v7, "CDxJavaHttpAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getUrl: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v7, "\\"

    const-string v8, "/"

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v6}, Landroid/net/Uri;->getPort()I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    if-eqz v3, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    if-eqz v1, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%23"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    iget-boolean v7, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mDebugMode:Z

    if-eqz v7, :cond_4

    const-string v7, "CDxJavaHttpAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "newU: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v7, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz p2, :cond_8

    const/4 v0, 0x0

    :goto_1
    array-length v7, p2

    if-ge v0, v7, :cond_8

    iget-object v7, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->headersAdded:Ljava/util/Map;

    aget-object v8, p2, v0

    invoke-interface {v8}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mDebugMode:Z

    if-eqz v7, :cond_5

    const-string v7, "CDxJavaHttpAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "header added: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p2, v0

    invoke-interface {v9}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p2, v0

    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v7, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    aget-object v8, p2, v0

    invoke-virtual {v7, v8}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Lorg/apache/http/Header;)V

    iget-object v7, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->headersAdded:Ljava/util/Map;

    aget-object v8, p2, v0

    invoke-interface {v8}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->headersAdded:Ljava/util/Map;

    const-string v8, "User-Agent"

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {}, Lcom/discretix/drm/api/DxDeviceSpecificConstants;->getUserAgentString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    new-instance v8, Lorg/apache/http/message/BasicHeader;

    const-string v9, "User-Agent"

    invoke-static {}, Lcom/discretix/drm/api/DxDeviceSpecificConstants;->getUserAgentString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Lorg/apache/http/Header;)V

    :cond_9
    iget-object v7, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->headersAdded:Ljava/util/Map;

    const-string v8, "x-wap-profile"

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "http:///www.example.com"

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    new-instance v8, Lorg/apache/http/message/BasicHeader;

    const-string v9, "x-wap-profile"

    const-string v10, "http:///www.example.com"

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Lorg/apache/http/Header;)V

    :cond_a
    invoke-direct {p0}, Lcom/discretix/drm/api/CDxJavaHttpAgent;->doRequest()V

    return-void
.end method

.method public sendRequest(Lcom/discretix/drm/api/IDxHttpRequest;[Lorg/apache/http/Header;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/discretix/drm/api/CDxJavaHttpAgent;->init()V

    invoke-direct/range {p0 .. p1}, Lcom/discretix/drm/api/CDxJavaHttpAgent;->getHttpURL(Lcom/discretix/drm/api/IDxHttpRequest;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mDebugMode:Z

    if-eqz v12, :cond_0

    const-string v12, "CDxJavaHttpAgent"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sendRequest: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v9, :cond_1

    new-instance v12, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    sget-object v13, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_GENERAL_FAILURE:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-direct {v12, v13}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v12

    :cond_1
    const-string v12, "\\"

    const-string v13, "/"

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Landroid/net/Uri;->getPort()I

    move-result v7

    const/4 v12, -0x1

    if-eq v7, v12, :cond_7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    if-eqz v5, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_2
    if-eqz v3, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%23"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mDebugMode:Z

    if-eqz v12, :cond_4

    const-string v12, "CDxJavaHttpAgent"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sendRequest: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/discretix/drm/api/IDxHttpRequest;->GetHttpMethod()Lcom/discretix/drm/api/EDxHttpMethod;

    move-result-object v12

    sget-object v13, Lcom/discretix/drm/api/EDxHttpMethod;->DX_HTTP_METHOD_GET:Lcom/discretix/drm/api/EDxHttpMethod;

    if-ne v12, v13, :cond_8

    :try_start_0
    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v12, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/discretix/drm/api/CDxJavaHttpAgent;->addHeaders(Lcom/discretix/drm/api/IDxHttpRequest;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz p2, :cond_a

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p2

    array-length v12, v0

    if-ge v2, v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->headersAdded:Ljava/util/Map;

    aget-object v13, p2, v2

    invoke-interface {v13}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    aget-object v13, p2, v2

    invoke-virtual {v12, v13}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Lorg/apache/http/Header;)V

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mDebugMode:Z

    if-eqz v12, :cond_5

    const-string v12, "CDxJavaHttpAgent"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "header added: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, p2, v2

    invoke-interface {v14}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, p2, v2

    invoke-interface {v14}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->headersAdded:Ljava/util/Map;

    aget-object v13, p2, v2

    invoke-interface {v13}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v12, "CDxJavaHttpAgent"

    const-string v13, ""

    invoke-static {v12, v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v12, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    sget-object v13, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_GENERAL_FAILURE:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-direct {v12, v13}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v12

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/discretix/drm/api/IDxHttpRequest;->GetHttpMethod()Lcom/discretix/drm/api/EDxHttpMethod;

    move-result-object v12

    sget-object v13, Lcom/discretix/drm/api/EDxHttpMethod;->DX_HTTP_METHOD_POST:Lcom/discretix/drm/api/EDxHttpMethod;

    if-ne v12, v13, :cond_9

    :try_start_1
    new-instance v12, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v12, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    const-string v12, "CDxJavaHttpAgent"

    const-string v13, ""

    invoke-static {v12, v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v12, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    sget-object v13, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_GENERAL_FAILURE:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-direct {v12, v13}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v12

    :cond_9
    new-instance v12, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    sget-object v13, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_GENERAL_FAILURE:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-direct {v12, v13}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v12

    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->headersAdded:Ljava/util/Map;

    const-string v13, "User-Agent"

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    invoke-static {}, Lcom/discretix/drm/api/DxDeviceSpecificConstants;->getUserAgentString()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    new-instance v13, Lorg/apache/http/message/BasicHeader;

    const-string v14, "User-Agent"

    invoke-static {}, Lcom/discretix/drm/api/DxDeviceSpecificConstants;->getUserAgentString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Lorg/apache/http/Header;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->headersAdded:Ljava/util/Map;

    const-string v13, "x-wap-profile"

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    const-string v12, "http:///www.example.com"

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    new-instance v13, Lorg/apache/http/message/BasicHeader;

    const-string v14, "x-wap-profile"

    const-string v15, "http:///www.example.com"

    invoke-direct {v13, v14, v15}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Lorg/apache/http/Header;)V

    :cond_c
    invoke-direct/range {p0 .. p1}, Lcom/discretix/drm/api/CDxJavaHttpAgent;->writeDataToRequest(Lcom/discretix/drm/api/IDxHttpRequest;)V

    invoke-direct/range {p0 .. p0}, Lcom/discretix/drm/api/CDxJavaHttpAgent;->doRequest()V

    return-void
.end method

.method public setHttpCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mRealm:Ljava/lang/String;

    iput-object p2, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mHttpUser:Ljava/lang/String;

    iput-object p3, p0, Lcom/discretix/drm/api/CDxJavaHttpAgent;->mHttpPass:Ljava/lang/String;

    return-void
.end method
