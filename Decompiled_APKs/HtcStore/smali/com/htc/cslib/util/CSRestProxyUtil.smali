.class public Lcom/htc/cslib/util/CSRestProxyUtil;
.super Ljava/lang/Object;
.source "CSRestProxyUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cslib/util/CSRestProxyUtil$ArrayListTypeAdapter;,
        Lcom/htc/cslib/util/CSRestProxyUtil$DateTypeAdapter;,
        Lcom/htc/cslib/util/CSRestProxyUtil$EnumAsIntegerTypeAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 548
    return-void
.end method

.method public static GetDeepMessage(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 1
    .parameter "e"

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/cslib/util/CSRestProxyUtil;->_GetDeepMessage(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static _GetDeepMessage(Ljava/lang/Exception;I)Ljava/lang/String;
    .locals 4
    .parameter "e"
    .parameter "depth"

    .prologue
    .line 203
    if-nez p0, :cond_0

    .line 204
    const-string v1, ""

    .line 215
    :goto_0
    return-object v1

    .line 205
    :cond_0
    const/16 v1, 0xa

    if-le p1, v1, :cond_1

    .line 206
    const-string v1, "GetDeepMessage DEPTH EXCEEDED"

    goto :goto_0

    .line 210
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ~~~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v1, v3}, Lcom/htc/cslib/util/CSRestProxyUtil;->_GetDeepMessage(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 215
    .local v0, x:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XXX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "XXX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static allocGson()Lcom/htc/gson/Gson;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 540
    new-instance v0, Lcom/htc/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/htc/gson/GsonBuilder;-><init>()V

    const-class v1, Ljava/lang/Enum;

    new-instance v2, Lcom/htc/cslib/util/CSRestProxyUtil$EnumAsIntegerTypeAdapter;

    invoke-direct {v2, v3}, Lcom/htc/cslib/util/CSRestProxyUtil$EnumAsIntegerTypeAdapter;-><init>(Lcom/htc/cslib/util/CSRestProxyUtil$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/htc/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Ljava/util/Date;

    new-instance v2, Lcom/htc/cslib/util/CSRestProxyUtil$DateTypeAdapter;

    invoke-direct {v2, v3}, Lcom/htc/cslib/util/CSRestProxyUtil$DateTypeAdapter;-><init>(Lcom/htc/cslib/util/CSRestProxyUtil$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/htc/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/cslib/util/CSRestProxyUtil$ArrayListTypeAdapter;

    invoke-direct {v2, v3}, Lcom/htc/cslib/util/CSRestProxyUtil$ArrayListTypeAdapter;-><init>(Lcom/htc/cslib/util/CSRestProxyUtil$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/htc/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/gson/GsonBuilder;->create()Lcom/htc/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method private static allocateObject(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class",
            "<*>;TE;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, obj:Ljava/lang/Object;,"TT;"
    .local p1, parentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, elementType:Ljava/lang/Object;,"TE;"
    const/4 v5, 0x0

    .line 261
    invoke-virtual {p1}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 262
    .local v0, classes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 264
    aget-object v3, v0, v2

    if-ne v3, p2, :cond_0

    .line 267
    aget-object v3, v0, v2

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 268
    .local v1, ctor:Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 269
    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 272
    .end local v1           #ctor:Ljava/lang/reflect/Constructor;
    :goto_1
    return-object v3

    .line 262
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter "json"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "TE;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 242
    .local p0, obj:Ljava/lang/Object;,"TT;"
    .local p2, elementType:Ljava/lang/Object;,"TE;"
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    .line 243
    .local v1, retObj:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 249
    .local v0, classOfT:Ljava/lang/Class;
    invoke-static {p0, p1, p2}, Lcom/htc/cslib/util/CSRestProxyUtil;->fromJson2(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 250
    return-object v1
.end method

.method public static fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter "json"
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "TE;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 256
    .local p0, obj:Ljava/lang/Object;,"TT;"
    .local p2, elementType:Ljava/lang/Object;,"TE;"
    invoke-static {}, Lcom/htc/cslib/util/CSRestProxyUtil;->allocGson()Lcom/htc/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/htc/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson2(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter
    .parameter "json"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "TE;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 279
    .local p0, obj:Ljava/lang/Object;,"TT;"
    .local p2, elementType:Ljava/lang/Object;,"TE;"
    invoke-static {}, Lcom/htc/cslib/util/CSRestProxyUtil;->allocGson()Lcom/htc/gson/Gson;

    move-result-object v3

    .line 280
    .local v3, gson:Lcom/htc/gson/Gson;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 281
    .local v1, classOfT:Ljava/lang/Class;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/htc/cslib/json/SearchResults;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 282
    new-instance v6, Lcom/htc/cslib/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cslib/json/SearchResults;-><init>()V

    .line 283
    .local v6, results:Lcom/htc/cslib/json/SearchResults;,"Lcom/htc/cslib/json/SearchResults<TT;>;"
    invoke-static {p1}, Lcom/htc/cslib/util/JSONRequest;->deserializeJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 285
    .local v5, jsonObj:Lorg/json/JSONObject;
    const-string v7, "Results"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 287
    .local v0, array:Lorg/json/JSONArray;
    const-string v7, "Count"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 288
    const-string v7, "Count"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/htc/cslib/json/SearchResults;->Count:I

    .line 294
    :goto_0
    const/4 v2, 0x0

    .line 298
    .local v2, element:Ljava/lang/Object;,"TT;"
    const-class v7, Lcom/htc/cslib/restHelper/WebClasses;

    invoke-static {p0, v7, p2}, Lcom/htc/cslib/util/CSRestProxyUtil;->allocateObject(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 303
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 305
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, p2}, Lcom/htc/cslib/util/CSRestProxyUtil;->fromJson2(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 307
    invoke-virtual {v6, v2}, Lcom/htc/cslib/json/SearchResults;->add(Ljava/lang/Object;)V

    .line 303
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 292
    .end local v2           #element:Ljava/lang/Object;,"TT;"
    .end local v4           #i:I
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    iput v7, v6, Lcom/htc/cslib/json/SearchResults;->Count:I

    goto :goto_0

    .line 362
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v5           #jsonObj:Lorg/json/JSONObject;
    .end local v6           #results:Lcom/htc/cslib/json/SearchResults;,"Lcom/htc/cslib/json/SearchResults<TT;>;"
    :cond_1
    invoke-virtual {v3, p1, v1}, Lcom/htc/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    :cond_2
    return-object v6
.end method

.method public static removeTrailingSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 609
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 610
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static toJson(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Integer;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Boolean;

    if-ne v2, v3, :cond_1

    .line 104
    .end local p0
    .local v0, gson:Lcom/htc/gson/Gson;
    .local v1, json:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 95
    .end local v0           #gson:Lcom/htc/gson/Gson;
    .end local v1           #json:Ljava/lang/String;
    .restart local p0
    :cond_1
    invoke-static {}, Lcom/htc/cslib/util/CSRestProxyUtil;->allocGson()Lcom/htc/gson/Gson;

    move-result-object v0

    .line 96
    .restart local v0       #gson:Lcom/htc/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/htc/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .restart local v1       #json:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/util/ArrayList;

    if-ne v2, v3, :cond_2

    new-instance p0, Lorg/json/JSONArray;

    .end local p0
    invoke-direct {p0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    .restart local p0
    :cond_2
    new-instance p0, Lorg/json/JSONObject;

    .end local p0
    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static toJson2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .parameter "obj"

    .prologue
    .line 112
    new-instance v10, Ljava/lang/Object;

    invoke-direct/range {v10 .. v10}, Ljava/lang/Object;-><init>()V

    .line 114
    .local v10, retval:Ljava/lang/Object;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->isEnum()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 115
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    .line 116
    .local v4, aryObj:[Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v12, v4

    if-ge v7, v12, :cond_0

    .line 117
    aget-object v12, v4, v7

    move-object/from16 v0, p0

    if-ne v12, v0, :cond_1

    .line 119
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 197
    .end local v4           #aryObj:[Ljava/lang/Object;
    .end local v7           #i:I
    .end local p0
    :cond_0
    :goto_1
    return-object v10

    .line 116
    .restart local v4       #aryObj:[Ljava/lang/Object;
    .restart local v7       #i:I
    .restart local p0
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 123
    .end local v4           #aryObj:[Ljava/lang/Object;
    .end local v7           #i:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-class v13, Ljava/lang/String;

    if-eq v12, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v12, v13, :cond_4

    .line 132
    :cond_3
    move-object/from16 v10, p0

    goto :goto_1

    .line 133
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-class v13, Ljava/util/UUID;

    if-ne v12, v13, :cond_6

    .line 134
    if-eqz p0, :cond_5

    move-object/from16 v10, p0

    .end local p0
    :goto_2
    goto :goto_1

    .restart local p0
    :cond_5
    new-instance p0, Ljava/util/UUID;

    .end local p0
    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Ljava/util/UUID;-><init>(JJ)V

    move-object/from16 v10, p0

    goto :goto_2

    .line 136
    .restart local p0
    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    array-length v12, v12

    if-lez v12, :cond_14

    .line 137
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 138
    .local v11, subObj:Lorg/json/JSONObject;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/reflect/Field;
    array-length v9, v2

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_3
    if-ge v8, v9, :cond_13

    aget-object v6, v2, v8

    .line 142
    .local v6, field:Ljava/lang/reflect/Field;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_7

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    const-class v13, Ljava/lang/String;

    if-eq v12, v13, :cond_7

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_7

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_7

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_7

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_7

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_7

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_7

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v12, v13, :cond_9

    .line 151
    :cond_7
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    :goto_4
    invoke-virtual {v11, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 151
    :cond_8
    sget-object v12, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_4

    .line 154
    :cond_9
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    const-class v13, Ljava/util/UUID;

    if-ne v12, v13, :cond_b

    .line 155
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    :goto_6
    invoke-virtual {v11, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_5

    .line 188
    .end local v2           #arr$:[Ljava/lang/reflect/Field;
    .end local v6           #field:Ljava/lang/reflect/Field;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v11           #subObj:Lorg/json/JSONObject;
    .end local p0
    :catch_0
    move-exception v5

    .line 189
    .local v5, e:Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 155
    .end local v5           #e:Lorg/json/JSONException;
    .restart local v2       #arr$:[Ljava/lang/reflect/Field;
    .restart local v6       #field:Ljava/lang/reflect/Field;
    .restart local v8       #i$:I
    .restart local v9       #len$:I
    .restart local v11       #subObj:Lorg/json/JSONObject;
    .restart local p0
    :cond_a
    :try_start_1
    new-instance v12, Ljava/util/UUID;

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-direct {v12, v14, v15, v0, v1}, Ljava/util/UUID;-><init>(JJ)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    .line 190
    .end local v2           #arr$:[Ljava/lang/reflect/Field;
    .end local v6           #field:Ljava/lang/reflect/Field;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v11           #subObj:Lorg/json/JSONObject;
    .end local p0
    :catch_1
    move-exception v5

    .line 192
    .local v5, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_1

    .line 158
    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    .restart local v2       #arr$:[Ljava/lang/reflect/Field;
    .restart local v6       #field:Ljava/lang/reflect/Field;
    .restart local v8       #i$:I
    .restart local v9       #len$:I
    .restart local v11       #subObj:Lorg/json/JSONObject;
    .restart local p0
    :cond_b
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "class java.util.ArrayList"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 160
    if-eqz p0, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_d

    .line 161
    :cond_c
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 193
    .end local v2           #arr$:[Ljava/lang/reflect/Field;
    .end local v6           #field:Ljava/lang/reflect/Field;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v11           #subObj:Lorg/json/JSONObject;
    .end local p0
    :catch_2
    move-exception v5

    .line 195
    .local v5, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_1

    .line 163
    .end local v5           #e:Ljava/lang/IllegalAccessException;
    .restart local v2       #arr$:[Ljava/lang/reflect/Field;
    .restart local v6       #field:Ljava/lang/reflect/Field;
    .restart local v8       #i$:I
    .restart local v9       #len$:I
    .restart local v11       #subObj:Lorg/json/JSONObject;
    .restart local p0
    :cond_d
    :try_start_3
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 164
    .local v3, aryJson:Lorg/json/JSONArray;
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 165
    .local v4, aryObj:Ljava/util/ArrayList;
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_e

    .line 166
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/cslib/util/CSRestProxyUtil;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 165
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 168
    :cond_e
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_5

    .line 170
    .end local v3           #aryJson:Lorg/json/JSONArray;
    .end local v4           #aryObj:Ljava/util/ArrayList;
    .end local v7           #i:I
    :cond_f
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    const-class v13, Ljava/util/Date;

    if-ne v12, v13, :cond_11

    .line 172
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\\/Date("

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Date;

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    div-long v15, v15, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ")\\/"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_8
    invoke-virtual {v11, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_5

    :cond_10
    sget-object v12, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_8

    .line 177
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_12

    .line 178
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_5

    .line 180
    :cond_12
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lcom/htc/cslib/util/CSRestProxyUtil;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_5

    .line 183
    .end local v6           #field:Ljava/lang/reflect/Field;
    :cond_13
    move-object v10, v11

    .line 184
    .local v10, retval:Lorg/json/JSONObject;
    goto/16 :goto_1

    .line 185
    .end local v2           #arr$:[Ljava/lang/reflect/Field;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v11           #subObj:Lorg/json/JSONObject;
    .local v10, retval:Ljava/lang/Object;
    :cond_14
    move-object/from16 v10, p0

    goto/16 :goto_1
.end method

.method public static trustAllHosts()V
    .locals 5

    .prologue
    .line 52
    const/4 v3, 0x1

    new-array v2, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/htc/cslib/util/CSRestProxyUtil$1;

    invoke-direct {v4}, Lcom/htc/cslib/util/CSRestProxyUtil$1;-><init>()V

    aput-object v4, v2, v3

    .line 66
    .local v2, trustEveryone:[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 67
    .local v1, sc:Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 68
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v1           #sc:Ljavax/net/ssl/SSLContext;
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
