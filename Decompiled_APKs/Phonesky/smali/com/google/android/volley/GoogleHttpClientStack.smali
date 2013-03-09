.class public Lcom/google/android/volley/GoogleHttpClientStack;
.super Lcom/android/volley/toolbox/HttpClientStack;
.source "GoogleHttpClientStack.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/volley/GoogleHttpClientStack;-><init>(Landroid/content/Context;Z)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "enableSensitiveLogging"

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/volley/GoogleHttpClient;

    const-string v1, "unused/0"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/volley/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/volley/GoogleHttpClientStack;-><init>(Lcom/google/android/volley/GoogleHttpClient;Z)V

    .line 29
    return-void
.end method

.method private constructor <init>(Lcom/google/android/volley/GoogleHttpClient;Z)V
    .locals 2
    .parameter "httpClient"
    .parameter "enableSensitiveLogging"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/HttpClientStack;-><init>(Lorg/apache/http/client/HttpClient;)V

    .line 33
    sget-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 34
    sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/google/android/volley/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 41
    .local p1, request:Lcom/android/volley/Request;,"Lcom/android/volley/Request<*>;"
    .local p2, additionalHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1, p2}, Lcom/android/volley/toolbox/HttpClientStack;->performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method
