.class public Ltwitter4j/org/json/CookieList;
.super Ljava/lang/Object;
.source "CookieList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toJSONObject(Ljava/lang/String;)Ltwitter4j/org/json/JSONObject;
    .locals 5
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x3d

    .line 50
    new-instance v1, Ltwitter4j/org/json/JSONObject;

    invoke-direct {v1}, Ltwitter4j/org/json/JSONObject;-><init>()V

    .line 51
    .local v1, o:Ltwitter4j/org/json/JSONObject;
    new-instance v2, Ltwitter4j/org/json/JSONTokener;

    invoke-direct {v2, p0}, Ltwitter4j/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 52
    .local v2, x:Ltwitter4j/org/json/JSONTokener;
    :goto_0
    invoke-virtual {v2}, Ltwitter4j/org/json/JSONTokener;->more()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    invoke-virtual {v2, v4}, Ltwitter4j/org/json/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltwitter4j/org/json/Cookie;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, name:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ltwitter4j/org/json/JSONTokener;->next(C)C

    .line 55
    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ltwitter4j/org/json/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltwitter4j/org/json/Cookie;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ltwitter4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    .line 56
    invoke-virtual {v2}, Ltwitter4j/org/json/JSONTokener;->next()C

    goto :goto_0

    .line 58
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static toString(Ltwitter4j/org/json/JSONObject;)Ljava/lang/String;
    .locals 5
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, b:Z
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 75
    .local v1, keys:Ljava/util/Iterator;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    .local v3, sb:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, s:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ltwitter4j/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 82
    :cond_1
    invoke-static {v2}, Ltwitter4j/org/json/Cookie;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {p0, v2}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltwitter4j/org/json/Cookie;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const/4 v0, 0x1

    goto :goto_0

    .line 88
    .end local v2           #s:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
