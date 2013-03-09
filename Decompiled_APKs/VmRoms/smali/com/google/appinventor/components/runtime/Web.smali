.class public Lcom/google/appinventor/components/runtime/Web;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MISC:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that provides functions for HTTP GET and POST requests."
    iconName = "images/web.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Web$CapturedProperties;,
        Lcom/google/appinventor/components/runtime/Web$BuildPostDataException;,
        Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Web"

.field private static final mimeTypeToExtension:Ljava/util/Map;
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


# instance fields
.field private final activity:Landroid/app/Activity;

.field private allowCookies:Z

.field private final cookieHandler:Ljava/net/CookieHandler;

.field private requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

.field private responseFileName:Ljava/lang/String;

.field private saveResponse:Z

.field private urlString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "application/pdf"

    const-string v2, "pdf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "application/zip"

    const-string v2, "zip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "audio/mpeg"

    const-string v2, "mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "audio/mp3"

    const-string v2, "mp3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "audio/mp4"

    const-string v2, "mp4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "image/gif"

    const-string v2, "gif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "image/jpeg"

    const-string v2, "jpg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "image/png"

    const-string v2, "png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "image/tiff"

    const-string v2, "tiff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "text/plain"

    const-string v2, "txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "text/html"

    const-string v2, "html"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "text/xml"

    const-string v2, "xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->newCookieManager()Ljava/net/CookieHandler;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Web;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Web;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->allowCookies:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Web;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Web;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Web;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/Web;->processRequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/Web;)Ljava/net/CookieHandler;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Web;->performRequest(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;)V

    return-void
.end method

.method private capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;-><init>(Lcom/google/appinventor/components/runtime/Web;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x455

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget v2, v0, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;->errorNumber:I

    new-array v3, v3, [Ljava/lang/Object;

    iget v0, v0, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, p0, p1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getExternalFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    sget-object v1, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    const-string v0, "tmp"

    :goto_2
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getDownloadFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    goto :goto_2

    :cond_2
    move-object v0, p1

    goto :goto_1
.end method

.method static decodeJsonText(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "jsonText is not a legal JSON value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method private static getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, -0x1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "UTF-8"

    :cond_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/Web;->getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    if-eq v0, v5, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v2

    :goto_0
    const/16 v2, 0x400

    new-array v2, v2, [C

    :goto_1
    invoke-virtual {v1, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    if-eq v3, v5, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    return-object v0
.end method

.method private static getResponseType(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static openConnection(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->requestHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->cookies:Ljava/util/Map;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->cookies:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private performRequest(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->openConnection(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;)Ljava/net/HttpURLConnection;

    move-result-object v6

    if-eqz v6, :cond_1

    if-eqz p2, :cond_2

    :try_start_0
    invoke-static {v6, p2}, Lcom/google/appinventor/components/runtime/Web;->writePostData(Ljava/net/HttpURLConnection;[B)V

    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Web;->getResponseType(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6}, Lcom/google/appinventor/components/runtime/Web;->processResponseCookies(Ljava/net/HttpURLConnection;)V

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->responseFileName:Ljava/lang/String;

    invoke-static {v6, v0, v4}, Lcom/google/appinventor/components/runtime/Web;->saveResponseContent(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/google/appinventor/components/runtime/Web$4;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Web$4;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-void

    :cond_2
    if-eqz p3, :cond_0

    :try_start_1
    invoke-direct {p0, v6, p3}, Lcom/google/appinventor/components/runtime/Web;->writePostFile(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    :cond_3
    :try_start_2
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Web;->getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/google/appinventor/components/runtime/Web$5;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Web$5;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private postTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0, p3}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/Web$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Web$2;-><init>(Lcom/google/appinventor/components/runtime/Web;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static processRequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    move v2, v7

    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v3, :cond_3

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-virtual {v0, v7}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    instance-of v5, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v5, :cond_0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    move v5, v7

    :goto_1
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {v0, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;

    const/16 v1, 0x457

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;-><init>(II)V

    throw v0

    :cond_3
    new-instance v0, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;

    const/16 v1, 0x456

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;-><init>(II)V

    throw v0

    :cond_4
    return-object v1
.end method

.method private processResponseCookies(Ljava/net/HttpURLConnection;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->allowCookies:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static saveResponseContent(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x1000

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/Web;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/Web;->getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x1000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_3
    invoke-virtual {v2, v3}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    throw v0
.end method

.method private static writePostData(Ljava/net/HttpURLConnection;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    :try_start_0
    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    throw v1
.end method

.method private writePostFile(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    return-void

    :cond_0
    :try_start_3
    invoke-virtual {v1, v2}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    throw v1
.end method


# virtual methods
.method public AllowCookies(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Web;->allowCookies:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "AllowCookies"

    const/4 v2, 0x4

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public AllowCookies()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the cookies from a response should be saved and used in subsequent requests. Cookies are only supported on Android version 2.3 or greater."
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->allowCookies:Z

    return v0
.end method

.method public BuildPostData(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Web;->buildPostData(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/Web$BuildPostDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "BuildPostData"

    iget v3, v0, Lcom/google/appinventor/components/runtime/Web$BuildPostDataException;->errorNumber:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Web$BuildPostDataException;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const-string v0, ""

    goto :goto_0
.end method

.method public ClearCookies()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clears all cookies for this Web component."
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->clearCookies(Ljava/net/CookieHandler;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "ClearCookies"

    const/4 v2, 0x4

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public Get()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    const-string v0, "Get"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/Web$1;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/Web$1;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public GotFile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const-string v0, "GotFile"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const-string v0, "GotText"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public HtmlTextDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Decodes the given HTML text value. HTML character entities such as &amp;amp;, &amp;lt;, &amp;gt;, &amp;apos;, and &amp;quot; are changed to &amp;, &lt;, &gt;, &#39;, and &quot;. Entities such as &amp;#xhhhh, and &amp;#nnnn are changed to the appropriate characters."
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/common/HtmlEntities;->decodeHtmlText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "HtmlTextDecode"

    const/16 v2, 0x452

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const-string v0, ""

    goto :goto_0
.end method

.method public JsonTextDecode(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->decodeJsonText(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "JsonTextDecode"

    const/16 v2, 0x451

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const-string v0, ""

    goto :goto_0
.end method

.method public PostFile(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request using the Url property and data from the specified file.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    const-string v0, "PostFile"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/Web$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/appinventor/components/runtime/Web$3;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public PostText(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request using the Url property and the specified text.<br>The characters of the text are encoded using UTF-8 encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The responseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    const-string v0, "UTF-8"

    const-string v1, "PostText"

    invoke-direct {p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/Web;->postTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public PostTextWithEncoding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request using the Url property and the specified text.<br>The characters of the text are encoded using the given encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    const-string v0, "PostTextWithEncoding"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/Web;->postTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public RequestHeaders()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The request headers, as a list of two-element sublists. The first element of each sublist represents the request header field name. The second element of each sublist represents the request header field values, either a single value or a list containing multiple values."
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public RequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->processRequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "RequestHeaders"

    iget v3, v0, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;->errorNumber:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public ResponseFileName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The name of the file where the response should be saved. If SaveResponse is true and ResponseFileName is empty, then a new file name will be generated."
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    return-object v0
.end method

.method public ResponseFileName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    return-void
.end method

.method public SaveResponse(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z

    return-void
.end method

.method public SaveResponse()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the response should be saved in a file."
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z

    return v0
.end method

.method public UriEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Web"

    const-string v2, "UTF-8 is unsupported?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    goto :goto_0
.end method

.method public Url()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The URL for the web request."
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    return-object v0
.end method

.method public Url(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    return-void
.end method

.method buildPostData(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/Web$BuildPostDataException;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    move v2, v6

    move-object v3, v0

    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/Web;->UriEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Web;->UriEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/Web$BuildPostDataException;

    const/16 v1, 0x459

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Web$BuildPostDataException;-><init>(II)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/Web$BuildPostDataException;

    const/16 v1, 0x458

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Web$BuildPostDataException;-><init>(II)V

    throw v0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
