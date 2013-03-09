.class public Ltwitter4j/org/json/JSONArray;
.super Ljava/lang/Object;
.source "JSONArray.java"


# instance fields
.field private myArrayList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltwitter4j/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-direct {p0}, Ltwitter4j/org/json/JSONArray;-><init>()V

    .line 194
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 196
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 197
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltwitter4j/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    .end local v0           #i:I
    .end local v1           #length:I
    :cond_0
    new-instance v2, Ltwitter4j/org/json/JSONException;

    const-string v3, "JSONArray initial value should be a string or collection or array."

    invoke-direct {v2, v3}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    .restart local v0       #i:I
    .restart local v1       #length:I
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 4
    .parameter "array"
    .parameter "includeSuperClass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-direct {p0}, Ltwitter4j/org/json/JSONArray;-><init>()V

    .line 212
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 214
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 215
    new-instance v2, Ltwitter4j/org/json/JSONObject;

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Ltwitter4j/org/json/JSONObject;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {p0, v2}, Ltwitter4j/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    .end local v0           #i:I
    .end local v1           #length:I
    :cond_0
    new-instance v2, Ltwitter4j/org/json/JSONException;

    const-string v3, "JSONArray initial value should be a string or collection or array."

    invoke-direct {v2, v3}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 220
    .restart local v0       #i:I
    .restart local v1       #length:I
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Ltwitter4j/org/json/JSONTokener;

    invoke-direct {v0, p1}, Ltwitter4j/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ltwitter4j/org/json/JSONArray;-><init>(Ltwitter4j/org/json/JSONTokener;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .parameter "collection"

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    if-nez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Ltwitter4j/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    .line 169
    return-void

    .line 166
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Collection;Z)V
    .locals 4
    .parameter "collection"
    .parameter "includeSuperClass"

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ltwitter4j/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    .line 180
    if-eqz p1, :cond_0

    .line 181
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Ltwitter4j/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    new-instance v2, Ltwitter4j/org/json/JSONObject;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Ltwitter4j/org/json/JSONObject;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    .end local v0           #iter:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ltwitter4j/org/json/JSONTokener;)V
    .locals 5
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x5d

    .line 105
    invoke-direct {p0}, Ltwitter4j/org/json/JSONArray;-><init>()V

    .line 106
    invoke-virtual {p1}, Ltwitter4j/org/json/JSONTokener;->nextClean()C

    move-result v0

    .line 108
    .local v0, c:C
    const/16 v2, 0x5b

    if-ne v0, v2, :cond_1

    .line 109
    const/16 v1, 0x5d

    .line 115
    .local v1, q:C
    :goto_0
    invoke-virtual {p1}, Ltwitter4j/org/json/JSONTokener;->nextClean()C

    move-result v2

    if-ne v2, v4, :cond_3

    .line 141
    :cond_0
    return-void

    .line 110
    .end local v1           #q:C
    :cond_1
    const/16 v2, 0x28

    if-ne v0, v2, :cond_2

    .line 111
    const/16 v1, 0x29

    .restart local v1       #q:C
    goto :goto_0

    .line 113
    .end local v1           #q:C
    :cond_2
    const-string v2, "A JSONArray text must start with \'[\'"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object v2

    throw v2

    .line 118
    .restart local v1       #q:C
    :cond_3
    invoke-virtual {p1}, Ltwitter4j/org/json/JSONTokener;->back()V

    .line 120
    :goto_1
    invoke-virtual {p1}, Ltwitter4j/org/json/JSONTokener;->nextClean()C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_4

    .line 121
    invoke-virtual {p1}, Ltwitter4j/org/json/JSONTokener;->back()V

    .line 122
    iget-object v2, p0, Ltwitter4j/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :goto_2
    invoke-virtual {p1}, Ltwitter4j/org/json/JSONTokener;->nextClean()C

    move-result v0

    .line 128
    sparse-switch v0, :sswitch_data_0

    .line 143
    const-string v2, "Expected a \',\' or \']\'"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object v2

    throw v2

    .line 124
    :cond_4
    invoke-virtual {p1}, Ltwitter4j/org/json/JSONTokener;->back()V

    .line 125
    iget-object v2, p0, Ltwitter4j/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ltwitter4j/org/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 131
    :sswitch_0
    invoke-virtual {p1}, Ltwitter4j/org/json/JSONTokener;->nextClean()C

    move-result v2

    if-eq v2, v4, :cond_0

    .line 134
    invoke-virtual {p1}, Ltwitter4j/org/json/JSONTokener;->back()V

    goto :goto_1

    .line 138
    :sswitch_1
    if-eq v1, v0, :cond_0

    .line 139
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Expected a \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, v1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object v2

    throw v2

    .line 128
    :sswitch_data_0
    .sparse-switch
        0x29 -> :sswitch_1
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x5d -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 4
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 233
    .local v0, o:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 234
    new-instance v1, Ltwitter4j/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_0
    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 251
    .local v1, o:Ljava/lang/Object;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    :cond_0
    const/4 v2, 0x0

    .line 258
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return v2

    .line 255
    .restart local v1       #o:Ljava/lang/Object;
    :cond_1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    check-cast v1, Ljava/lang/String;

    .end local v1           #o:Ljava/lang/Object;
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 258
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 260
    :cond_3
    new-instance v2, Ltwitter4j/org/json/JSONException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "JSONArray["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] is not a Boolean."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDouble(I)D
    .locals 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 275
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Number;

    .end local v1           #o:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    :goto_0
    return-wide v2

    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    check-cast v1, Ljava/lang/String;

    .end local v1           #o:Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 278
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 279
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ltwitter4j/org/json/JSONException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "JSONArray["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] is not a number."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getInt(I)I
    .locals 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 296
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    :goto_0
    return v1

    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-int v1, v1

    goto :goto_0
.end method

.method public getJSONArray(I)Ltwitter4j/org/json/JSONArray;
    .locals 4
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 310
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Ltwitter4j/org/json/JSONArray;

    if-eqz v1, :cond_0

    .line 311
    check-cast v0, Ltwitter4j/org/json/JSONArray;

    .end local v0           #o:Ljava/lang/Object;
    return-object v0

    .line 313
    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    new-instance v1, Ltwitter4j/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] is not a JSONArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getJSONObject(I)Ltwitter4j/org/json/JSONObject;
    .locals 4
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 327
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Ltwitter4j/org/json/JSONObject;

    if-eqz v1, :cond_0

    .line 328
    check-cast v0, Ltwitter4j/org/json/JSONObject;

    .end local v0           #o:Ljava/lang/Object;
    return-object v0

    .line 330
    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    new-instance v1, Ltwitter4j/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] is not a JSONObject."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(I)J
    .locals 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 345
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    :goto_0
    return-wide v1

    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-long v1, v1

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 367
    sget-object v0, Ltwitter4j/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public join(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "separator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 380
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v1

    .line 381
    .local v1, len:I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 383
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 384
    if-lez v0, :cond_0

    .line 385
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    :cond_0
    iget-object v3, p0, Ltwitter4j/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ltwitter4j/org/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public length()I
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Ltwitter4j/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public opt(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 410
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Ltwitter4j/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public optBoolean(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltwitter4j/org/json/JSONArray;->optBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public optBoolean(IZ)Z
    .locals 2
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 439
    :try_start_0
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONArray;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 441
    :goto_0
    return v1

    .line 440
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, p2

    .line 441
    goto :goto_0
.end method

.method public optDouble(I)D
    .locals 2
    .parameter "index"

    .prologue
    .line 455
    const-wide/high16 v0, 0x7ff8

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/org/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public optDouble(ID)D
    .locals 3
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 470
    :try_start_0
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONArray;->getDouble(I)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 472
    :goto_0
    return-wide v1

    .line 471
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-wide v1, p2

    .line 472
    goto :goto_0
.end method

.method public optInt(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 486
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltwitter4j/org/json/JSONArray;->optInt(II)I

    move-result v0

    return v0
.end method

.method public optInt(II)I
    .locals 2
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 500
    :try_start_0
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONArray;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 502
    :goto_0
    return v1

    .line 501
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, p2

    .line 502
    goto :goto_0
.end method

.method public optJSONArray(I)Ltwitter4j/org/json/JSONArray;
    .locals 2
    .parameter "index"

    .prologue
    .line 514
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 515
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Ltwitter4j/org/json/JSONArray;

    if-eqz v1, :cond_0

    check-cast v0, Ltwitter4j/org/json/JSONArray;

    .end local v0           #o:Ljava/lang/Object;
    move-object v1, v0

    :goto_0
    return-object v1

    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public optJSONObject(I)Ltwitter4j/org/json/JSONObject;
    .locals 2
    .parameter "index"

    .prologue
    .line 528
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 529
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Ltwitter4j/org/json/JSONObject;

    if-eqz v1, :cond_0

    check-cast v0, Ltwitter4j/org/json/JSONObject;

    .end local v0           #o:Ljava/lang/Object;
    move-object v1, v0

    :goto_0
    return-object v1

    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public optLong(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 542
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/org/json/JSONArray;->optLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(IJ)J
    .locals 3
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 556
    :try_start_0
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONArray;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 558
    :goto_0
    return-wide v1

    .line 557
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-wide v1, p2

    .line 558
    goto :goto_0
.end method

.method public optString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 572
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ltwitter4j/org/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 585
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 586
    .local v0, o:Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public put(D)Ltwitter4j/org/json/JSONArray;
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 622
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    .line 623
    .local v0, d:Ljava/lang/Double;
    invoke-static {v0}, Ltwitter4j/org/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 624
    invoke-virtual {p0, v0}, Ltwitter4j/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    .line 625
    return-object p0
.end method

.method public put(I)Ltwitter4j/org/json/JSONArray;
    .locals 1
    .parameter "value"

    .prologue
    .line 636
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Ltwitter4j/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    .line 637
    return-object p0
.end method

.method public put(ID)Ltwitter4j/org/json/JSONArray;
    .locals 1
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 719
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/org/json/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    .line 720
    return-object p0
.end method

.method public put(II)Ltwitter4j/org/json/JSONArray;
    .locals 1
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 734
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/org/json/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    .line 735
    return-object p0
.end method

.method public put(IJ)Ltwitter4j/org/json/JSONArray;
    .locals 1
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 749
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/org/json/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    .line 750
    return-object p0
.end method

.method public put(ILjava/lang/Object;)Ltwitter4j/org/json/JSONArray;
    .locals 3
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 782
    invoke-static {p2}, Ltwitter4j/org/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 783
    if-gez p1, :cond_0

    .line 784
    new-instance v0, Ltwitter4j/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "JSONArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 786
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 787
    iget-object v0, p0, Ltwitter4j/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 794
    :goto_0
    return-object p0

    .line 789
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 790
    sget-object v0, Ltwitter4j/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ltwitter4j/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    goto :goto_1

    .line 792
    :cond_2
    invoke-virtual {p0, p2}, Ltwitter4j/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    goto :goto_0
.end method

.method public put(ILjava/util/Collection;)Ltwitter4j/org/json/JSONArray;
    .locals 1
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 703
    new-instance v0, Ltwitter4j/org/json/JSONArray;

    invoke-direct {v0, p2}, Ltwitter4j/org/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/org/json/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    .line 704
    return-object p0
.end method

.method public put(ILjava/util/Map;)Ltwitter4j/org/json/JSONArray;
    .locals 1
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 764
    new-instance v0, Ltwitter4j/org/json/JSONObject;

    invoke-direct {v0, p2}, Ltwitter4j/org/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/org/json/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    .line 765
    return-object p0
.end method

.method public put(IZ)Ltwitter4j/org/json/JSONArray;
    .locals 1
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 688
    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1, v0}, Ltwitter4j/org/json/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    .line 689
    return-object p0

    .line 688
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public put(J)Ltwitter4j/org/json/JSONArray;
    .locals 1
    .parameter "value"

    .prologue
    .line 648
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v0}, Ltwitter4j/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    .line 649
    return-object p0
.end method

.method public put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;
    .locals 1
    .parameter "value"

    .prologue
    .line 673
    iget-object v0, p0, Ltwitter4j/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    return-object p0
.end method

.method public put(Ljava/util/Collection;)Ltwitter4j/org/json/JSONArray;
    .locals 1
    .parameter "value"

    .prologue
    .line 609
    new-instance v0, Ltwitter4j/org/json/JSONArray;

    invoke-direct {v0, p1}, Ltwitter4j/org/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Ltwitter4j/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    .line 610
    return-object p0
.end method

.method public put(Ljava/util/Map;)Ltwitter4j/org/json/JSONArray;
    .locals 1
    .parameter "value"

    .prologue
    .line 660
    new-instance v0, Ltwitter4j/org/json/JSONObject;

    invoke-direct {v0, p1}, Ltwitter4j/org/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Ltwitter4j/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    .line 661
    return-object p0
.end method

.method public put(Z)Ltwitter4j/org/json/JSONArray;
    .locals 1
    .parameter "value"

    .prologue
    .line 597
    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, v0}, Ltwitter4j/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    .line 598
    return-object p0

    .line 597
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public toJSONObject(Ltwitter4j/org/json/JSONArray;)Ltwitter4j/org/json/JSONObject;
    .locals 4
    .parameter "names"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 808
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 809
    :cond_0
    const/4 v2, 0x0

    .line 815
    :goto_0
    return-object v2

    .line 811
    :cond_1
    new-instance v1, Ltwitter4j/org/json/JSONObject;

    invoke-direct {v1}, Ltwitter4j/org/json/JSONObject;-><init>()V

    .line 812
    .local v1, jo:Ltwitter4j/org/json/JSONObject;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 813
    invoke-virtual {p1, v0}, Ltwitter4j/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Ltwitter4j/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ltwitter4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    .line 812
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 815
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 832
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {p0, v2}, Ltwitter4j/org/json/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 834
    :goto_0
    return-object v1

    .line 833
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 834
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .parameter "indentFactor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 851
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltwitter4j/org/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(II)Ljava/lang/String;
    .locals 8
    .parameter "indentFactor"
    .parameter "indent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x20

    const/16 v6, 0xa

    .line 866
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v2

    .line 867
    .local v2, len:I
    if-nez v2, :cond_0

    .line 868
    const-string v5, "[]"

    .line 894
    :goto_0
    return-object v5

    .line 871
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 872
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 873
    iget-object v5, p0, Ltwitter4j/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1, p2}, Ltwitter4j/org/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 893
    :cond_1
    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 894
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 876
    :cond_2
    add-int v3, p2, p1

    .line 877
    .local v3, newindent:I
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 878
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_5

    .line 879
    if-lez v0, :cond_3

    .line 880
    const-string v5, ",\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 882
    :cond_3
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v3, :cond_4

    .line 883
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 882
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 885
    :cond_4
    iget-object v5, p0, Ltwitter4j/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1, v3}, Ltwitter4j/org/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 878
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 888
    .end local v1           #j:I
    :cond_5
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 889
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p2, :cond_1

    .line 890
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 889
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public write(Ljava/io/Writer;)Ljava/io/Writer;
    .locals 6
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 909
    const/4 v0, 0x0

    .line 910
    .local v0, b:Z
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v3

    .line 912
    .local v3, len:I
    const/16 v5, 0x5b

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 914
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 915
    if-eqz v0, :cond_0

    .line 916
    const/16 v5, 0x2c

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 918
    :cond_0
    iget-object v5, p0, Ltwitter4j/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 919
    .local v4, v:Ljava/lang/Object;
    instance-of v5, v4, Ltwitter4j/org/json/JSONObject;

    if-eqz v5, :cond_1

    .line 920
    check-cast v4, Ltwitter4j/org/json/JSONObject;

    .end local v4           #v:Ljava/lang/Object;
    invoke-virtual {v4, p1}, Ltwitter4j/org/json/JSONObject;->write(Ljava/io/Writer;)Ljava/io/Writer;

    .line 926
    :goto_1
    const/4 v0, 0x1

    .line 914
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 921
    .restart local v4       #v:Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Ltwitter4j/org/json/JSONArray;

    if-eqz v5, :cond_2

    .line 922
    check-cast v4, Ltwitter4j/org/json/JSONArray;

    .end local v4           #v:Ljava/lang/Object;
    invoke-virtual {v4, p1}, Ltwitter4j/org/json/JSONArray;->write(Ljava/io/Writer;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 930
    .end local v2           #i:I
    .end local v3           #len:I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 931
    .local v1, e:Ljava/io/IOException;
    new-instance v5, Ltwitter4j/org/json/JSONException;

    invoke-direct {v5, v1}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 924
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #i:I
    .restart local v3       #len:I
    .restart local v4       #v:Ljava/lang/Object;
    :cond_2
    :try_start_1
    invoke-static {v4}, Ltwitter4j/org/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 928
    .end local v4           #v:Ljava/lang/Object;
    :cond_3
    const/16 v5, 0x5d

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 929
    return-object p1
.end method
