.class public Ltwitter4j/org/json/Cookie;
.super Ljava/lang/Object;
.source "Cookie.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "string"

    .prologue
    const/16 v7, 0x25

    const/16 v6, 0x10

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, s:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 51
    .local v4, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 52
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 53
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 54
    .local v0, c:C
    const/16 v5, 0x20

    if-lt v0, v5, :cond_0

    const/16 v5, 0x2b

    if-eq v0, v5, :cond_0

    if-eq v0, v7, :cond_0

    const/16 v5, 0x3d

    if-eq v0, v5, :cond_0

    const/16 v5, 0x3b

    if-ne v0, v5, :cond_1

    .line 55
    :cond_0
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 56
    ushr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    int-to-char v5, v5

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 57
    and-int/lit8 v5, v0, 0xf

    int-to-char v5, v5

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 52
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 62
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
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
    const/16 v7, 0x3b

    const/16 v6, 0x3d

    .line 83
    new-instance v1, Ltwitter4j/org/json/JSONObject;

    invoke-direct {v1}, Ltwitter4j/org/json/JSONObject;-><init>()V

    .line 85
    .local v1, o:Ltwitter4j/org/json/JSONObject;
    new-instance v3, Ltwitter4j/org/json/JSONTokener;

    invoke-direct {v3, p0}, Ltwitter4j/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 86
    .local v3, x:Ltwitter4j/org/json/JSONTokener;
    const-string v4, "name"

    invoke-virtual {v3, v6}, Ltwitter4j/org/json/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ltwitter4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    .line 87
    invoke-virtual {v3, v6}, Ltwitter4j/org/json/JSONTokener;->next(C)C

    .line 88
    const-string v4, "value"

    invoke-virtual {v3, v7}, Ltwitter4j/org/json/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ltwitter4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    .line 89
    invoke-virtual {v3}, Ltwitter4j/org/json/JSONTokener;->next()C

    .line 90
    :goto_0
    invoke-virtual {v3}, Ltwitter4j/org/json/JSONTokener;->more()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    const-string v4, "=;"

    invoke-virtual {v3, v4}, Ltwitter4j/org/json/JSONTokener;->nextTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltwitter4j/org/json/Cookie;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, n:Ljava/lang/String;
    invoke-virtual {v3}, Ltwitter4j/org/json/JSONTokener;->next()C

    move-result v4

    if-eq v4, v6, :cond_1

    .line 93
    const-string v4, "secure"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 102
    :goto_1
    invoke-virtual {v1, v0, v2}, Ltwitter4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    goto :goto_0

    .line 96
    :cond_0
    const-string v4, "Missing \'=\' in cookie parameter."

    invoke-virtual {v3, v4}, Ltwitter4j/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object v4

    throw v4

    .line 99
    :cond_1
    invoke-virtual {v3, v7}, Ltwitter4j/org/json/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltwitter4j/org/json/Cookie;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, v:Ljava/lang/String;
    invoke-virtual {v3}, Ltwitter4j/org/json/JSONTokener;->next()C

    goto :goto_1

    .line 104
    .end local v0           #n:Ljava/lang/String;
    .end local v2           #v:Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method public static toString(Ltwitter4j/org/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 121
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "name"

    invoke-virtual {p0, v1}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltwitter4j/org/json/Cookie;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    const-string v1, "value"

    invoke-virtual {p0, v1}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltwitter4j/org/json/Cookie;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    const-string v1, "expires"

    invoke-virtual {p0, v1}, Ltwitter4j/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const-string v1, ";expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const-string v1, "expires"

    invoke-virtual {p0, v1}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    :cond_0
    const-string v1, "domain"

    invoke-virtual {p0, v1}, Ltwitter4j/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    const-string v1, ";domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    const-string v1, "domain"

    invoke-virtual {p0, v1}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltwitter4j/org/json/Cookie;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    :cond_1
    const-string v1, "path"

    invoke-virtual {p0, v1}, Ltwitter4j/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    const-string v1, ";path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    const-string v1, "path"

    invoke-virtual {p0, v1}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltwitter4j/org/json/Cookie;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    :cond_2
    const-string v1, "secure"

    invoke-virtual {p0, v1}, Ltwitter4j/org/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    const-string v1, ";secure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "s"

    .prologue
    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 152
    .local v5, len:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 153
    .local v0, b:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 154
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 155
    .local v1, c:C
    const/16 v6, 0x2b

    if-ne v1, v6, :cond_1

    .line 156
    const/16 v1, 0x20

    .line 165
    :cond_0
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 153
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 157
    :cond_1
    const/16 v6, 0x25

    if-ne v1, v6, :cond_0

    add-int/lit8 v6, v4, 0x2

    if-ge v6, v5, :cond_0

    .line 158
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ltwitter4j/org/json/JSONTokener;->dehexchar(C)I

    move-result v2

    .line 159
    .local v2, d:I
    add-int/lit8 v6, v4, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ltwitter4j/org/json/JSONTokener;->dehexchar(C)I

    move-result v3

    .line 160
    .local v3, e:I
    if-ltz v2, :cond_0

    if-ltz v3, :cond_0

    .line 161
    mul-int/lit8 v6, v2, 0x10

    add-int/2addr v6, v3

    int-to-char v1, v6

    .line 162
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 167
    .end local v1           #c:C
    .end local v2           #d:I
    .end local v3           #e:I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
