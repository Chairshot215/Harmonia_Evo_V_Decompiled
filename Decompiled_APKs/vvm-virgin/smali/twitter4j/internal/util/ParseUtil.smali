.class public final Ltwitter4j/internal/util/ParseUtil;
.super Ljava/lang/Object;
.source "ParseUtil.java"


# static fields
.field private static formatMap:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/text/SimpleDateFormat;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ltwitter4j/internal/util/ParseUtil$1;

    invoke-direct {v0}, Ltwitter4j/internal/util/ParseUtil$1;-><init>()V

    sput-object v0, Ltwitter4j/internal/util/ParseUtil;->formatMap:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 2
    .parameter "name"
    .parameter "json"

    .prologue
    .line 150
    invoke-static {p0, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    :cond_0
    const/4 v1, 0x0

    .line 154
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public static getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .parameter "name"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 93
    sget-object v2, Ltwitter4j/internal/util/ParseUtil;->formatMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    .line 94
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    if-nez v1, :cond_0

    .line 95
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1           #sdf:Ljava/text/SimpleDateFormat;
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, p1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 96
    .restart local v1       #sdf:Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 97
    sget-object v2, Ltwitter4j/internal/util/ParseUtil;->formatMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_0
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, pe:Ljava/text/ParseException;
    new-instance v2, Ltwitter4j/TwitterException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unexpected date format("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") returned from twitter.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public static getDate(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/Date;
    .locals 1
    .parameter "name"
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 80
    const-string v0, "EEE MMM d HH:mm:ss z yyyy"

    invoke-static {p0, p1, v0}, Ltwitter4j/internal/util/ParseUtil;->getDate(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getDate(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .parameter "name"
    .parameter "json"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p0, p1}, Ltwitter4j/internal/util/ParseUtil;->getUnescapedString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, dateStr:Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 86
    :cond_0
    const/4 v1, 0x0

    .line 88
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0, p2}, Ltwitter4j/internal/util/ParseUtil;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDouble(Ljava/lang/String;Lorg/json/JSONObject;)D
    .locals 3
    .parameter "name"
    .parameter "json"

    .prologue
    .line 141
    invoke-static {p0, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, str2:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    :cond_0
    const-wide/high16 v1, -0x4010

    .line 145
    :goto_0
    return-wide v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_0
.end method

.method public static getInt(Ljava/lang/String;)I
    .locals 3
    .parameter "str"

    .prologue
    const/4 v1, -0x1

    .line 111
    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 115
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 118
    .local v0, nfe:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getInt(Ljava/lang/String;Lorg/json/JSONObject;)I
    .locals 1
    .parameter "name"
    .parameter "json"

    .prologue
    .line 107
    invoke-static {p0, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLong(Ljava/lang/String;)J
    .locals 4
    .parameter "str"

    .prologue
    .line 128
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    const-wide/16 v0, -0x1

    .line 136
    :goto_0
    return-wide v0

    .line 132
    :cond_1
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 134
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    .line 136
    :cond_2
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getLong(Ljava/lang/String;Lorg/json/JSONObject;)J
    .locals 2
    .parameter "name"
    .parameter "json"

    .prologue
    .line 124
    invoke-static {p0, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "name"
    .parameter "json"

    .prologue
    const/4 v1, 0x0

    .line 58
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    :goto_0
    return-object v1

    .line 61
    :cond_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, jsone:Lorg/json/JSONException;
    goto :goto_0
.end method

.method public static getURLDecodedString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .parameter "json"

    .prologue
    .line 69
    invoke-static {p0, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, returnValue:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 72
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 76
    :cond_0
    :goto_0
    return-object v0

    .line 73
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getUnescapedString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "json"

    .prologue
    .line 53
    invoke-static {p0, p1}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/internal/http/HTMLEntity;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
