.class Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Web;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CapturedProperties"
.end annotation


# instance fields
.field final allowCookies:Z

.field final cookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final responseFileName:Ljava/lang/String;

.field final saveResponse:Z

.field final url:Ljava/net/URL;

.field final urlString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Web;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #getter for: Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->access$000(Lcom/google/appinventor/components/runtime/Web;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->urlString:Ljava/lang/String;

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->urlString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->url:Ljava/net/URL;

    #getter for: Lcom/google/appinventor/components/runtime/Web;->allowCookies:Z
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->access$100(Lcom/google/appinventor/components/runtime/Web;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->allowCookies:Z

    #getter for: Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->access$200(Lcom/google/appinventor/components/runtime/Web;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->saveResponse:Z

    #getter for: Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->access$300(Lcom/google/appinventor/components/runtime/Web;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->responseFileName:Ljava/lang/String;

    #getter for: Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->access$400(Lcom/google/appinventor/components/runtime/Web;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    #calls: Lcom/google/appinventor/components/runtime/Web;->processRequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Web;->access$500(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->requestHeaders:Ljava/util/Map;

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->allowCookies:Z

    if-eqz v1, :cond_0

    #getter for: Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->access$600(Lcom/google/appinventor/components/runtime/Web;)Ljava/net/CookieHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    #getter for: Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->access$600(Lcom/google/appinventor/components/runtime/Web;)Ljava/net/CookieHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->cookies:Ljava/util/Map;

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method
