.class public abstract Lcom/htc/urlshortener/UrlShorteningOperation;
.super Ljava/lang/Object;
.source "UrlShorteningOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/urlshortener/UrlShorteningOperation$UrlShorteningOperationListener;
    }
.end annotation


# static fields
.field protected static final AMPERSAND:Ljava/lang/String; = "&"

.field protected static final API_VERSION_2:I = 0x1

.field protected static final API_VERSION_3:I = 0x2

.field protected static final BASE_HTTP_URL_V2:Ljava/lang/String; = "http://api.bit.ly/"

.field protected static final BASE_HTTP_URL_V3:Ljava/lang/String; = "http://api.bit.ly/v3/"

.field protected static final EQUALS:Ljava/lang/String; = "="

.field protected static final FORMAT_JSON:Ljava/lang/String; = "json"

.field protected static final FORMAT_PLAINTEXT:Ljava/lang/String; = "txt"

.field protected static final FORMAT_XML:Ljava/lang/String; = "xml"

.field private static final LOG_TAG:Ljava/lang/String; = "UrlShorteningOperation"

.field protected static final QUESTION_MARK:Ljava/lang/String; = "?"

.field protected static final REQ_PARAM_API_KEY:Ljava/lang/String; = "apiKey"

.field protected static final REQ_PARAM_DOMAIN:Ljava/lang/String; = "domain"

.field protected static final REQ_PARAM_FORMAT:Ljava/lang/String; = "format"

.field protected static final REQ_PARAM_HASH:Ljava/lang/String; = "hash"

.field protected static final REQ_PARAM_LOGIN:Ljava/lang/String; = "login"

.field protected static final REQ_PARAM_LONG_URL:Ljava/lang/String; = "longUrl"

.field protected static final REQ_PARAM_SHORT_URL:Ljava/lang/String; = "shortUrl"

.field protected static final REQ_PARAM_URL:Ljava/lang/String; = "url"

.field protected static final REQ_PARAM_VERSION:Ljava/lang/String; = "version"

.field protected static final REQ_PARAM_X_API_KEY:Ljava/lang/String; = "x_apiKey"

.field protected static final REQ_PARAM_X_LOGIN:Ljava/lang/String; = "x_login"

.field protected static final RSP_PARAM_DATA:Ljava/lang/String; = "data"

.field protected static final RSP_PARAM_ERROR:Ljava/lang/String; = "error"

.field protected static final RSP_PARAM_ERROR_CODE_V2:Ljava/lang/String; = "errorCode"

.field protected static final RSP_PARAM_ERROR_MESSAGE_V2:Ljava/lang/String; = "errorMessage"

.field protected static final RSP_PARAM_EXPAND:Ljava/lang/String; = "expand"

.field protected static final RSP_PARAM_GLOBAL_CLICKS:Ljava/lang/String; = "global_clicks"

.field protected static final RSP_PARAM_GLOBAL_HASH:Ljava/lang/String; = "global_hash"

.field protected static final RSP_PARAM_GLOBAL_HASH_V2:Ljava/lang/String; = "hash"

.field protected static final RSP_PARAM_HASH:Ljava/lang/String; = "hash"

.field protected static final RSP_PARAM_LONG_URL:Ljava/lang/String; = "long_url"

.field protected static final RSP_PARAM_NEW_HASH:Ljava/lang/String; = "new_hash"

.field protected static final RSP_PARAM_RESULTS:Ljava/lang/String; = "results"

.field protected static final RSP_PARAM_SHORT_URL:Ljava/lang/String; = "short_url"

.field protected static final RSP_PARAM_SHORT_URL_V2:Ljava/lang/String; = "shortUrl"

.field protected static final RSP_PARAM_STATUS_CODE:Ljava/lang/String; = "status_code"

.field protected static final RSP_PARAM_STATUS_CODE_V2:Ljava/lang/String; = "statusCode"

.field protected static final RSP_PARAM_STATUS_TEXT:Ljava/lang/String; = "status_txt"

.field protected static final RSP_PARAM_URL:Ljava/lang/String; = "url"

.field protected static final RSP_PARAM_USER_CLICKS:Ljava/lang/String; = "user_clicks"

.field protected static final RSP_PARAM_USER_HASH:Ljava/lang/String; = "user_hash"

.field protected static final RSP_PARAM_USER_HASH_V2:Ljava/lang/String; = "userHash"

.field protected static final RSP_PARAM_VALID:Ljava/lang/String; = "valid"

.field protected static final SHORTEN_SERVER_BIT_LY:Ljava/lang/String; = "bit.ly"

.field protected static final SHORTEN_SERVER_IS_GD:Ljava/lang/String; = "is.gd"

.field protected static final SHORTEN_SERVER_T_CN:Ljava/lang/String; = "t.cn"

.field protected static final SHORTEN_SERVER_TinyURL:Ljava/lang/String; = "TinyURL"

.field public static final SHORT_URL_DOMAINS:[Ljava/lang/String; = null

.field protected static final STATUS_CODE_ERROR_V2:Ljava/lang/String; = "ERROR"

.field protected static final T_CN_HTTP_URL:Ljava/lang/String; = "http://api.t.sina.com.cn/short_url/shorten.json?source=3551174478"

.field protected static final URL_LONG:Ljava/lang/String; = "url_long"

.field protected static final VERSION_2_0_1:Ljava/lang/String; = "2.0.1"

.field protected static final mHandler:Landroid/os/Handler;


# instance fields
.field private final mHttpListener:Lcom/htc/urlshortener/HttpOperation$HttpOperationListener;

.field protected mHttpOp:Lcom/htc/urlshortener/HttpOperation;

.field protected final mListener:Lcom/htc/urlshortener/UrlShorteningOperation$UrlShorteningOperationListener;

.field protected final mReqIntent:Landroid/content/Intent;

.field protected mShortenServer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/htc/urlshortener/UrlShorteningOperation;->mHandler:Landroid/os/Handler;

    .line 24
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://bit.ly/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://j.mp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "http://tcrn.ch/"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "http://nyti.ms/"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "http://su.pr/"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "http://ow.ly/"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "http://is.gd/"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "http://goo.gl/"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "http://youtu.be/"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "http://tinyurl.com/"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "http://post.ly/"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "http://4sq.com/"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "http://twitgoo.com/"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "http://t.cn/"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/urlshortener/UrlShorteningOperation;->SHORT_URL_DOMAINS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Lcom/htc/urlshortener/UrlShorteningOperation$UrlShorteningOperationListener;)V
    .locals 1
    .parameter "reqIntent"
    .parameter "listener"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/htc/urlshortener/UrlShorteningOperation$1;

    invoke-direct {v0, p0}, Lcom/htc/urlshortener/UrlShorteningOperation$1;-><init>(Lcom/htc/urlshortener/UrlShorteningOperation;)V

    iput-object v0, p0, Lcom/htc/urlshortener/UrlShorteningOperation;->mHttpListener:Lcom/htc/urlshortener/HttpOperation$HttpOperationListener;

    .line 98
    iput-object p1, p0, Lcom/htc/urlshortener/UrlShorteningOperation;->mReqIntent:Landroid/content/Intent;

    .line 99
    iput-object p2, p0, Lcom/htc/urlshortener/UrlShorteningOperation;->mListener:Lcom/htc/urlshortener/UrlShorteningOperation$UrlShorteningOperationListener;

    .line 100
    return-void
.end method

.method protected static final getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-string v0, "R_f06250978b5950178489f4af01c4575b"

    return-object v0
.end method

.method protected static final getAuthenticatedLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const-string v0, "htcapi"

    return-object v0
.end method


# virtual methods
.method protected abstract buildHttpRequestUrl()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/htc/urlshortener/UrlShorteningException;
        }
    .end annotation
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/urlshortener/UrlShorteningOperation;->mHttpOp:Lcom/htc/urlshortener/HttpOperation;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/htc/urlshortener/UrlShorteningOperation;->mHttpOp:Lcom/htc/urlshortener/HttpOperation;

    invoke-virtual {v0}, Lcom/htc/urlshortener/HttpOperation;->cancel()V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/urlshortener/UrlShorteningOperation;->mHttpOp:Lcom/htc/urlshortener/HttpOperation;

    .line 224
    :cond_0
    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/htc/urlshortener/UrlShorteningOperation;->mReqIntent:Landroid/content/Intent;

    return-object v0
.end method

.method protected onHttpComplete(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter "errorCode"
    .parameter "reasonPhrase"
    .parameter "e"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/urlshortener/UrlShorteningOperation;->mListener:Lcom/htc/urlshortener/UrlShorteningOperation$UrlShorteningOperationListener;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/htc/urlshortener/UrlShorteningOperation;->mListener:Lcom/htc/urlshortener/UrlShorteningOperation$UrlShorteningOperationListener;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/htc/urlshortener/UrlShorteningOperation$UrlShorteningOperationListener;->onProcessComplete(Lcom/htc/urlshortener/UrlShorteningOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 137
    sget-object v0, Lcom/htc/urlshortener/UrlShorteningOperation;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/urlshortener/UrlShorteningOperation$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/htc/urlshortener/UrlShorteningOperation$2;-><init>(Lcom/htc/urlshortener/UrlShorteningOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 148
    :cond_0
    return-void
.end method

.method protected abstract parseJSON(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/urlshortener/UrlShorteningException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected parseResponse(Ljava/lang/String;)V
    .locals 0
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/urlshortener/UrlShorteningException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/htc/urlshortener/UrlShorteningOperation;->parseJSON(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method protected preprocessJSON(Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 8
    .parameter "response"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/urlshortener/UrlShorteningException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 172
    new-instance v5, Lcom/htc/urlshortener/UrlShorteningException;

    const/16 v6, 0x386

    const-string v7, "Empty response!"

    invoke-direct {v5, v6, v7}, Lcom/htc/urlshortener/UrlShorteningException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 177
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 179
    .local v2, json:Lorg/json/JSONObject;
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_1

    const-string v5, "statusCode"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "statusCode"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "ERROR"

    const-string v6, "statusCode"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 183
    const-string v5, "errorCode"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 184
    .local v0, errorCode:I
    const-string v5, "errorMessage"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, errorMsg:Ljava/lang/String;
    new-instance v5, Lcom/htc/urlshortener/UrlShorteningException;

    invoke-direct {v5, v0, v1}, Lcom/htc/urlshortener/UrlShorteningException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 186
    .end local v0           #errorCode:I
    .end local v1           #errorMsg:Ljava/lang/String;
    :cond_1
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_2

    const-string v5, "status_code"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "status_code"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "status_code"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_2

    .line 190
    const-string v5, "status_code"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 191
    .local v3, statusCode:I
    const-string v5, "status_txt"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, statusText:Ljava/lang/String;
    new-instance v5, Lcom/htc/urlshortener/UrlShorteningException;

    invoke-direct {v5, v3, v4}, Lcom/htc/urlshortener/UrlShorteningException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 195
    .end local v3           #statusCode:I
    .end local v4           #statusText:Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method public start()V
    .locals 5

    .prologue
    .line 203
    :try_start_0
    new-instance v1, Lcom/htc/urlshortener/HttpOperation;

    invoke-virtual {p0}, Lcom/htc/urlshortener/UrlShorteningOperation;->buildHttpRequestUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x2000

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iget-object v4, p0, Lcom/htc/urlshortener/UrlShorteningOperation;->mHttpListener:Lcom/htc/urlshortener/HttpOperation$HttpOperationListener;

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/urlshortener/HttpOperation;-><init>(Ljava/lang/String;Ljava/io/OutputStream;Lcom/htc/urlshortener/HttpOperation$HttpOperationListener;)V

    iput-object v1, p0, Lcom/htc/urlshortener/UrlShorteningOperation;->mHttpOp:Lcom/htc/urlshortener/HttpOperation;

    .line 207
    iget-object v1, p0, Lcom/htc/urlshortener/UrlShorteningOperation;->mHttpOp:Lcom/htc/urlshortener/HttpOperation;

    invoke-virtual {v1}, Lcom/htc/urlshortener/HttpOperation;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "UrlShorteningOperation"

    const-string v2, "UrlShorteningOperation failed to start!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    iget-object v1, p0, Lcom/htc/urlshortener/UrlShorteningOperation;->mListener:Lcom/htc/urlshortener/UrlShorteningOperation$UrlShorteningOperationListener;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/htc/urlshortener/UrlShorteningOperation;->mListener:Lcom/htc/urlshortener/UrlShorteningOperation$UrlShorteningOperationListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3, v0}, Lcom/htc/urlshortener/UrlShorteningOperation$UrlShorteningOperationListener;->onOperationComplete(Lcom/htc/urlshortener/UrlShorteningOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
