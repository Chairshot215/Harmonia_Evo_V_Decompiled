.class Lcom/google/gson/DefaultTypeAdapters$MapTypeAdapter;
.super Ljava/lang/Object;
.source "DefaultTypeAdapters.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;
.implements Lcom/google/gson/JsonDeserializer;
.implements Lcom/google/gson/InstanceCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/DefaultTypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MapTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer",
        "<",
        "Ljava/util/Map;",
        ">;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Ljava/util/Map;",
        ">;",
        "Lcom/google/gson/InstanceCreator",
        "<",
        "Ljava/util/Map;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 498
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructMapType(Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/util/Map;
    .locals 3
    .parameter "mapType"
    .parameter "context"

    .prologue
    .line 539
    move-object v0, p2

    check-cast v0, Lcom/google/gson/JsonDeserializationContextDefault;

    .line 540
    .local v0, contextImpl:Lcom/google/gson/JsonDeserializationContextDefault;
    invoke-virtual {v0}, Lcom/google/gson/JsonDeserializationContextDefault;->getObjectConstructor()Lcom/google/gson/ObjectConstructor;

    move-result-object v1

    .line 541
    .local v1, objectConstructor:Lcom/google/gson/ObjectConstructor;
    invoke-interface {v1, p1}, Lcom/google/gson/ObjectConstructor;->construct(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    return-object v2
.end method


# virtual methods
.method public bridge synthetic createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 498
    invoke-virtual {p0, p1}, Lcom/google/gson/DefaultTypeAdapters$MapTypeAdapter;->createInstance(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 1
    .parameter "type"

    .prologue
    .line 545
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 498
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gson/DefaultTypeAdapters$MapTypeAdapter;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/util/Map;
    .locals 8
    .parameter "json"
    .parameter "typeOfT"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 528
    invoke-direct {p0, p2, p3}, Lcom/google/gson/DefaultTypeAdapters$MapTypeAdapter;->constructMapType(Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/util/Map;

    move-result-object v3

    .line 529
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v4, Lcom/google/gson/TypeInfoMap;

    invoke-direct {v4, p2}, Lcom/google/gson/TypeInfoMap;-><init>(Ljava/lang/reflect/Type;)V

    .line 530
    .local v4, mapTypeInfo:Lcom/google/gson/TypeInfoMap;
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 531
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    new-instance v7, Lcom/google/gson/JsonPrimitive;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v7, v6}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/gson/TypeInfoMap;->getKeyType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-interface {p3, v7, v6}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 532
    .local v2, key:Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/JsonElement;

    invoke-virtual {v4}, Lcom/google/gson/TypeInfoMap;->getValueType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-interface {p3, v6, v7}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .line 533
    .local v5, value:Ljava/lang/Object;
    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 535
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    .end local v2           #key:Ljava/lang/Object;
    .end local v5           #value:Ljava/lang/Object;
    :cond_0
    return-object v3
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 498
    check-cast p1, Ljava/util/Map;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gson/DefaultTypeAdapters$MapTypeAdapter;->serialize(Ljava/util/Map;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/util/Map;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 8
    .parameter "src"
    .parameter "typeOfSrc"
    .parameter "context"

    .prologue
    .line 502
    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 503
    .local v4, map:Lcom/google/gson/JsonObject;
    const/4 v0, 0x0

    .line 504
    .local v0, childGenericType:Ljava/lang/reflect/Type;
    instance-of v7, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_0

    .line 505
    new-instance v7, Lcom/google/gson/TypeInfoMap;

    invoke-direct {v7, p2}, Lcom/google/gson/TypeInfoMap;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v7}, Lcom/google/gson/TypeInfoMap;->getValueType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 508
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 509
    .local v2, entry:Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 512
    .local v5, value:Ljava/lang/Object;
    if-nez v5, :cond_1

    .line 513
    invoke-static {}, Lcom/google/gson/JsonNull;->createJsonNull()Lcom/google/gson/JsonNull;

    move-result-object v6

    .line 519
    .local v6, valueElement:Lcom/google/gson/JsonElement;
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v6}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 515
    .end local v6           #valueElement:Lcom/google/gson/JsonElement;
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 517
    .local v1, childType:Ljava/lang/reflect/Type;
    :goto_2
    invoke-interface {p3, v5, v1}, Lcom/google/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;

    move-result-object v6

    .restart local v6       #valueElement:Lcom/google/gson/JsonElement;
    goto :goto_1

    .end local v1           #childType:Ljava/lang/reflect/Type;
    .end local v6           #valueElement:Lcom/google/gson/JsonElement;
    :cond_2
    move-object v1, v0

    .line 515
    goto :goto_2

    .line 521
    .end local v2           #entry:Ljava/util/Map$Entry;
    .end local v5           #value:Ljava/lang/Object;
    :cond_3
    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    const-class v0, Lcom/google/gson/DefaultTypeAdapters$MapTypeAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
