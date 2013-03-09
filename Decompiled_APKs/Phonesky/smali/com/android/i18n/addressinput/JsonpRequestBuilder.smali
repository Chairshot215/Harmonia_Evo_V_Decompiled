.class Lcom/android/i18n/addressinput/JsonpRequestBuilder;
.super Ljava/lang/Object;
.source "JsonpRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;,
        Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method private static encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "url"

    .prologue
    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 101
    .local v4, length:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 104
    .local v5, tmp:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 105
    move v3, v2

    .line 106
    .local v3, j:I
    const/4 v0, 0x0

    .line 107
    .local v0, c:C
    :goto_1
    if-ge v3, v4, :cond_0

    .line 108
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 109
    const/16 v6, 0x3a

    if-eq v0, v6, :cond_0

    const/16 v6, 0x2f

    if-ne v0, v6, :cond_2

    .line 113
    :cond_0
    if-ne v3, v4, :cond_3

    .line 114
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v0           #c:C
    .end local v3           #j:I
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 107
    .restart local v0       #c:C
    .restart local v3       #j:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 116
    :cond_3
    if-le v3, v2, :cond_4

    .line 117
    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    move v2, v3

    .line 104
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method


# virtual methods
.method requestObject(Ljava/lang/String;Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback;)V
    .locals 2
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback",
            "<",
            "Lcom/android/i18n/addressinput/JsoMap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, callback:Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback;,"Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback<Lcom/android/i18n/addressinput/JsoMap;>;"
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p1}, Lcom/android/i18n/addressinput/JsonpRequestBuilder;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, request:Lorg/apache/http/client/methods/HttpUriRequest;
    new-instance v1, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;

    invoke-direct {v1, v0, p2}, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback;)V

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;->start()V

    .line 61
    return-void
.end method

.method setTimeout(I)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 50
    invoke-static {}, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;->access$000()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 51
    .local v0, params:Lorg/apache/http/params/HttpParams;
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 52
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 53
    return-void
.end method
