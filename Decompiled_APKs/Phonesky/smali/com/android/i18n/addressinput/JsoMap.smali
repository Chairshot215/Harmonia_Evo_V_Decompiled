.class Lcom/android/i18n/addressinput/JsoMap;
.super Lorg/json/JSONObject;
.source "JsoMap.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 57
    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;[Ljava/lang/String;)V
    .locals 0
    .parameter "copyFrom"
    .parameter "names"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private constructor <init>(Lorg/json/JSONTokener;)V
    .locals 0
    .parameter "readFrom"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 61
    return-void
.end method

.method static buildJsoMap(Ljava/lang/String;)Lcom/android/i18n/addressinput/JsoMap;
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/android/i18n/addressinput/JsoMap;

    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/i18n/addressinput/JsoMap;-><init>(Lorg/json/JSONTokener;)V

    return-object v0
.end method

.method static createEmptyJsoMap()Lcom/android/i18n/addressinput/JsoMap;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/android/i18n/addressinput/JsoMap;

    invoke-direct {v0}, Lcom/android/i18n/addressinput/JsoMap;-><init>()V

    return-object v0
.end method

.method private getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-super {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method containsKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 176
    invoke-super {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/android/i18n/addressinput/JsoMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"

    .prologue
    .line 86
    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 87
    .local v1, o:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 88
    check-cast v1, Ljava/lang/String;

    .line 95
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 89
    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 90
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 94
    .end local v1           #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0

    .line 92
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #o:Ljava/lang/Object;
    :cond_1
    new-instance v2, Ljava/lang/ClassCastException;

    invoke-direct {v2}, Ljava/lang/ClassCastException;-><init>()V

    throw v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 4
    .parameter "key"

    .prologue
    .line 118
    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 119
    .local v1, o:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 120
    check-cast v1, Ljava/lang/Integer;

    .end local v1           #o:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 125
    :goto_0
    return v2

    .line 122
    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Something other than an int was returned"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1           #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Lorg/json/JSONException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method getKeys()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method getObj(Ljava/lang/String;)Lcom/android/i18n/addressinput/JsoMap;
    .locals 9
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 150
    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 151
    .local v5, o:Ljava/lang/Object;
    instance-of v7, v5, Lorg/json/JSONObject;

    if-eqz v7, :cond_1

    .line 152
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v6, v0

    .line 153
    .local v6, value:Lorg/json/JSONObject;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    .local v3, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 155
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #o:Ljava/lang/Object;
    .end local v6           #value:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 165
    .local v1, e:Lorg/json/JSONException;
    const/4 v7, 0x0

    .end local v1           #e:Lorg/json/JSONException;
    :goto_1
    return-object v7

    .line 157
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3       #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #o:Ljava/lang/Object;
    .restart local v6       #value:Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/String;

    .line 158
    .local v4, names:[Ljava/lang/String;
    new-instance v8, Lcom/android/i18n/addressinput/JsoMap;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-direct {v8, v6, v7}, Lcom/android/i18n/addressinput/JsoMap;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    move-object v7, v8

    goto :goto_1

    .line 159
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #names:[Ljava/lang/String;
    .end local v6           #value:Lorg/json/JSONObject;
    :cond_1
    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    .line 160
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 162
    :cond_2
    new-instance v7, Ljava/lang/ClassCastException;

    invoke-direct {v7}, Ljava/lang/ClassCastException;-><init>()V

    throw v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method mergeData(Lcom/android/i18n/addressinput/JsoMap;)V
    .locals 5
    .parameter "obj"

    .prologue
    .line 185
    if-nez p1, :cond_1

    .line 208
    :cond_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {p1}, Lcom/android/i18n/addressinput/JsoMap;->names()Lorg/json/JSONArray;

    move-result-object v3

    .line 190
    .local v3, names:Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    .line 194
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 196
    :try_start_0
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 198
    .local v2, name:Ljava/lang/String;
    :try_start_1
    invoke-super {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 199
    invoke-direct {p1, v2}, Lcom/android/i18n/addressinput/JsoMap;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-super {p0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 194
    .end local v2           #name:Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .restart local v2       #name:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Lorg/json/JSONException;
    :try_start_2
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 204
    .end local v0           #e:Lorg/json/JSONException;
    .end local v2           #name:Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method putObj(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 246
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
