.class Lcom/google/gson/DefaultTypeAdapters$CollectionTypeAdapter;
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
    accessFlags = 0xa
    name = "CollectionTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer",
        "<",
        "Ljava/util/Collection;",
        ">;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Ljava/util/Collection;",
        ">;",
        "Lcom/google/gson/InstanceCreator",
        "<",
        "Ljava/util/Collection;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 435
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gson/DefaultTypeAdapters$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/google/gson/DefaultTypeAdapters$CollectionTypeAdapter;-><init>()V

    return-void
.end method

.method private constructCollectionType(Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/util/Collection;
    .locals 3
    .parameter "collectionType"
    .parameter "context"

    .prologue
    .line 481
    move-object v0, p2

    check-cast v0, Lcom/google/gson/JsonDeserializationContextDefault;

    .line 482
    .local v0, contextImpl:Lcom/google/gson/JsonDeserializationContextDefault;
    invoke-virtual {v0}, Lcom/google/gson/JsonDeserializationContextDefault;->getObjectConstructor()Lcom/google/gson/ObjectConstructor;

    move-result-object v1

    .line 483
    .local v1, objectConstructor:Lcom/google/gson/ObjectConstructor;
    invoke-interface {v1, p1}, Lcom/google/gson/ObjectConstructor;->construct(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    return-object v2
.end method


# virtual methods
.method public bridge synthetic createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 435
    invoke-virtual {p0, p1}, Lcom/google/gson/DefaultTypeAdapters$CollectionTypeAdapter;->createInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .locals 1
    .parameter "type"

    .prologue
    .line 487
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

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
    .line 435
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gson/DefaultTypeAdapters$CollectionTypeAdapter;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/util/Collection;
    .locals 7
    .parameter "json"
    .parameter "typeOfT"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 461
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v2, v5

    .line 476
    :cond_0
    return-object v2

    .line 466
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/google/gson/DefaultTypeAdapters$CollectionTypeAdapter;->constructCollectionType(Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/util/Collection;

    move-result-object v2

    .line 467
    .local v2, collection:Ljava/util/Collection;
    new-instance v6, Lcom/google/gson/TypeInfoCollection;

    invoke-direct {v6, p2}, Lcom/google/gson/TypeInfoCollection;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v6}, Lcom/google/gson/TypeInfoCollection;->getElementType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 468
    .local v1, childType:Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 469
    .local v0, childElement:Lcom/google/gson/JsonElement;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 470
    :cond_2
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 472
    :cond_3
    invoke-interface {p3, v0, v1}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    .line 473
    .local v4, value:Ljava/lang/Object;
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 435
    check-cast p1, Ljava/util/Collection;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gson/DefaultTypeAdapters$CollectionTypeAdapter;->serialize(Ljava/util/Collection;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/util/Collection;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 7
    .parameter "src"
    .parameter "typeOfSrc"
    .parameter "context"

    .prologue
    .line 438
    if-nez p1, :cond_1

    .line 439
    invoke-static {}, Lcom/google/gson/JsonNull;->createJsonNull()Lcom/google/gson/JsonNull;

    move-result-object v0

    .line 456
    :cond_0
    return-object v0

    .line 441
    :cond_1
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 442
    .local v0, array:Lcom/google/gson/JsonArray;
    const/4 v2, 0x0

    .line 443
    .local v2, childGenericType:Ljava/lang/reflect/Type;
    instance-of v6, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_2

    .line 444
    new-instance v6, Lcom/google/gson/TypeInfoCollection;

    invoke-direct {v6, p2}, Lcom/google/gson/TypeInfoCollection;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v6}, Lcom/google/gson/TypeInfoCollection;->getElementType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 446
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 447
    .local v1, child:Ljava/lang/Object;
    if-nez v1, :cond_3

    .line 448
    invoke-static {}, Lcom/google/gson/JsonNull;->createJsonNull()Lcom/google/gson/JsonNull;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 450
    :cond_3
    if-eqz v2, :cond_4

    const-class v6, Ljava/lang/Object;

    if-ne v2, v6, :cond_5

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 452
    .local v3, childType:Ljava/lang/reflect/Type;
    :goto_1
    invoke-interface {p3, v1, v3}, Lcom/google/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;

    move-result-object v4

    .line 453
    .local v4, element:Lcom/google/gson/JsonElement;
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .end local v3           #childType:Ljava/lang/reflect/Type;
    .end local v4           #element:Lcom/google/gson/JsonElement;
    :cond_5
    move-object v3, v2

    .line 450
    goto :goto_1
.end method
