.class public Ltwitter4j/org/json/HTTP;
.super Ljava/lang/Object;
.source "HTTP.java"


# static fields
.field public static final CRLF:Ljava/lang/String; = "\r\n"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toJSONObject(Ljava/lang/String;)Ltwitter4j/org/json/JSONObject;
    .locals 8
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3a

    const/4 v6, 0x0

    .line 72
    new-instance v1, Ltwitter4j/org/json/JSONObject;

    invoke-direct {v1}, Ltwitter4j/org/json/JSONObject;-><init>()V

    .line 73
    .local v1, o:Ltwitter4j/org/json/JSONObject;
    new-instance v3, Ltwitter4j/org/json/HTTPTokener;

    invoke-direct {v3, p0}, Ltwitter4j/org/json/HTTPTokener;-><init>(Ljava/lang/String;)V

    .line 76
    .local v3, x:Ltwitter4j/org/json/HTTPTokener;
    invoke-virtual {v3}, Ltwitter4j/org/json/HTTPTokener;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, t:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HTTP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    const-string v4, "HTTP-Version"

    invoke-virtual {v1, v4, v2}, Ltwitter4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    .line 82
    const-string v4, "Status-Code"

    invoke-virtual {v3}, Ltwitter4j/org/json/HTTPTokener;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ltwitter4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    .line 83
    const-string v4, "Reason-Phrase"

    invoke-virtual {v3, v6}, Ltwitter4j/org/json/HTTPTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ltwitter4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    .line 84
    invoke-virtual {v3}, Ltwitter4j/org/json/HTTPTokener;->next()C

    .line 97
    :goto_0
    invoke-virtual {v3}, Ltwitter4j/org/json/HTTPTokener;->more()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    invoke-virtual {v3, v7}, Ltwitter4j/org/json/HTTPTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, name:Ljava/lang/String;
    invoke-virtual {v3, v7}, Ltwitter4j/org/json/HTTPTokener;->next(C)C

    .line 100
    invoke-virtual {v3, v6}, Ltwitter4j/org/json/HTTPTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ltwitter4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    .line 101
    invoke-virtual {v3}, Ltwitter4j/org/json/HTTPTokener;->next()C

    goto :goto_0

    .line 90
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    const-string v4, "Method"

    invoke-virtual {v1, v4, v2}, Ltwitter4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    .line 91
    const-string v4, "Request-URI"

    invoke-virtual {v3}, Ltwitter4j/org/json/HTTPTokener;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ltwitter4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    .line 92
    const-string v4, "HTTP-Version"

    invoke-virtual {v3}, Ltwitter4j/org/json/HTTPTokener;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ltwitter4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    goto :goto_0

    .line 103
    :cond_1
    return-object v1
.end method

.method public static toString(Ltwitter4j/org/json/JSONObject;)Ljava/lang/String;
    .locals 6
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x22

    const/16 v4, 0x20

    .line 128
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 130
    .local v0, keys:Ljava/util/Iterator;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 131
    .local v2, sb:Ljava/lang/StringBuffer;
    const-string v3, "Status-Code"

    invoke-virtual {p0, v3}, Ltwitter4j/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Reason-Phrase"

    invoke-virtual {p0, v3}, Ltwitter4j/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    const-string v3, "HTTP-Version"

    invoke-virtual {p0, v3}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 134
    const-string v3, "Status-Code"

    invoke-virtual {p0, v3}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 136
    const-string v3, "Reason-Phrase"

    invoke-virtual {p0, v3}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    :goto_0
    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, s:Ljava/lang/String;
    const-string v3, "HTTP-Version"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Status-Code"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Reason-Phrase"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Method"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Request-URI"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v1}, Ltwitter4j/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    invoke-virtual {p0, v1}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 137
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    const-string v3, "Method"

    invoke-virtual {p0, v3}, Ltwitter4j/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Request-URI"

    invoke-virtual {p0, v3}, Ltwitter4j/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    const-string v3, "Method"

    invoke-virtual {p0, v3}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 140
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 141
    const-string v3, "Request-URI"

    invoke-virtual {p0, v3}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    const-string v3, "HTTP-Version"

    invoke-virtual {p0, v3}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 146
    :cond_2
    new-instance v3, Ltwitter4j/org/json/JSONException;

    const-string v4, "Not enough material for an HTTP header."

    invoke-direct {v3, v4}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 160
    :cond_3
    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
