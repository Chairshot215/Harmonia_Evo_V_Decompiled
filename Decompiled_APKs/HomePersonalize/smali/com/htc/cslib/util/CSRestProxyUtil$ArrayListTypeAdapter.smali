.class Lcom/htc/cslib/util/CSRestProxyUtil$ArrayListTypeAdapter;
.super Ljava/lang/Object;
.source "CSRestProxyUtil.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cslib/util/CSRestProxyUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayListTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer",
        "<TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 548
    .local p0, this:Lcom/htc/cslib/util/CSRestProxyUtil$ArrayListTypeAdapter;,"Lcom/htc/cslib/util/CSRestProxyUtil$ArrayListTypeAdapter<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cslib/util/CSRestProxyUtil$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 548
    .local p0, this:Lcom/htc/cslib/util/CSRestProxyUtil$ArrayListTypeAdapter;,"Lcom/htc/cslib/util/CSRestProxyUtil$ArrayListTypeAdapter<TT;>;"
    invoke-direct {p0}, Lcom/htc/cslib/util/CSRestProxyUtil$ArrayListTypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 5
    .parameter "json"
    .parameter "typeOfT"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/JsonDeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 554
    .local p0, this:Lcom/htc/cslib/util/CSRestProxyUtil$ArrayListTypeAdapter;,"Lcom/htc/cslib/util/CSRestProxyUtil$ArrayListTypeAdapter<TT;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v3, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 557
    .local v0, array:Lcom/google/gson/JsonArray;
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 558
    const/4 v3, 0x0

    .line 566
    .end local v3           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    :cond_0
    return-object v3

    .line 560
    .restart local v3       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    :cond_1
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 562
    .local v1, element:Lcom/google/gson/JsonElement;
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method
