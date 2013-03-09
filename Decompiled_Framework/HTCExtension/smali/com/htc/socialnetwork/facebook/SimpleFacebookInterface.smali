.class public Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;
.super Ljava/lang/Object;
.source "SimpleFacebookInterface.java"

# interfaces
.implements Lcom/htc/socialnetwork/Constants;


# static fields
.field private static final ALBUM_PRIVACY_EVERYONE:Ljava/lang/String; = "everyone"

.field private static final ALBUM_PRIVACY_FRIENDS:Ljava/lang/String; = "friends"

.field private static final ALBUM_PRIVACY_FRIENDS_OF_FRIENDS:Ljava/lang/String; = "friends-of-friends"

.field private static final AUTH_URL:Ljava/lang/String; = "http://m.facebook.com/auth.php?"

.field private static final BIRTHDAY:Ljava/lang/String; = "birthday_date"

.field private static final CITY:Ljava/lang/String; = "city"

.field private static final CREATOR:Ljava/lang/String; = "creator"

.field private static final CURRENT_LOCATION:Ljava/lang/String; = "current_location"

.field private static final DESCRIPTION:Ljava/lang/String; = "description"

.field private static final EID:Ljava/lang/String; = "eid"

.field private static final EMPTY:Ljava/lang/String; = ""

.field private static final END_TIME:Ljava/lang/String; = "end_time"

.field private static final EVENTS_GET:Ljava/lang/String; = "facebook.events.get"

.field private static final EVENTS_GETMEMBERS:Ljava/lang/String; = "facebook.events.getMembers"

.field private static final FB_HTTPS_URL:Ljava/lang/String; = "https://api.facebook.com/restserver.php"

.field private static final FB_HTTP_URL:Ljava/lang/String; = "http://api.facebook.com/restserver.php"

.field private static final FIRSTNAME:Ljava/lang/String; = "first_name"

.field private static final FQL_QUERY:Ljava/lang/String; = "facebook.fql.query"

.field private static final GROUPID:Ljava/lang/String; = "gid"

.field private static final GROUPS_GET:Ljava/lang/String; = "facebook.groups.get"

.field private static final LASTNAME:Ljava/lang/String; = "last_name"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field private static final LOG_TAG:Ljava/lang/String; = "SocialNetwork-SimpleFacebookInterface"

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final NOTES_COUNT:Ljava/lang/String; = "notes_count"

.field private static final PAGES_GETINFO:Ljava/lang/String; = "facebook.pages.getInfo"

.field private static final PAGE_ID:Ljava/lang/String; = "page_id"

.field private static final PIC_BIG:Ljava/lang/String; = "pic_big"

.field private static final PIC_SQUARE:Ljava/lang/String; = "pic_square"

.field private static final PRIVACY_EVERYONE:I = 0x0

.field private static final PRIVACY_FRIENDS:I = 0x1

.field private static final PRIVACY_FRIENDS_OF_FRIENDS:I = 0x2

.field private static final PROFILE_UPDATE_TIME:Ljava/lang/String; = "profile_update_time"

.field private static final PROFILE_URL:Ljava/lang/String; = "profile_url"

.field private static final START_TIME:Ljava/lang/String; = "start_time"

.field private static final STATUS:Ljava/lang/String; = "status"

.field private static final TIME:Ljava/lang/String; = "time"

.field private static final UID:Ljava/lang/String; = "uid"

.field private static final UPDATE_TIME:Ljava/lang/String; = "update_time"

.field private static final USERS_GETINFO:Ljava/lang/String; = "facebook.users.getInfo"

.field private static final VERSION:Ljava/lang/String; = "1.0"

.field private static final WALL_COUNT:Ljava/lang/String; = "wall_count"

.field private static final WORK_HISTORY:Ljava/lang/String; = "work_history"

.field private static final fields:Ljava/lang/String; = "uid , first_name , last_name , name , current_location , notes_count , pic_big , pic_square , profile_url , profile_update_time , status , wall_count , work_history , birthday_date"

.field static localSession_key:Ljava/lang/String; = null

.field private static final page_fields:Ljava/lang/String; = "page_id , name , pic_big , pic_square"


# instance fields
.field private api_key:Ljava/lang/String;

.field private init_secret:Ljava/lang/String;

.field private mClient:Lorg/apache/http/client/HttpClient;

.field privacyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private session_key:Ljava/lang/String;

.field private session_secret:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->api_key:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->init_secret:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_key:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_secret:Ljava/lang/String;

    iput-object p1, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->api_key:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->init_secret:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->privacyMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->privacyMap:Ljava/util/HashMap;

    const-string v1, "everyone"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->privacyMap:Ljava/util/HashMap;

    const-string v1, "friends"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->privacyMap:Ljava/util/HashMap;

    const-string v1, "friends-of-friends"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->initHttpClient()V

    return-void
.end method

.method public static generateSignature(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    move-object v0, v3

    array-length v4, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private getParseResult(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string v9, "gzip"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "SocialNetwork-SimpleFacebookInterface"

    const-string v9, "GZIP encoded stream"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/util/zip/GZIPInputStream;

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const-string v9, "UTF-8"

    invoke-direct {v3, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_0
    const/16 v8, 0x1000

    new-array v0, v8, [C

    :goto_1
    const/16 v8, 0xfff

    invoke-virtual {v3, v0, v10, v8}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v6, v0, v10, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v3, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v8, "SocialNetwork-SimpleFacebookInterface"

    const-string v9, "NO GZIP"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_2

    new-instance v8, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Http Error : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v8

    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, "{}"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v4, 0x0

    :goto_2
    return-object v4

    :cond_3
    const-string v8, "{"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "}"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->isError(Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_4
    const-string v8, "["

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "]"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v8, "<"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, ">"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    new-instance v8, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v9, 0x7e1

    invoke-direct {v8, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v8

    :cond_6
    const-string v8, "\""

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "\""

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_2

    :cond_7
    move-object v4, v2

    goto :goto_2
.end method

.method private initHttpClient()V
    .locals 8

    const v5, 0xea60

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    const-string v4, "HTC-Android/1.0"

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    new-instance v4, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v4}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    const/16 v6, 0x1bb

    invoke-direct {v4, v5, v3, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v4, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->mClient:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method private static isError(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    :try_start_0
    const-string v4, "error_code"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v4, "error_msg"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v3, v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v5, 0x7d6

    invoke-direct {v4, v5, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v4

    :catch_0
    move-exception v0

    return-void

    :sswitch_0
    new-instance v4, Lcom/htc/socialnetwork/AuthenticationException;

    invoke-direct {v4}, Lcom/htc/socialnetwork/AuthenticationException;-><init>()V

    throw v4

    :sswitch_1
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v5, 0x1ce9

    invoke-direct {v4, v5, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :sswitch_2
    const/16 v3, 0x1d1d

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0x191 -> :sswitch_1
        0x1c5 -> :sswitch_2
    .end sparse-switch
.end method

.method public static join(Ljava/lang/CharSequence;[J)Ljava/lang/String;
    .locals 8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-wide v5, v0, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static join(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v9, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    move-object v0, v3

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-byte v1, v0, v4

    and-int/lit8 v10, v1, 0x7f

    if-gez v1, :cond_0

    const/16 v8, 0x80

    :goto_1
    add-int v7, v10, v8

    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    const-string v8, "0"

    :goto_2
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v8, v9

    goto :goto_1

    :cond_1
    const-string v8, ""
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v8

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private setUserData(Lcom/htc/socialnetwork/User;Lorg/json/JSONObject;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v11, "uid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "uid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "uid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/htc/socialnetwork/User;->setId(Ljava/lang/String;)V

    :cond_0
    const-string v11, "page_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "page_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "page_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/htc/socialnetwork/User;->setId(Ljava/lang/String;)V

    :cond_1
    const-string v11, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/htc/socialnetwork/User;->setUserName(Ljava/lang/String;)V

    const-string v11, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/htc/socialnetwork/User;->setFullName(Ljava/lang/String;)V

    :cond_2
    const-string v11, "first_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "first_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "first_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/htc/socialnetwork/User;->setFirstName(Ljava/lang/String;)V

    :cond_3
    const-string v11, "last_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "last_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "last_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/htc/socialnetwork/User;->setLastName(Ljava/lang/String;)V

    :cond_4
    const-string v11, "pic_square"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "pic_square"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "pic_square"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/htc/socialnetwork/User;->setBuddyIconURL(Ljava/lang/String;)V

    :cond_5
    const-string v11, "pic_big"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "pic_big"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "pic_big"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/htc/socialnetwork/User;->setLargeBuddyIconURL(Ljava/lang/String;)V

    :cond_6
    const-string v11, "profile_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "profile_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v11, "profile_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/htc/socialnetwork/User;->setProfileUrl(Ljava/lang/String;)V

    :cond_7
    const/4 v1, 0x0

    const-string v11, "profile_update_time"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string v11, "profile_update_time"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v11, "profile_update_time"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "null"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Lcom/htc/socialnetwork/User;->setProfileUpdateTime(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_0
    const-string v11, "birthday_date"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "birthday_date"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    const-string v11, "birthday_date"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "null"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/htc/socialnetwork/User;->setBirthday(Ljava/lang/String;)V

    :cond_9
    const/4 v7, 0x0

    const-string v11, "status"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b

    const-string v11, "status"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    const-string v11, "status"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_b

    instance-of v11, v7, Lorg/json/JSONObject;

    if-eqz v11, :cond_b

    move-object v8, v7

    check-cast v8, Lorg/json/JSONObject;

    const-string v11, "message"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    const-string v11, "message"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    const-string v11, "message"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/htc/socialnetwork/User;->setStatus(Ljava/lang/String;)V

    :cond_a
    const-string v11, "time"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b

    const-string v11, "time"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    :try_start_1
    const-string v11, "time"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Lcom/htc/socialnetwork/User;->setStatusUpdateTime(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_b
    :goto_1
    const-string v11, "current_location"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "current_location"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    const-string v11, "current_location"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_c

    instance-of v11, v7, Lorg/json/JSONObject;

    if-eqz v11, :cond_c

    move-object v6, v7

    check-cast v6, Lorg/json/JSONObject;

    const-string v11, "city"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "city"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    const-string v11, "city"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/htc/socialnetwork/User;->setCurrentLocation(Ljava/lang/String;)V

    :cond_c
    const-string v11, "work_history"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_d

    const-string v11, "work_history"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    const-string v11, "work_history"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_d

    instance-of v11, v9, Lorg/json/JSONArray;

    if-eqz v11, :cond_d

    move-object v4, v9

    check-cast v4, Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_d

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v11, "location"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    const-string v11, "location"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v11, "city"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    const-string v11, "city"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/htc/socialnetwork/User;->setWorkLocation(Ljava/lang/String;)V

    :cond_d
    const/4 v1, 0x0

    const/4 v7, 0x0

    return-void

    :catch_0
    move-exception v2

    const-string v11, "SocialNetwork-SimpleFacebookInterface"

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const-string v11, "SocialNetwork-SimpleFacebookInterface"

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public addPhotoComment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    const-string v3, "SocialNetwork-SimpleFacebookInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start add comment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "facebook.photos.addComment"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "pid"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "body"

    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SocialNetwork-SimpleFacebookInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public cleanSession()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_secret:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_key:Ljava/lang/String;

    return-void
.end method

.method public createAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    const/16 v7, 0x7d0

    const-string v0, "facebook.photos.createAlbum"

    const-string v4, ""

    packed-switch p4, :pswitch_data_0

    :goto_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const-string v6, "Album name should be specified"

    invoke-direct {v5, v7, v6}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v5

    :pswitch_0
    const-string v4, "everyone"

    goto :goto_0

    :pswitch_1
    const-string v4, "friends"

    goto :goto_0

    :pswitch_2
    const-string v4, "friends-of-friends"

    goto :goto_0

    :cond_0
    const-string v5, "name"

    invoke-virtual {v3, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    const-string v5, "description"

    invoke-virtual {v3, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    const-string v5, "location"

    invoke-virtual {v3, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "visible"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v5, "facebook.photos.createAlbum"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v3, v6}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    if-nez v2, :cond_4

    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const-string v6, "Create album error"

    invoke-direct {v5, v7, v6}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v5

    :cond_4
    :try_start_0
    const-string v5, "aid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v1

    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const-string v6, "JSONException"

    invoke-direct {v5, v7, v6, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    const-string v13, "method"

    move-object/from16 v0, p1

    invoke-virtual {v9, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "api_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->api_key:Ljava/lang/String;

    invoke-virtual {v9, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "v"

    const-string v14, "1.0"

    invoke-virtual {v9, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "format"

    const-string v14, "json"

    invoke-virtual {v9, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_key:Ljava/lang/String;

    if-eqz v13, :cond_1

    const-string v13, "session_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_key:Ljava/lang/String;

    invoke-virtual {v9, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_secret:Ljava/lang/String;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_secret:Ljava/lang/String;

    :goto_1
    invoke-static {v9, v11}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->generateSignature(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v13

    new-array v7, v13, [Ljava/lang/String;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v1, v7

    array-length v8, v1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v8, :cond_3

    aget-object v6, v1, v5

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v2, v6, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    const-string v13, "facebook.auth.expireSession"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "session_key"

    sget-object v14, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->localSession_key:Ljava/lang/String;

    invoke-virtual {v9, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->init_secret:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v13, "sig"

    invoke-virtual {v2, v13, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_4

    const-string v13, "https://api.facebook.com/restserver.php"

    :goto_3
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v13, "Accept-Encoding"

    const-string v14, "gzip"

    invoke-virtual {v4, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->mClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v13, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getParseResult(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v13

    return-object v13

    :cond_4
    const-string v13, "http://api.facebook.com/restserver.php"

    goto :goto_3

    :catch_0
    move-exception v3

    new-instance v13, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v14, 0x7e5

    invoke-direct {v13, v14, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v13

    :catch_1
    move-exception v3

    new-instance v13, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v14, 0x7d6

    invoke-direct {v13, v14, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v13

    :catch_2
    move-exception v3

    new-instance v13, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v14, 0x7d8

    invoke-direct {v13, v14, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v13

    :catch_3
    move-exception v3

    new-instance v13, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v14, 0x7d0

    const-string v15, "JSONException"

    invoke-direct {v13, v14, v15, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    :catch_4
    move-exception v3

    new-instance v13, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v14, 0x7e3

    const-string v15, "ConcurrentModificationException"

    invoke-direct {v13, v14, v15, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13
.end method

.method protected doPost(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    const-string v17, "method"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "api_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->api_key:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "v"

    const-string v18, "1.0"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "format"

    const-string v18, "json"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_key:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    const-string v17, "session_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_key:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_secret:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_secret:Ljava/lang/String;

    :goto_1
    invoke-static {v12, v15}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->generateSignature(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v10, v0, [Ljava/lang/String;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v3, v10

    array-length v11, v3

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v11, :cond_3

    aget-object v9, v3, v8

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v4, v9, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    const-string v17, "facebook.auth.expireSession"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "session_key"

    sget-object v18, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->localSession_key:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->init_secret:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v17, "sig"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v13, Lorg/apache/http/client/methods/HttpPost;

    if-eqz p3, :cond_4

    const-string v17, "https://api.facebook.com/restserver.php"

    :goto_3
    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v17, "Content-Type"

    const-string v18, "application/x-www-form-urlencoded"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v17, "Accept-Encoding"

    const-string v18, "gzip"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    new-instance v6, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v6, v7}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->mClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getParseResult(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v17

    return-object v17

    :cond_4
    const-string v17, "http://api.facebook.com/restserver.php"

    goto :goto_3

    :catch_0
    move-exception v5

    new-instance v17, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v18, 0x7e5

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v17

    :catch_1
    move-exception v5

    new-instance v17, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v18, 0x7d6

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v17

    :catch_2
    move-exception v5

    new-instance v17, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v18, 0x7d8

    const-string v19, "UnsupportedEncodingException"

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    :catch_3
    move-exception v5

    new-instance v17, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v18, 0x7d8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v17

    :catch_4
    move-exception v5

    new-instance v17, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v18, 0x7d0

    const-string v19, "JSONException"

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    :catch_5
    move-exception v5

    new-instance v17, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v18, 0x7e3

    const-string v19, "ConcurrentModificationException"

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v17
.end method

.method public fql(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "facebook.fql.query"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doPost(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getAlbum([Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/Album;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getAlbums([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public getAlbums(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/Album;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getAlbums([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public getAlbums([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/Album;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance v22, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v23, 0x7d0

    const-string v24, "Either uid or aids should be specified"

    invoke-direct/range {v22 .. v24}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v22

    :cond_0
    if-nez p3, :cond_2

    :cond_1
    return-void

    :cond_2
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v22, "SELECT aid, cover_pid, owner, name, created, modified, description, location, link, size, visible FROM album WHERE "

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_3

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "owner IN ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->join(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_5

    if-eqz p1, :cond_4

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_4

    const-string v22, " AND "

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "aid IN ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->join(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v22, " ORDER BY modified DESC"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->fql(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/json/JSONArray;

    if-eqz v10, :cond_1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_f

    :try_start_0
    invoke-virtual {v10, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    new-instance v2, Lcom/htc/socialnetwork/Album;

    invoke-direct {v2}, Lcom/htc/socialnetwork/Album;-><init>()V

    const-string v22, "aid"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_6

    const-string v22, "aid"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    const-string v22, "aid"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/htc/socialnetwork/Album;->setId(Ljava/lang/String;)V

    :cond_6
    const-string v22, "created"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_7

    const-string v22, "created"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    const-string v22, "created"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Lcom/htc/socialnetwork/Album;->setCreateTime(J)V

    :cond_7
    const-string v22, "modified"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_8

    const-string v22, "modified"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    const-string v22, "modified"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Lcom/htc/socialnetwork/Album;->setUpdateTime(J)V

    :cond_8
    const-string v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_9

    const-string v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    const-string v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/htc/socialnetwork/Album;->setName(Ljava/lang/String;)V

    :cond_9
    const-string v22, "size"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_a

    const-string v22, "size"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    const-string v22, "size"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/htc/socialnetwork/Album;->setPhotoAmount(I)V

    :cond_a
    const-string v22, "cover_pid"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_b

    const-string v22, "cover_pid"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    const-string v22, "cover_pid"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/htc/socialnetwork/Album;->setCoverPhoto(Ljava/lang/String;)V

    :cond_b
    const-string v22, "visible"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_e

    const-string v22, "visible"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->privacyMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const-string v23, "visible"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    if-eqz v21, :cond_d

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/htc/socialnetwork/Album;->setVisibleType(I)V

    :goto_1
    invoke-virtual {v2}, Lcom/htc/socialnetwork/Album;->getCoverPhoto()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/htc/socialnetwork/Album;->getPhotoAmount()I

    move-result v19

    if-eqz v5, :cond_c

    if-lez v19, :cond_c

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_d
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/htc/socialnetwork/Album;->setVisibleType(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception v14

    const-string v22, "SocialNetwork-SimpleFacebookInterface"

    const-string v23, "NumberFormatException at getAlbums"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_e
    const/16 v22, 0x0

    :try_start_1
    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/htc/socialnetwork/Album;->setVisibleType(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v6

    const-string v22, "SocialNetwork-SimpleFacebookInterface"

    const-string v23, "JSONException at getAlbums"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v6

    const-string v22, "SocialNetwork-SimpleFacebookInterface"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " at getAlbums"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_f
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v3, v0, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_10

    add-int/lit8 v13, v12, 0x1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    aput-object v22, v3, v12

    move v12, v13

    goto :goto_3

    :cond_10
    array-length v0, v3

    move/from16 v22, v0

    if-lez v22, :cond_1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getPhoto(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    if-eqz v16, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_11
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/socialnetwork/Photo;

    invoke-virtual {v15}, Lcom/htc/socialnetwork/Photo;->getThumbUrl()Ljava/net/URL;

    move-result-object v20

    invoke-virtual {v15}, Lcom/htc/socialnetwork/Photo;->getPid()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/socialnetwork/Album;

    if-eqz v2, :cond_11

    if-eqz v20, :cond_11

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/htc/socialnetwork/Album;->setCoverUrl(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public getComments(Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Comment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v13, "pid"

    move-object/from16 v0, p1

    invoke-virtual {v9, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v13, "facebook.photos.getComments"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v9, v14}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONArray;

    if-nez v7, :cond_1

    const/4 v2, 0x0

    :cond_0
    return-object v2

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v5, v13, :cond_0

    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v1, Lcom/htc/socialnetwork/Comment;

    invoke-direct {v1}, Lcom/htc/socialnetwork/Comment;-><init>()V

    const-string v13, "body"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v13, "from"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v13, "time"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long v11, v13, v15

    const-string v13, "pcid"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/htc/socialnetwork/Comment;->setId(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/htc/socialnetwork/Comment;->setFromId(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Lcom/htc/socialnetwork/Comment;->setText(Ljava/lang/String;)V

    invoke-virtual {v1, v11, v12}, Lcom/htc/socialnetwork/Comment;->setTime(J)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v13, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v14, 0x7d0

    const-string v15, "JSONException"

    invoke-direct {v13, v14, v15, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13
.end method

.method public getContactInfo(Ljava/util/Collection;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/socialnetwork/User;

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v11}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v14, ","

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v14, "uids"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "facebook.users.getContactInfo"

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8, v15}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONArray;

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v5, v14, :cond_6

    :try_start_0
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "uid"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "uid"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/socialnetwork/User;

    invoke-virtual {v11}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const-string v14, "email"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "email"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v14, v2, Lorg/json/JSONObject;

    if-eqz v14, :cond_5

    move-object v0, v2

    check-cast v0, Lorg/json/JSONObject;

    move-object v3, v0

    const-string v14, "email"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "email"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/htc/socialnetwork/User;->setEmailAddress(Ljava/lang/String;)V

    :cond_2
    :goto_3
    const-string v14, "cell"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "cell"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/htc/socialnetwork/User;->setCellNumber(Ljava/lang/String;)V

    :cond_3
    const-string v14, "phone"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "phone"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/htc/socialnetwork/User;->setPhoneNumber(Ljava/lang/String;)V

    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/htc/socialnetwork/User;->setEmailAddress(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    :cond_6
    return-void
.end method

.method public getDeepLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v9, "api_key"

    iget-object v10, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->api_key:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "t"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "uid"

    move-object/from16 v0, p3

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "url"

    move-object/from16 v0, p1

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "sig"

    move-object/from16 v0, p2

    invoke-static {v8, v0}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->generateSignature(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v10, v5, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v3, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v3, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->writeTo(Ljava/io/OutputStream;)V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v9, "http://m.facebook.com/auth.php?"

    invoke-direct {v1, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v9, "UTF-8"

    invoke-virtual {v6, v9}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v9

    return-object v9

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    new-instance v9, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v10, 0x7d8

    const-string v11, "UnsuppoertedEncodingException"

    invoke-direct {v9, v10, v11, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    new-instance v9, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v10, 0x7d8

    const-string v11, "FileNotFoundException"

    invoke-direct {v9, v10, v11, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    new-instance v9, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v10, 0x7d8

    const-string v11, "IOException"

    invoke-direct {v9, v10, v11, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method protected getEventByIds([JLjava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT eid, name, description, location, start_time, end_time, creator, update_time FROM event WHERE eid IN ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-static {v4, p1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->join(Ljava/lang/CharSequence;[J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) AND end_time >= start_time AND start_time < end_time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->fql(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    instance-of v3, v1, Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {p0, v0, p2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->setEventData(Lorg/json/JSONArray;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getEventMembers(J)[Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    const/4 v12, 0x0

    const-string v2, "facebook.events.getMembers"

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v9, "eid"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "facebook.events.getMembers"

    invoke-virtual {p0, v9, v8, v12}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    if-nez v5, :cond_1

    new-array v6, v12, [Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    :try_start_0
    const-string v9, "attending"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    instance-of v9, v7, Lorg/json/JSONArray;

    if-eqz v9, :cond_2

    move-object v0, v7

    check-cast v0, Lorg/json/JSONArray;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    new-array v6, v9, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_0

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    new-array v6, v9, [Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v9, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v10, 0x7d0

    const-string v11, "JSONException"

    invoke-direct {v9, v10, v11, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method protected getEvents(Ljava/lang/String;JLjava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "start_time"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, p2, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "rsvp_status"

    const-string v4, "attending"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "facebook.events.get"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    instance-of v3, v1, Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {p0, v0, p4}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->setEventData(Lorg/json/JSONArray;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method protected getFriendIds(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "select uid from user where uid in (select uid2 from friend where uid1=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\') order by name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getSession()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v7, "uid"

    invoke-virtual {v5, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0, v6}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->fql(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_0

    :try_start_0
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "uid"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "uid"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "uid"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v7, "SocialNetwork-SimpleFacebookInterface"

    const-string v8, "JSONException in getFriendIds"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected getFriendInvites(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT uid, name FROM user WHERE uid IN ( SELECT uid_from FROM friend_request WHERE uid_to = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " )"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->fql(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    :try_start_0
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v4, 0x0

    const-string v7, "uid"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "uid"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "uid"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_2
    const-string v7, "name"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "name"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "name"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-virtual {p2, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v7, "SocialNetwork-SimpleFacebookInterface"

    const-string v8, "JSONException at getFriendInvites"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v7, "SocialNetwork-SimpleFacebookInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " at getFriendInvites"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getFriendList(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "select uid, name, pic_square from user where uid in (select uid2 from friend where uid1=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\') order by name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->fql(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    if-nez v3, :cond_1

    :cond_0
    return-object v1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_0

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v6, Lcom/htc/socialnetwork/User;

    invoke-direct {v6}, Lcom/htc/socialnetwork/User;-><init>()V

    const-string v7, "uid"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/socialnetwork/User;->setId(Ljava/lang/String;)V

    const-string v7, "name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/socialnetwork/User;->setUserName(Ljava/lang/String;)V

    const-string v7, "name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/socialnetwork/User;->setFullName(Ljava/lang/String;)V

    const-string v7, "pic_square"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "pic_square"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/socialnetwork/User;->setBuddyIconURL(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v7, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v8, 0x7d0

    const-string v9, "JSONException"

    invoke-direct {v7, v8, v9, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public getFriendListWithContactData(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "select uid , first_name , last_name , name , current_location , notes_count , pic_big , pic_square , profile_url , profile_update_time , status , wall_count , work_history , birthday_date from user where uid in (select uid2 from friend where uid1=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\') order by name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->fql(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    if-nez v3, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_1

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v6, Lcom/htc/socialnetwork/User;

    invoke-direct {v6}, Lcom/htc/socialnetwork/User;-><init>()V

    invoke-direct {p0, v6, v4}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->setUserData(Lcom/htc/socialnetwork/User;Lorg/json/JSONObject;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getContactInfo(Ljava/util/Collection;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v7, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v8, 0x7d0

    const-string v9, "JSONException"

    invoke-direct {v7, v8, v9, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public getFriends(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "select uid from user where uid in (select uid2 from friend where uid1=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\') order by name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getSession()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v7, "uid"

    invoke-virtual {v5, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, v6}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->fql(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    if-nez v3, :cond_2

    const/4 v7, 0x0

    new-array v1, v7, [Ljava/lang/String;

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v1, v7, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_1

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "uid"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v7, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v8, 0x7d0

    const-string v9, "JSONException"

    invoke-direct {v7, v8, v9, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public getGroupIds(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    const/4 v8, 0x0

    const-string v2, "facebook.groups.get"

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string v7, "uid"

    invoke-virtual {v6, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v7, "facebook.groups.get"

    invoke-virtual {p0, v7, v6, v8}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    new-array v1, v8, [Ljava/lang/String;

    :cond_1
    return-object v1

    :cond_2
    move-object v4, v5

    check-cast v4, Lorg/json/JSONArray;

    :try_start_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v1, v7, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_1

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "gid"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v7, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v8, 0x7d0

    const-string v9, "JSONException"

    invoke-direct {v7, v8, v9, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public getGroupInvites(Ljava/util/List;Ljava/util/Collection;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/GroupInvite;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    const-string v9, "gids"

    const-string v10, ","

    invoke-static {v10, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "facebook.groups.get"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v8, v10}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    instance-of v9, v7, Lorg/json/JSONArray;

    if-eqz v9, :cond_0

    move-object v4, v7

    check-cast v4, Lorg/json/JSONArray;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_0

    :try_start_0
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_4

    const/4 v1, 0x0

    const/4 v6, 0x0

    const-string v9, "gid"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "gid"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "gid"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v9, "name"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "name"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "name"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v6, :cond_4

    new-instance v3, Lcom/htc/socialnetwork/GroupInvite;

    invoke-direct {v3}, Lcom/htc/socialnetwork/GroupInvite;-><init>()V

    invoke-virtual {v3, v1}, Lcom/htc/socialnetwork/GroupInvite;->setGroupId(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/htc/socialnetwork/GroupInvite;->setGroupName(Ljava/lang/String;)V

    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v9, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v10, 0x7d0

    const-string v11, "JSONException"

    invoke-direct {v9, v10, v11, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method public getLikeList(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select user_id from like where object_id in (select object_id from photo where pid=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->fql(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_0

    move-object v2, v4

    check-cast v2, Lorg/json/JSONArray;

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    :try_start_0
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "user_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    return-object v3
.end method

.method public getLoginUser()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    const-string v1, "facebook.users.getLoggedInUser"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v3, "facebook.users.getLoggedInUser"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v2, v4}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Lcom/htc/socialnetwork/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getNotifications(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Update;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    const-string v10, "facebook.notifications.get"

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v17, "facebook.notifications.get"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v12, v2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v17, "friend_requests"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_0

    instance-of v0, v11, Lorg/json/JSONArray;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object v0, v11

    check-cast v0, Lorg/json/JSONArray;

    move-object v5, v0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_0

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string v17, "group_invites"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1

    instance-of v0, v11, Lorg/json/JSONArray;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object v0, v11

    check-cast v0, Lorg/json/JSONArray;

    move-object v5, v0

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_1

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    const-string v17, "event_invites"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_2

    instance-of v0, v11, Lorg/json/JSONArray;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object v0, v11

    check-cast v0, Lorg/json/JSONArray;

    move-object v5, v0

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_2

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    instance-of v0, v11, Lorg/json/JSONObject;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object v0, v11

    check-cast v0, Lorg/json/JSONObject;

    move-object v9, v0

    const-string v17, "unread"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    new-instance v16, Lcom/htc/socialnetwork/Update;

    invoke-direct/range {v16 .. v16}, Lcom/htc/socialnetwork/Update;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/htc/socialnetwork/Update;->setType(Ljava/lang/String;)V

    const-string v17, "unread"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/htc/socialnetwork/Update;->setCount(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    new-instance v17, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v18, 0x7d0

    const-string v19, "JSONException"

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    :cond_4
    return-void
.end method

.method public getPageInfo(Ljava/lang/String;)Lcom/htc/socialnetwork/User;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7e0

    const-string v7, "User ID should be specified"

    invoke-direct {v5, v6, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v5

    :cond_0
    const-string v5, "page_ids"

    invoke-virtual {v3, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "fields"

    const-string v6, "page_id , name , pic_big , pic_square"

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "facebook.pages.getInfo"

    invoke-virtual {p0, v5, v3, v7}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    if-nez v1, :cond_1

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_1
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v4, Lcom/htc/socialnetwork/User;

    invoke-direct {v4}, Lcom/htc/socialnetwork/User;-><init>()V

    invoke-direct {p0, v4, v2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->setUserData(Lcom/htc/socialnetwork/User;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "SocialNetwork-SimpleFacebookInterface"

    const-string v6, "get page error "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7d0

    const-string v7, "JSONException"

    invoke-direct {v5, v6, v7, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getPhoto(JLjava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    const-string v9, "facebook.photos.get"

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v12, -0x1

    cmp-long v12, p1, v12

    if-nez v12, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    array-length v12, v0

    if-nez v12, :cond_1

    :cond_0
    new-instance v12, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v13, 0x7d0

    const-string v14, "Either subjId or aids or pids should be specified"

    invoke-direct {v12, v13, v14}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v12

    :cond_1
    const-wide/16 v12, -0x1

    cmp-long v12, p1, v12

    if-eqz v12, :cond_2

    const-string v12, "subj_id"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p3, :cond_3

    const-string v12, "aid"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    array-length v12, v0

    if-lez v12, :cond_4

    const-string v12, "pids"

    const-string v13, ","

    move-object/from16 v0, p4

    invoke-static {v13, v0}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->join(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v12, "facebook.photos.get"

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8, v13}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doPost(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_d

    instance-of v12, v2, Lorg/json/JSONArray;

    if-eqz v12, :cond_d

    move-object v5, v2

    check-cast v5, Lorg/json/JSONArray;

    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v4, v12, :cond_e

    :try_start_0
    new-instance v11, Lcom/htc/socialnetwork/Photo;

    invoke-direct {v11}, Lcom/htc/socialnetwork/Photo;-><init>()V

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v12, "aid"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "aid"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, "aid"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/socialnetwork/Photo;->setAlbum(Ljava/lang/String;)V

    :cond_5
    const-string v12, "caption"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "caption"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v12, "caption"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/socialnetwork/Photo;->setTitle(Ljava/lang/String;)V

    :cond_6
    const-string v12, "src_big"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, "src_big"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v12

    if-eqz v12, :cond_7

    :try_start_1
    new-instance v12, Ljava/net/URL;

    const-string v13, "src_big"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/htc/socialnetwork/Photo;->setUrl(Ljava/net/URL;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_7
    :goto_1
    :try_start_2
    const-string v12, "src_small"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "src_small"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v12

    if-eqz v12, :cond_8

    :try_start_3
    new-instance v12, Ljava/net/URL;

    const-string v13, "src_small"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/htc/socialnetwork/Photo;->setThumbUrl(Ljava/net/URL;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_8
    :goto_2
    :try_start_4
    const-string v12, "link"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    const-string v12, "link"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v12

    if-eqz v12, :cond_9

    :try_start_5
    new-instance v12, Ljava/net/URL;

    const-string v13, "link"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/htc/socialnetwork/Photo;->setLink(Ljava/net/URL;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_9
    :goto_3
    :try_start_6
    const-string v12, "created"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_a

    const-string v12, "created"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    const-string v12, "created"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Lcom/htc/socialnetwork/Photo;->setTime(J)V

    :cond_a
    const-string v12, "modified"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_b

    const-string v12, "modified"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    const-string v12, "modified"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Lcom/htc/socialnetwork/Photo;->setLastUpdateTime(J)V

    :cond_b
    const-string v12, "pid"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_c

    const-string v12, "pid"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    const-string v12, "pid"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/socialnetwork/Photo;->setPid(Ljava/lang/String;)V

    :cond_c
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const-string v12, "SocialNetwork-SimpleFacebookInterface"

    const-string v13, "NumberFormatException at getPhoto"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    move-exception v3

    const-string v12, "SocialNetwork-SimpleFacebookInterface"

    const-string v13, "JSONException at getPhoto"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_2
    move-exception v3

    const-string v12, "SocialNetwork-SimpleFacebookInterface"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " at getPhoto"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_d
    const/4 v10, 0x0

    :cond_e
    return-object v10

    :catch_3
    move-exception v12

    goto/16 :goto_3

    :catch_4
    move-exception v12

    goto/16 :goto_2

    :catch_5
    move-exception v12

    goto/16 :goto_1
.end method

.method public getPhoto(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getPhoto(JLjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getSession()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_key:Ljava/lang/String;

    return-object v0
.end method

.method protected getSessionSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_secret:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusList(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v7, "facebook.status.get"

    if-eqz p1, :cond_0

    const-string v8, "uid"

    invoke-virtual {v4, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v8, "facebook.status.get"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v4, v9}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    if-nez v2, :cond_2

    :cond_1
    return-object v6

    :cond_2
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v5, Lcom/htc/socialnetwork/Status;

    invoke-direct {v5}, Lcom/htc/socialnetwork/Status;-><init>()V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "message"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/htc/socialnetwork/Status;->setMessage(Ljava/lang/String;)V

    const-string v8, "time"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Lcom/htc/socialnetwork/Status;->setTime(J)V

    const-string v8, "status_id"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/htc/socialnetwork/Status;->setStatusId(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v8, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v9, 0x7d0

    const-string v10, "JSONException"

    invoke-direct {v8, v9, v10, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method public getUserByName(Ljava/lang/String;)[Lcom/htc/socialnetwork/User;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select uid , first_name , last_name , name , current_location , notes_count , pic_big , pic_square , profile_url , profile_update_time , status , wall_count , work_history , birthday_date from user where name=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->fql(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    if-nez v2, :cond_1

    const/4 v5, 0x0

    :cond_0
    return-object v5

    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v5, v6, [Lcom/htc/socialnetwork/User;

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    array-length v6, v5

    if-ge v1, v6, :cond_0

    new-instance v4, Lcom/htc/socialnetwork/User;

    invoke-direct {v4}, Lcom/htc/socialnetwork/User;-><init>()V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    aput-object v4, v5, v1

    invoke-direct {p0, v4, v3}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->setUserData(Lcom/htc/socialnetwork/User;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v7, 0x7d0

    const-string v8, "JSONException"

    invoke-direct {v6, v7, v8, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getUserInfo(Ljava/lang/String;)Lcom/htc/socialnetwork/User;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7e0

    const-string v7, "User ID should be specified"

    invoke-direct {v5, v6, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v5

    :cond_0
    const-string v5, "uids"

    invoke-virtual {v3, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "fields"

    const-string v6, "uid , first_name , last_name , name , current_location , notes_count , pic_big , pic_square , profile_url , profile_update_time , status , wall_count , work_history , birthday_date"

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "facebook.users.getInfo"

    invoke-virtual {p0, v5, v3, v7}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getPageInfo(Ljava/lang/String;)Lcom/htc/socialnetwork/User;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_2
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v4, Lcom/htc/socialnetwork/User;

    invoke-direct {v4}, Lcom/htc/socialnetwork/User;-><init>()V

    invoke-direct {p0, v4, v2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->setUserData(Lcom/htc/socialnetwork/User;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7d0

    const-string v7, "JSONException"

    invoke-direct {v5, v6, v7, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected getUserInfo(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v7, 0x7e0

    const-string v8, "User ID should be specified"

    invoke-direct {v6, v7, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v6

    :cond_1
    const-string v6, "uids"

    const-string v7, ","

    invoke-static {v7, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "fields"

    const-string v7, "uid , first_name , last_name , name , current_location , notes_count , pic_big , pic_square , profile_url , profile_update_time , status , wall_count , work_history , birthday_date"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "facebook.users.getInfo"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v4, v7}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doPost(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    if-nez v2, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_3

    :try_start_0
    new-instance v5, Lcom/htc/socialnetwork/User;

    invoke-direct {v5}, Lcom/htc/socialnetwork/User;-><init>()V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v5, v3}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->setUserData(Lcom/htc/socialnetwork/User;Lorg/json/JSONObject;)V

    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v6, "SocialNetwork-SimpleFacebookInterface"

    const-string v7, "JSONException at getUserInfo(Collection<String> , Collection<User> )"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getContactInfo(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getUserInfo([Ljava/lang/String;)[Lcom/htc/socialnetwork/User;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    array-length v7, p1

    if-nez v7, :cond_1

    :cond_0
    new-instance v7, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v8, 0x7e0

    const-string v9, "User ID should be specified"

    invoke-direct {v7, v8, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v7

    :cond_1
    const-string v7, "uids"

    const-string v8, ","

    invoke-static {v8, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "fields"

    const-string v8, "uid , first_name , last_name , name , current_location , notes_count , pic_big , pic_square , profile_url , profile_update_time , status , wall_count , work_history , birthday_date"

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "facebook.users.getInfo"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v4, v8}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    if-nez v2, :cond_3

    const/4 v6, 0x0

    :cond_2
    return-object v6

    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v6, v7, [Lcom/htc/socialnetwork/User;

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    array-length v7, v6

    if-ge v1, v7, :cond_2

    new-instance v5, Lcom/htc/socialnetwork/User;

    invoke-direct {v5}, Lcom/htc/socialnetwork/User;-><init>()V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    aput-object v5, v6, v1

    invoke-direct {p0, v5, v3}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->setUserData(Lcom/htc/socialnetwork/User;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v7, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v8, 0x7d0

    const-string v9, "JSONException"

    invoke-direct {v7, v8, v9, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string v0, "facebook.auth.login"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_secret:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_key:Ljava/lang/String;

    const-string v5, "email"

    invoke-virtual {v3, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "password"

    invoke-virtual {v3, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v5, "facebook.auth.login"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v3, v6}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    if-nez v2, :cond_0

    :goto_0
    return-object v4

    :cond_0
    const-string v5, "session_key"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_key:Ljava/lang/String;

    const-string v5, "secret"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_secret:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getLoginUser()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/htc/socialnetwork/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7d0

    const-string v7, "JSONException"

    invoke-direct {v5, v6, v7, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_1
    move-exception v1

    const-string v5, "SocialNetwork-SimpleFacebookInterface"

    invoke-virtual {v1}, Lcom/htc/socialnetwork/AuthenticationException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public logout()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "facebook.auth.expireSession"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v2, "facebook.auth.expireSession"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/htc/socialnetwork/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v5, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_key:Ljava/lang/String;

    iput-object v5, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_secret:Ljava/lang/String;

    return v4

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected setEventData(Lorg/json/JSONArray;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    const-wide/16 v7, 0x3e8

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_8

    :try_start_0
    new-instance v1, Lcom/htc/socialnetwork/Event;

    invoke-direct {v1}, Lcom/htc/socialnetwork/Event;-><init>()V

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "eid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "eid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "eid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/htc/socialnetwork/Event;->setId(J)V

    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/socialnetwork/Event;->setName(Ljava/lang/String;)V

    :goto_1
    const-string v5, "creator"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "creator"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "creator"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/socialnetwork/Event;->setCreator(Ljava/lang/String;)V

    :goto_2
    const-string v5, "description"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "description"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "description"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/socialnetwork/Event;->setDescription(Ljava/lang/String;)V

    :goto_3
    const-string v5, "location"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "location"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "location"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/socialnetwork/Event;->setLocation(Ljava/lang/String;)V

    :goto_4
    const-string v5, "end_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "end_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "end_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    mul-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lcom/htc/socialnetwork/Event;->setEndTime(J)V

    :cond_0
    const-string v5, "start_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "start_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "start_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    mul-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lcom/htc/socialnetwork/Event;->setStartTime(J)V

    :cond_1
    const-string v5, "update_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "update_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "update_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    mul-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lcom/htc/socialnetwork/Event;->setUpdateTime(J)V

    :cond_2
    invoke-virtual {v1}, Lcom/htc/socialnetwork/Event;->getId()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getEventMembers(J)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/socialnetwork/Event;->setEventMembers(Ljava/util/List;)V

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    const-string v5, ""

    invoke-virtual {v1, v5}, Lcom/htc/socialnetwork/Event;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v5, "SocialNetwork-SimpleFacebookInterface"

    const-string v6, "NumberFormatException at getEvents"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    :try_start_1
    const-string v5, ""

    invoke-virtual {v1, v5}, Lcom/htc/socialnetwork/Event;->setCreator(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    :catch_1
    move-exception v0

    const-string v5, "SocialNetwork-SimpleFacebookInterface"

    const-string v6, "JSONException at getEvents"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    :try_start_2
    const-string v5, ""

    invoke-virtual {v1, v5}, Lcom/htc/socialnetwork/Event;->setDescription(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    const-string v5, "SocialNetwork-SimpleFacebookInterface"

    const-string v6, "Exception at getEvents"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    :try_start_3
    const-string v5, ""

    invoke-virtual {v1, v5}, Lcom/htc/socialnetwork/Event;->setLocation(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    :cond_8
    return-void
.end method

.method public setLike(Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string v1, "facebook.photos.addLike"

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "pid"

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v3}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SocialNetwork-SimpleFacebookInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addLike result"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "facebook.photos.removeLike"

    goto :goto_0
.end method

.method public setStatus(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    const-string v1, "facebook.status.set"

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string v2, "status"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v2, "facebook.status.set"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public updateSession(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_key:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_key:Ljava/lang/String;

    sput-object v1, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->localSession_key:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_secret:Ljava/lang/String;

    goto :goto_0
.end method
