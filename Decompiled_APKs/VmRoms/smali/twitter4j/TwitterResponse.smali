.class public Ltwitter4j/TwitterResponse;
.super Ljava/lang/Object;
.source "TwitterResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final IS_DALVIK:Z = false

.field private static formatMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x30d96af8300e975aL


# instance fields
.field private transient rateLimitLimit:I

.field private transient rateLimitRemaining:I

.field private transient rateLimitReset:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltwitter4j/TwitterResponse;->formatMap:Ljava/util/Map;

    .line 62
    invoke-static {}, Ltwitter4j/Configuration;->isDalvik()Z

    move-result v0

    sput-boolean v0, Ltwitter4j/TwitterResponse;->IS_DALVIK:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v0, p0, Ltwitter4j/TwitterResponse;->rateLimitLimit:I

    .line 60
    iput v0, p0, Ltwitter4j/TwitterResponse;->rateLimitRemaining:I

    .line 61
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltwitter4j/TwitterResponse;->rateLimitReset:J

    .line 65
    return-void
.end method

.method public constructor <init>(Ltwitter4j/http/Response;)V
    .locals 5
    .parameter "res"

    .prologue
    const/4 v3, -0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v3, p0, Ltwitter4j/TwitterResponse;->rateLimitLimit:I

    .line 60
    iput v3, p0, Ltwitter4j/TwitterResponse;->rateLimitRemaining:I

    .line 61
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Ltwitter4j/TwitterResponse;->rateLimitReset:J

    .line 68
    const-string v3, "X-RateLimit-Limit"

    invoke-virtual {p1, v3}, Ltwitter4j/http/Response;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, limit:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Ltwitter4j/TwitterResponse;->rateLimitLimit:I

    .line 72
    :cond_0
    const-string v3, "X-RateLimit-Remaining"

    invoke-virtual {p1, v3}, Ltwitter4j/http/Response;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, remaining:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Ltwitter4j/TwitterResponse;->rateLimitRemaining:I

    .line 76
    :cond_1
    const-string v3, "X-RateLimit-Reset"

    invoke-virtual {p1, v3}, Ltwitter4j/http/Response;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, reset:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 78
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Ltwitter4j/TwitterResponse;->rateLimitReset:J

    .line 80
    :cond_2
    return-void
.end method

.method protected static ensureRootNodeNameIs(Ljava/lang/String;Lorg/w3c/dom/Document;)V
    .locals 4
    .parameter "rootName"
    .parameter "doc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 107
    .local v0, elem:Lorg/w3c/dom/Element;
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Ltwitter4j/TwitterException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unexpected root node name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ". Expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ". Check the availability of the Twitter API at http://status.twitter.com/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_0
    return-void
.end method

.method protected static ensureRootNodeNameIs(Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "rootName"
    .parameter "elem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ltwitter4j/TwitterException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unexpected root node name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ". Expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ". Check the availability of the Twitter API at http://status.twitter.com/."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    return-void
.end method

.method protected static ensureRootNodeNameIs([Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .locals 10
    .parameter "rootNames"
    .parameter "elem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, actualRootName:Ljava/lang/String;
    move-object v1, p0

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v1, v4

    .line 91
    .local v6, rootName:Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 92
    return-void

    .line 90
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 95
    .end local v6           #rootName:Ljava/lang/String;
    :cond_1
    const-string v2, ""

    .line 96
    .local v2, expected:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v7, p0

    if-ge v3, v7, :cond_3

    .line 97
    if-eqz v3, :cond_2

    .line 98
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " or "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    :cond_2
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    aget-object v8, p0, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 102
    :cond_3
    new-instance v7, Ltwitter4j/TwitterException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Unexpected root node name:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ". Expected:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ". Check the availability of the Twitter API at http://status.twitter.com/."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method protected static getBoolean(Ljava/lang/String;Ltwitter4j/org/json/JSONObject;)Z
    .locals 2
    .parameter "key"
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p1, p0}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    :cond_0
    const/4 v1, 0x0

    .line 215
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method protected static getChildBoolean(Ljava/lang/String;Lorg/w3c/dom/Element;)Z
    .locals 2
    .parameter "str"
    .parameter "elem"

    .prologue
    .line 168
    invoke-static {p0, p1}, Ltwitter4j/TwitterResponse;->getTextContent(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method protected static getChildDate(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/util/Date;
    .locals 1
    .parameter "str"
    .parameter "elem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 172
    const-string v0, "EEE MMM d HH:mm:ss z yyyy"

    invoke-static {p0, p1, v0}, Ltwitter4j/TwitterResponse;->getChildDate(Ljava/lang/String;Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected static getChildDate(Ljava/lang/String;Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .parameter "str"
    .parameter "elem"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {p0, p1}, Ltwitter4j/TwitterResponse;->getChildText(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ltwitter4j/TwitterResponse;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected static getChildInt(Ljava/lang/String;Lorg/w3c/dom/Element;)I
    .locals 2
    .parameter "str"
    .parameter "elem"

    .prologue
    .line 134
    invoke-static {p0, p1}, Ltwitter4j/TwitterResponse;->getTextContent(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, str2:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    :cond_0
    const/4 v1, -0x1

    .line 138
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method protected static getChildLong(Ljava/lang/String;Lorg/w3c/dom/Element;)J
    .locals 3
    .parameter "str"
    .parameter "elem"

    .prologue
    .line 143
    invoke-static {p0, p1}, Ltwitter4j/TwitterResponse;->getTextContent(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, str2:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    :cond_0
    const-wide/16 v1, -0x1

    .line 147
    :goto_0
    return-wide v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method protected static getChildText(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "elem"

    .prologue
    .line 118
    invoke-static {p0, p1}, Ltwitter4j/TwitterResponse;->getTextContent(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/http/HTMLEntity;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getInt(Ljava/lang/String;Ltwitter4j/org/json/JSONObject;)I
    .locals 2
    .parameter "key"
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p1, p0}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    :cond_0
    const/4 v1, -0x1

    .line 200
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method protected static getLong(Ljava/lang/String;Ltwitter4j/org/json/JSONObject;)J
    .locals 3
    .parameter "key"
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p1, p0}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    :cond_0
    const-wide/16 v1, -0x1

    .line 208
    :goto_0
    return-wide v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method

.method protected static getString(Ljava/lang/String;Ltwitter4j/org/json/JSONObject;Z)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .parameter "json"
    .parameter "decode"

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, returnValue:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, p0}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ltwitter4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 155
    if-eqz p2, :cond_0

    .line 157
    :try_start_1
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ltwitter4j/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 164
    :cond_0
    :goto_0
    return-object v0

    .line 161
    :catch_0
    move-exception v1

    goto :goto_0

    .line 158
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method protected static getTextContent(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 4
    .parameter "str"
    .parameter "elem"

    .prologue
    .line 122
    invoke-interface {p1, p0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 123
    .local v2, nodelist:Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_1

    .line 124
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 125
    .local v0, node:Lorg/w3c/dom/Node;
    if-eqz v0, :cond_1

    .line 126
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, nodeValue:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v3, v1

    .line 130
    .end local v0           #node:Lorg/w3c/dom/Node;
    .end local v1           #nodeValue:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 127
    .restart local v0       #node:Lorg/w3c/dom/Node;
    .restart local v1       #nodeValue:Ljava/lang/String;
    :cond_0
    const-string v3, ""

    goto :goto_0

    .line 130
    .end local v0           #node:Lorg/w3c/dom/Node;
    .end local v1           #nodeValue:Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto :goto_0
.end method

.method protected static isRootNodeNilClasses(Lorg/w3c/dom/Document;)Z
    .locals 2
    .parameter "doc"

    .prologue
    .line 113
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, root:Ljava/lang/String;
    const-string v1, "nil-classes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "nilclasses"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .parameter "str"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 179
    sget-object v2, Ltwitter4j/TwitterResponse;->formatMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    .line 180
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    if-nez v1, :cond_0

    .line 181
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1           #sdf:Ljava/text/SimpleDateFormat;
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, p1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 182
    .restart local v1       #sdf:Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 183
    sget-object v2, Ltwitter4j/TwitterResponse;->formatMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_0
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 189
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 190
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 191
    .local v0, pe:Ljava/text/ParseException;
    new-instance v2, Ltwitter4j/TwitterException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unexpected format("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") returned from twitter.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getRateLimitLimit()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Ltwitter4j/TwitterResponse;->rateLimitLimit:I

    return v0
.end method

.method public getRateLimitRemaining()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Ltwitter4j/TwitterResponse;->rateLimitRemaining:I

    return v0
.end method

.method public getRateLimitReset()J
    .locals 2

    .prologue
    .line 227
    iget-wide v0, p0, Ltwitter4j/TwitterResponse;->rateLimitReset:J

    return-wide v0
.end method
