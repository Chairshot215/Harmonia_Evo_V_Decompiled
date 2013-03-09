.class public Ltwitter4j/org/json/CDL;
.super Ljava/lang/Object;
.source "CDL.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getValue(Ltwitter4j/org/json/JSONTokener;)Ljava/lang/String;
    .locals 2
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 58
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONTokener;->next()C

    move-result v0

    .line 59
    .local v0, c:C
    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 60
    sparse-switch v0, :sswitch_data_0

    .line 70
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONTokener;->back()V

    .line 71
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ltwitter4j/org/json/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 62
    :sswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 65
    :sswitch_1
    invoke-virtual {p0, v0}, Ltwitter4j/org/json/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 67
    :sswitch_2
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONTokener;->back()V

    .line 68
    const-string v1, ""

    goto :goto_0

    .line 60
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x22 -> :sswitch_1
        0x27 -> :sswitch_1
        0x2c -> :sswitch_2
    .end sparse-switch
.end method

.method public static rowToJSONArray(Ltwitter4j/org/json/JSONTokener;)Ltwitter4j/org/json/JSONArray;
    .locals 5
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v1, Ltwitter4j/org/json/JSONArray;

    invoke-direct {v1}, Ltwitter4j/org/json/JSONArray;-><init>()V

    .line 84
    .local v1, ja:Ltwitter4j/org/json/JSONArray;
    :cond_0
    invoke-static {p0}, Ltwitter4j/org/json/CDL;->getValue(Ltwitter4j/org/json/JSONTokener;)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 86
    :cond_1
    const/4 v3, 0x0

    .line 96
    :goto_0
    return-object v3

    .line 88
    :cond_2
    invoke-virtual {v1, v2}, Ltwitter4j/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    .line 90
    :cond_3
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONTokener;->next()C

    move-result v0

    .line 91
    .local v0, c:C
    const/16 v3, 0x2c

    if-eq v0, v3, :cond_0

    .line 94
    const/16 v3, 0x20

    if-eq v0, v3, :cond_3

    .line 95
    const/16 v3, 0xa

    if-eq v0, v3, :cond_4

    const/16 v3, 0xd

    if-eq v0, v3, :cond_4

    if-nez v0, :cond_5

    :cond_4
    move-object v3, v1

    .line 96
    goto :goto_0

    .line 98
    :cond_5
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Bad character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\' ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ltwitter4j/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object v3

    throw v3
.end method

.method public static rowToJSONObject(Ltwitter4j/org/json/JSONArray;Ltwitter4j/org/json/JSONTokener;)Ltwitter4j/org/json/JSONObject;
    .locals 2
    .parameter "names"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {p1}, Ltwitter4j/org/json/CDL;->rowToJSONArray(Ltwitter4j/org/json/JSONTokener;)Ltwitter4j/org/json/JSONArray;

    move-result-object v0

    .line 118
    .local v0, ja:Ltwitter4j/org/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ltwitter4j/org/json/JSONArray;->toJSONObject(Ltwitter4j/org/json/JSONArray;)Ltwitter4j/org/json/JSONObject;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static rowToString(Ltwitter4j/org/json/JSONArray;)Ljava/lang/String;
    .locals 8
    .parameter "ja"

    .prologue
    const/16 v7, 0x2c

    const/16 v6, 0x27

    const/16 v5, 0x22

    .line 191
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 192
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 193
    if-lez v0, :cond_0

    .line 194
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 196
    :cond_0
    invoke-virtual {p0, v0}, Ltwitter4j/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    .line 197
    .local v1, o:Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 198
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_3

    .line 200
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_2

    .line 201
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 202
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 192
    .end local v2           #s:Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .restart local v2       #s:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 206
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 210
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 214
    .end local v1           #o:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_4
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 215
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static toJSONArray(Ljava/lang/String;)Ltwitter4j/org/json/JSONArray;
    .locals 1
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Ltwitter4j/org/json/JSONTokener;

    invoke-direct {v0, p0}, Ltwitter4j/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ltwitter4j/org/json/CDL;->toJSONArray(Ltwitter4j/org/json/JSONTokener;)Ltwitter4j/org/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONArray(Ltwitter4j/org/json/JSONArray;Ljava/lang/String;)Ltwitter4j/org/json/JSONArray;
    .locals 1
    .parameter "names"
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Ltwitter4j/org/json/JSONTokener;

    invoke-direct {v0, p1}, Ltwitter4j/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Ltwitter4j/org/json/CDL;->toJSONArray(Ltwitter4j/org/json/JSONArray;Ltwitter4j/org/json/JSONTokener;)Ltwitter4j/org/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONArray(Ltwitter4j/org/json/JSONArray;Ltwitter4j/org/json/JSONTokener;)Ltwitter4j/org/json/JSONArray;
    .locals 4
    .parameter "names"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 166
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v3

    .line 180
    :goto_0
    return-object v2

    .line 169
    :cond_1
    new-instance v0, Ltwitter4j/org/json/JSONArray;

    invoke-direct {v0}, Ltwitter4j/org/json/JSONArray;-><init>()V

    .line 171
    .local v0, ja:Ltwitter4j/org/json/JSONArray;
    :goto_1
    invoke-static {p0, p1}, Ltwitter4j/org/json/CDL;->rowToJSONObject(Ltwitter4j/org/json/JSONArray;Ltwitter4j/org/json/JSONTokener;)Ltwitter4j/org/json/JSONObject;

    move-result-object v1

    .line 172
    .local v1, jo:Ltwitter4j/org/json/JSONObject;
    if-nez v1, :cond_2

    .line 177
    invoke-virtual {v0}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_3

    move-object v2, v3

    .line 178
    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {v0, v1}, Ltwitter4j/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    goto :goto_1

    :cond_3
    move-object v2, v0

    .line 180
    goto :goto_0
.end method

.method public static toJSONArray(Ltwitter4j/org/json/JSONTokener;)Ltwitter4j/org/json/JSONArray;
    .locals 1
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {p0}, Ltwitter4j/org/json/CDL;->rowToJSONArray(Ltwitter4j/org/json/JSONTokener;)Ltwitter4j/org/json/JSONArray;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/org/json/CDL;->toJSONArray(Ltwitter4j/org/json/JSONArray;Ltwitter4j/org/json/JSONTokener;)Ltwitter4j/org/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ltwitter4j/org/json/JSONArray;)Ljava/lang/String;
    .locals 4
    .parameter "ja"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 228
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ltwitter4j/org/json/JSONArray;->optJSONObject(I)Ltwitter4j/org/json/JSONObject;

    move-result-object v0

    .line 229
    .local v0, jo:Ltwitter4j/org/json/JSONObject;
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Ltwitter4j/org/json/JSONObject;->names()Ltwitter4j/org/json/JSONArray;

    move-result-object v1

    .line 231
    .local v1, names:Ltwitter4j/org/json/JSONArray;
    if-eqz v1, :cond_0

    .line 232
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v1}, Ltwitter4j/org/json/CDL;->rowToString(Ltwitter4j/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v1, p0}, Ltwitter4j/org/json/CDL;->toString(Ltwitter4j/org/json/JSONArray;Ltwitter4j/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 235
    .end local v1           #names:Ltwitter4j/org/json/JSONArray;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static toString(Ltwitter4j/org/json/JSONArray;Ltwitter4j/org/json/JSONArray;)Ljava/lang/String;
    .locals 4
    .parameter "names"
    .parameter "ja"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 249
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 250
    :cond_0
    const/4 v3, 0x0

    .line 259
    :goto_0
    return-object v3

    .line 252
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 253
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 254
    invoke-virtual {p1, v0}, Ltwitter4j/org/json/JSONArray;->optJSONObject(I)Ltwitter4j/org/json/JSONObject;

    move-result-object v1

    .line 255
    .local v1, jo:Ltwitter4j/org/json/JSONObject;
    if-eqz v1, :cond_2

    .line 256
    invoke-virtual {v1, p0}, Ltwitter4j/org/json/JSONObject;->toJSONArray(Ltwitter4j/org/json/JSONArray;)Ltwitter4j/org/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Ltwitter4j/org/json/CDL;->rowToString(Ltwitter4j/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 259
    .end local v1           #jo:Ltwitter4j/org/json/JSONObject;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
