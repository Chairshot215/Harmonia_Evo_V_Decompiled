.class public abstract Ltwitter4j/internal/http/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# static fields
.field static class$twitter4j$internal$http$HttpResponseImpl:Ljava/lang/Class;

.field private static final logger:Ltwitter4j/internal/logging/Logger;


# instance fields
.field protected final CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

.field protected is:Ljava/io/InputStream;

.field private json:Lorg/json/JSONObject;

.field protected responseAsString:Ljava/lang/String;

.field protected statusCode:I

.field private streamConsumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Ltwitter4j/internal/http/HttpResponse;->class$twitter4j$internal$http$HttpResponseImpl:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "twitter4j.internal.http.HttpResponseImpl"

    invoke-static {v0}, Ltwitter4j/internal/http/HttpResponse;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/internal/http/HttpResponse;->class$twitter4j$internal$http$HttpResponseImpl:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Ltwitter4j/internal/logging/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/internal/http/HttpResponse;->logger:Ltwitter4j/internal/logging/Logger;

    return-void

    :cond_0
    sget-object v0, Ltwitter4j/internal/http/HttpResponse;->class$twitter4j$internal$http$HttpResponseImpl:Ljava/lang/Class;

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v1, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/internal/http/HttpResponse;->streamConsumed:Z

    .line 129
    iput-object v1, p0, Ltwitter4j/internal/http/HttpResponse;->json:Lorg/json/JSONObject;

    .line 44
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpResponse;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    .line 45
    return-void
.end method

.method public constructor <init>(Ltwitter4j/internal/http/HttpClientConfiguration;)V
    .locals 2
    .parameter "conf"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v1, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/internal/http/HttpResponse;->streamConsumed:Z

    .line 129
    iput-object v1, p0, Ltwitter4j/internal/http/HttpResponse;->json:Lorg/json/JSONObject;

    .line 48
    iput-object p1, p0, Ltwitter4j/internal/http/HttpResponse;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    .line 49
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private disconnectForcibly()V
    .locals 1

    .prologue
    .line 224
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final asJSONArray()Lorg/json/JSONArray;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, json:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 184
    .local v3, reader:Ljava/io/InputStreamReader;
    :try_start_0
    sget-object v4, Ltwitter4j/internal/http/HttpResponse;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v4}, Ltwitter4j/internal/logging/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 185
    iget-object v4, p0, Ltwitter4j/internal/http/HttpResponse;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    invoke-interface {v4}, Ltwitter4j/internal/http/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 187
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v0           #json:Lorg/json/JSONArray;
    .local v1, json:Lorg/json/JSONArray;
    :try_start_1
    sget-object v4, Ltwitter4j/internal/http/HttpResponse;->logger:Ltwitter4j/internal/logging/Logger;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v0, v1

    .line 203
    .end local v1           #json:Lorg/json/JSONArray;
    .restart local v0       #json:Lorg/json/JSONArray;
    :goto_0
    if-eqz v3, :cond_0

    .line 205
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 209
    :cond_0
    :goto_1
    invoke-direct {p0}, Ltwitter4j/internal/http/HttpResponse;->disconnectForcibly()V

    .line 211
    return-object v0

    .line 190
    :cond_1
    :try_start_3
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .end local v0           #json:Lorg/json/JSONArray;
    .restart local v1       #json:Lorg/json/JSONArray;
    move-object v0, v1

    .end local v1           #json:Lorg/json/JSONArray;
    .restart local v0       #json:Lorg/json/JSONArray;
    goto :goto_0

    .line 194
    :cond_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v0           #json:Lorg/json/JSONArray;
    .restart local v1       #json:Lorg/json/JSONArray;
    move-object v0, v1

    .end local v1           #json:Lorg/json/JSONArray;
    .restart local v0       #json:Lorg/json/JSONArray;
    goto :goto_0

    .line 196
    :catch_0
    move-exception v2

    .line 197
    .local v2, jsone:Lorg/json/JSONException;
    :goto_2
    :try_start_4
    sget-object v4, Ltwitter4j/internal/http/HttpResponse;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v4}, Ltwitter4j/internal/logging/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 198
    new-instance v4, Ltwitter4j/TwitterException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 203
    .end local v2           #jsone:Lorg/json/JSONException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v3, :cond_3

    .line 205
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 209
    :cond_3
    :goto_4
    invoke-direct {p0}, Ltwitter4j/internal/http/HttpResponse;->disconnectForcibly()V

    throw v4

    .line 200
    .restart local v2       #jsone:Lorg/json/JSONException;
    :cond_4
    :try_start_6
    new-instance v4, Ltwitter4j/TwitterException;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 206
    .end local v2           #jsone:Lorg/json/JSONException;
    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v5

    goto :goto_4

    .line 203
    .end local v0           #json:Lorg/json/JSONArray;
    .restart local v1       #json:Lorg/json/JSONArray;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #json:Lorg/json/JSONArray;
    .restart local v0       #json:Lorg/json/JSONArray;
    goto :goto_3

    .line 196
    .end local v0           #json:Lorg/json/JSONArray;
    .restart local v1       #json:Lorg/json/JSONArray;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1           #json:Lorg/json/JSONArray;
    .restart local v0       #json:Lorg/json/JSONArray;
    goto :goto_2
.end method

.method public final asJSONObject()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->json:Lorg/json/JSONObject;

    if-nez v2, :cond_1

    .line 140
    const/4 v1, 0x0

    .line 142
    .local v1, reader:Ljava/io/InputStreamReader;
    :try_start_0
    sget-object v2, Ltwitter4j/internal/http/HttpResponse;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v2}, Ltwitter4j/internal/logging/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 143
    iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/internal/http/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->json:Lorg/json/JSONObject;

    .line 146
    sget-object v2, Ltwitter4j/internal/http/HttpResponse;->logger:Ltwitter4j/internal/logging/Logger;

    iget-object v3, p0, Ltwitter4j/internal/http/HttpResponse;->json:Lorg/json/JSONObject;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    if-eqz v1, :cond_0

    .line 163
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    :cond_0
    :goto_1
    invoke-direct {p0}, Ltwitter4j/internal/http/HttpResponse;->disconnectForcibly()V

    .line 170
    .end local v1           #reader:Ljava/io/InputStreamReader;
    :cond_1
    iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->json:Lorg/json/JSONObject;

    return-object v2

    .line 148
    .restart local v1       #reader:Ljava/io/InputStreamReader;
    :cond_2
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->json:Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, jsone:Lorg/json/JSONException;
    :try_start_3
    sget-object v2, Ltwitter4j/internal/http/HttpResponse;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v2}, Ltwitter4j/internal/logging/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 156
    new-instance v2, Ltwitter4j/TwitterException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    .end local v0           #jsone:Lorg/json/JSONException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 163
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 167
    :cond_3
    :goto_2
    invoke-direct {p0}, Ltwitter4j/internal/http/HttpResponse;->disconnectForcibly()V

    throw v2

    .line 152
    :cond_4
    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->json:Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 158
    .restart local v0       #jsone:Lorg/json/JSONException;
    :cond_5
    :try_start_6
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 164
    .end local v0           #jsone:Lorg/json/JSONException;
    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_2
.end method

.method public final asReader()Ljava/io/InputStreamReader;
    .locals 4

    .prologue
    .line 216
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->is:Ljava/io/InputStream;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-object v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->is:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public final asStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 76
    iget-boolean v0, p0, Ltwitter4j/internal/http/HttpResponse;->streamConsumed:Z

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stream has already been consumed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iget-object v0, p0, Ltwitter4j/internal/http/HttpResponse;->is:Ljava/io/InputStream;

    return-object v0
.end method

.method public final asString()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v6, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    if-nez v6, :cond_8

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 94
    .local v5, stream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v5

    .line 95
    if-nez v5, :cond_2

    .line 96
    const/4 v6, 0x0

    .line 111
    if-eqz v5, :cond_0

    .line 113
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 119
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 123
    :cond_1
    :goto_1
    invoke-direct {p0}, Ltwitter4j/internal/http/HttpResponse;->disconnectForcibly()V

    .line 126
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v5           #stream:Ljava/io/InputStream;
    :goto_2
    return-object v6

    .line 98
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v5       #stream:Ljava/io/InputStream;
    :cond_2
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 99
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_4
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 101
    .local v2, buf:Ljava/lang/StringBuffer;
    :goto_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 102
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 108
    .end local v2           #buf:Ljava/lang/StringBuffer;
    .end local v4           #line:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 109
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .local v3, ioe:Ljava/io/IOException;
    :goto_4
    :try_start_5
    new-instance v6, Ltwitter4j/TwitterException;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 111
    .end local v3           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v5, :cond_3

    .line 113
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 117
    :cond_3
    :goto_6
    if-eqz v0, :cond_4

    .line 119
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 123
    :cond_4
    :goto_7
    invoke-direct {p0}, Ltwitter4j/internal/http/HttpResponse;->disconnectForcibly()V

    throw v6

    .line 104
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #buf:Ljava/lang/StringBuffer;
    .restart local v4       #line:Ljava/lang/String;
    :cond_5
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    .line 105
    sget-object v6, Ltwitter4j/internal/http/HttpResponse;->logger:Ltwitter4j/internal/logging/Logger;

    iget-object v7, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 107
    const/4 v6, 0x1

    iput-boolean v6, p0, Ltwitter4j/internal/http/HttpResponse;->streamConsumed:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 111
    if-eqz v5, :cond_6

    .line 113
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 117
    :cond_6
    :goto_8
    if-eqz v1, :cond_7

    .line 119
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 123
    :cond_7
    :goto_9
    invoke-direct {p0}, Ltwitter4j/internal/http/HttpResponse;->disconnectForcibly()V

    .line 126
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #buf:Ljava/lang/StringBuffer;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #stream:Ljava/io/InputStream;
    :cond_8
    iget-object v6, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    goto :goto_2

    .line 114
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v5       #stream:Ljava/io/InputStream;
    :catch_1
    move-exception v7

    goto :goto_0

    .line 120
    :catch_2
    move-exception v7

    goto :goto_1

    .line 114
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #buf:Ljava/lang/StringBuffer;
    .restart local v4       #line:Ljava/lang/String;
    :catch_3
    move-exception v6

    goto :goto_8

    .line 120
    :catch_4
    move-exception v6

    goto :goto_9

    .line 114
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #buf:Ljava/lang/StringBuffer;
    .end local v4           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :catch_5
    move-exception v7

    goto :goto_6

    .line 120
    :catch_6
    move-exception v7

    goto :goto_7

    .line 111
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_5

    .line 108
    :catch_7
    move-exception v3

    goto :goto_4
.end method

.method public abstract disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getResponseHeaderFields()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public final getStatusCode()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Ltwitter4j/internal/http/HttpResponse;->statusCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "HttpResponse{statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/internal/http/HttpResponse;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", responseAsString=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", is="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpResponse;->is:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", streamConsumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/internal/http/HttpResponse;->streamConsumed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
