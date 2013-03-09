.class public Ltwitter4j/http/Response;
.super Ljava/lang/Object;
.source "Response.java"


# static fields
.field private static final DEBUG:Z

.field private static builders:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljavax/xml/parsers/DocumentBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static escaped:Ljava/util/regex/Pattern;


# instance fields
.field private con:Ljava/net/HttpURLConnection;

.field private is:Ljava/io/InputStream;

.field private responseAsDocument:Lorg/w3c/dom/Document;

.field private responseAsString:Ljava/lang/String;

.field private statusCode:I

.field private streamConsumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Ltwitter4j/Configuration;->getDebug()Z

    move-result v0

    sput-boolean v0, Ltwitter4j/http/Response;->DEBUG:Z

    .line 58
    new-instance v0, Ltwitter4j/http/Response$1;

    invoke-direct {v0}, Ltwitter4j/http/Response$1;-><init>()V

    sput-object v0, Ltwitter4j/http/Response;->builders:Ljava/lang/ThreadLocal;

    .line 221
    const-string v0, "&#([0-9]{3,5});"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ltwitter4j/http/Response;->escaped:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v0, p0, Ltwitter4j/http/Response;->responseAsDocument:Lorg/w3c/dom/Document;

    .line 74
    iput-object v0, p0, Ltwitter4j/http/Response;->responseAsString:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/http/Response;->streamConsumed:Z

    .line 94
    iput-object p1, p0, Ltwitter4j/http/Response;->responseAsString:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 2
    .parameter "con"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v0, p0, Ltwitter4j/http/Response;->responseAsDocument:Lorg/w3c/dom/Document;

    .line 74
    iput-object v0, p0, Ltwitter4j/http/Response;->responseAsString:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/http/Response;->streamConsumed:Z

    .line 81
    iput-object p1, p0, Ltwitter4j/http/Response;->con:Ljava/net/HttpURLConnection;

    .line 82
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Ltwitter4j/http/Response;->statusCode:I

    .line 83
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/http/Response;->is:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/http/Response;->is:Ljava/io/InputStream;

    .line 86
    :cond_0
    iget-object v0, p0, Ltwitter4j/http/Response;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    const-string v0, "gzip"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Ltwitter4j/http/Response;->is:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ltwitter4j/http/Response;->is:Ljava/io/InputStream;

    .line 90
    :cond_1
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 256
    sget-boolean v0, Ltwitter4j/http/Response;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 257
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 259
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "message"
    .parameter "message2"

    .prologue
    .line 262
    sget-boolean v0, Ltwitter4j/http/Response;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/http/Response;->log(Ljava/lang/String;)V

    .line 265
    :cond_0
    return-void
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "original"

    .prologue
    .line 231
    sget-object v2, Ltwitter4j/http/Response;->escaped:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 232
    .local v0, mm:Ljava/util/regex/Matcher;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 233
    .local v1, unescaped:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 238
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public asDocument()Lorg/w3c/dom/Document;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v2, p0, Ltwitter4j/http/Response;->responseAsDocument:Lorg/w3c/dom/Document;

    if-nez v2, :cond_0

    .line 171
    :try_start_0
    sget-object v2, Ltwitter4j/http/Response;->builders:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/parsers/DocumentBuilder;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ltwitter4j/http/Response;->asString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/http/Response;->responseAsDocument:Lorg/w3c/dom/Document;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    :cond_0
    iget-object v2, p0, Ltwitter4j/http/Response;->responseAsDocument:Lorg/w3c/dom/Document;

    return-object v2

    .line 172
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 173
    .local v1, saxe:Lorg/xml/sax/SAXException;
    new-instance v2, Ltwitter4j/TwitterException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "The response body was not well-formed:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/http/Response;->responseAsString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 174
    .end local v1           #saxe:Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 175
    .local v0, ioe:Ljava/io/IOException;
    new-instance v2, Ltwitter4j/TwitterException;

    const-string v3, "There\'s something with the connection."

    invoke-direct {v2, v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public asJSONArray()Ltwitter4j/org/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 203
    :try_start_0
    new-instance v1, Ltwitter4j/org/json/JSONArray;

    invoke-virtual {p0}, Ltwitter4j/http/Response;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/org/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ltwitter4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 204
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 205
    .local v0, jsone:Ltwitter4j/org/json/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/http/Response;->responseAsString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public asJSONObject()Ltwitter4j/org/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 189
    :try_start_0
    new-instance v1, Ltwitter4j/org/json/JSONObject;

    invoke-virtual {p0}, Ltwitter4j/http/Response;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/org/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ltwitter4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 190
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 191
    .local v0, jsone:Ltwitter4j/org/json/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/http/Response;->responseAsString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public asReader()Ljava/io/InputStreamReader;
    .locals 4

    .prologue
    .line 211
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Ltwitter4j/http/Response;->is:Ljava/io/InputStream;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-object v1

    .line 212
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 213
    .local v0, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Ltwitter4j/http/Response;->is:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public asStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 116
    iget-boolean v0, p0, Ltwitter4j/http/Response;->streamConsumed:Z

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stream has already been consumed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iget-object v0, p0, Ltwitter4j/http/Response;->is:Ljava/io/InputStream;

    return-object v0
.end method

.method public asString()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v6, p0, Ltwitter4j/http/Response;->responseAsString:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 132
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/http/Response;->asStream()Ljava/io/InputStream;

    move-result-object v5

    .line 133
    .local v5, stream:Ljava/io/InputStream;
    if-nez v5, :cond_0

    .line 134
    const/4 v6, 0x0

    .line 157
    .end local v5           #stream:Ljava/io/InputStream;
    :goto_0
    return-object v6

    .line 136
    .restart local v5       #stream:Ljava/io/InputStream;
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 137
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 139
    .local v1, buf:Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 140
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 150
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v3           #line:Ljava/lang/String;
    .end local v5           #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 152
    .local v4, npe:Ljava/lang/NullPointerException;
    new-instance v6, Ltwitter4j/TwitterException;

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 142
    .end local v4           #npe:Ljava/lang/NullPointerException;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/lang/StringBuffer;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v5       #stream:Ljava/io/InputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/http/Response;->responseAsString:Ljava/lang/String;

    .line 143
    invoke-static {}, Ltwitter4j/Configuration;->isDalvik()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 144
    iget-object v6, p0, Ltwitter4j/http/Response;->responseAsString:Ljava/lang/String;

    invoke-static {v6}, Ltwitter4j/http/Response;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/http/Response;->responseAsString:Ljava/lang/String;

    .line 146
    :cond_2
    iget-object v6, p0, Ltwitter4j/http/Response;->responseAsString:Ljava/lang/String;

    invoke-direct {p0, v6}, Ltwitter4j/http/Response;->log(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 148
    iget-object v6, p0, Ltwitter4j/http/Response;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 149
    const/4 v6, 0x1

    iput-boolean v6, p0, Ltwitter4j/http/Response;->streamConsumed:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 157
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v3           #line:Ljava/lang/String;
    .end local v5           #stream:Ljava/io/InputStream;
    :cond_3
    iget-object v6, p0, Ltwitter4j/http/Response;->responseAsString:Ljava/lang/String;

    goto :goto_0

    .line 153
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 154
    .local v2, ioe:Ljava/io/IOException;
    new-instance v6, Ltwitter4j/TwitterException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Ltwitter4j/http/Response;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 219
    return-void
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 102
    iget-object v0, p0, Ltwitter4j/http/Response;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Ltwitter4j/http/Response;->statusCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Ltwitter4j/http/Response;->responseAsString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Ltwitter4j/http/Response;->responseAsString:Ljava/lang/String;

    .line 246
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Response{statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/http/Response;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/http/Response;->responseAsDocument:Lorg/w3c/dom/Document;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", responseString=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/http/Response;->responseAsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", is="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/http/Response;->is:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", con="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/http/Response;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
