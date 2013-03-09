.class final Lcom/google/gson/JsonTreeNavigator;
.super Ljava/lang/Object;
.source "JsonTreeNavigator.java"


# instance fields
.field private final visitNulls:Z

.field private final visitor:Lcom/google/gson/JsonElementVisitor;


# direct methods
.method constructor <init>(Lcom/google/gson/JsonElementVisitor;Z)V
    .locals 0
    .parameter "visitor"
    .parameter "visitNulls"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    .line 33
    iput-boolean p2, p0, Lcom/google/gson/JsonTreeNavigator;->visitNulls:Z

    .line 34
    return-void
.end method

.method private visitChild(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonElement;Z)V
    .locals 4
    .parameter "parent"
    .parameter "child"
    .parameter "isFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v2, p1, p3}, Lcom/google/gson/JsonElementVisitor;->visitNullArrayMember(Lcom/google/gson/JsonArray;Z)V

    .line 98
    invoke-virtual {p0, p2}, Lcom/google/gson/JsonTreeNavigator;->navigate(Lcom/google/gson/JsonElement;)V

    .line 110
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 101
    .local v0, childAsArray:Lcom/google/gson/JsonArray;
    iget-object v2, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v2, p1, v0, p3}, Lcom/google/gson/JsonElementVisitor;->visitArrayMember(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Z)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonTreeNavigator;->navigate(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 103
    .end local v0           #childAsArray:Lcom/google/gson/JsonArray;
    :cond_1
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 105
    .local v1, childAsObject:Lcom/google/gson/JsonObject;
    iget-object v2, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v2, p1, v1, p3}, Lcom/google/gson/JsonElementVisitor;->visitArrayMember(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonObject;Z)V

    .line 106
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonTreeNavigator;->navigate(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 108
    .end local v1           #childAsObject:Lcom/google/gson/JsonObject;
    :cond_2
    iget-object v2, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v3

    invoke-interface {v2, p1, v3, p3}, Lcom/google/gson/JsonElementVisitor;->visitArrayMember(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonPrimitive;Z)V

    goto :goto_0
.end method

.method private visitChild(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonElement;Z)Z
    .locals 4
    .parameter "parent"
    .parameter "childName"
    .parameter "child"
    .parameter "isFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    iget-boolean v2, p0, Lcom/google/gson/JsonTreeNavigator;->visitNulls:Z

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v2, p1, p2, p4}, Lcom/google/gson/JsonElementVisitor;->visitNullObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)V

    .line 74
    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsJsonNull()Lcom/google/gson/JsonNull;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/gson/JsonTreeNavigator;->navigate(Lcom/google/gson/JsonElement;)V

    .line 89
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 76
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 80
    .local v0, childAsArray:Lcom/google/gson/JsonArray;
    iget-object v2, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v2, p1, p2, v0, p4}, Lcom/google/gson/JsonElementVisitor;->visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonArray;Z)V

    .line 81
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonTreeNavigator;->navigate(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 82
    .end local v0           #childAsArray:Lcom/google/gson/JsonArray;
    :cond_2
    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 84
    .local v1, childAsObject:Lcom/google/gson/JsonObject;
    iget-object v2, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v2, p1, p2, v1, p4}, Lcom/google/gson/JsonElementVisitor;->visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;Z)V

    .line 85
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonTreeNavigator;->navigate(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 87
    .end local v1           #childAsObject:Lcom/google/gson/JsonObject;
    :cond_3
    iget-object v2, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v3

    invoke-interface {v2, p1, p2, v3, p4}, Lcom/google/gson/JsonElementVisitor;->visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonPrimitive;Z)V

    goto :goto_0
.end method


# virtual methods
.method public navigate(Lcom/google/gson/JsonElement;)V
    .locals 9
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 38
    iget-object v7, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v7}, Lcom/google/gson/JsonElementVisitor;->visitNull()V

    .line 64
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 40
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 41
    .local v0, array:Lcom/google/gson/JsonArray;
    iget-object v7, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v7, v0}, Lcom/google/gson/JsonElementVisitor;->startArray(Lcom/google/gson/JsonArray;)V

    .line 42
    const/4 v3, 0x1

    .line 43
    .local v3, isFirst:Z
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 44
    .local v1, child:Lcom/google/gson/JsonElement;
    invoke-direct {p0, v0, v1, v3}, Lcom/google/gson/JsonTreeNavigator;->visitChild(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonElement;Z)V

    .line 45
    if-eqz v3, :cond_1

    .line 46
    const/4 v3, 0x0

    goto :goto_1

    .line 49
    .end local v1           #child:Lcom/google/gson/JsonElement;
    :cond_2
    iget-object v7, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v7, v0}, Lcom/google/gson/JsonElementVisitor;->endArray(Lcom/google/gson/JsonArray;)V

    goto :goto_0

    .line 50
    .end local v0           #array:Lcom/google/gson/JsonArray;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #isFirst:Z
    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 51
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 52
    .local v5, object:Lcom/google/gson/JsonObject;
    iget-object v7, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v7, v5}, Lcom/google/gson/JsonElementVisitor;->startObject(Lcom/google/gson/JsonObject;)V

    .line 53
    const/4 v3, 0x1

    .line 54
    .restart local v3       #isFirst:Z
    invoke-virtual {v5}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 55
    .local v4, member:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gson/JsonElement;

    invoke-direct {p0, v5, v7, v8, v3}, Lcom/google/gson/JsonTreeNavigator;->visitChild(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonElement;Z)Z

    move-result v6

    .line 56
    .local v6, visited:Z
    if-eqz v6, :cond_4

    if-eqz v3, :cond_4

    .line 57
    const/4 v3, 0x0

    goto :goto_2

    .line 60
    .end local v4           #member:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    .end local v6           #visited:Z
    :cond_5
    iget-object v7, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v7, v5}, Lcom/google/gson/JsonElementVisitor;->endObject(Lcom/google/gson/JsonObject;)V

    goto :goto_0

    .line 62
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #isFirst:Z
    .end local v5           #object:Lcom/google/gson/JsonObject;
    :cond_6
    iget-object v7, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/gson/JsonElementVisitor;->visitPrimitive(Lcom/google/gson/JsonPrimitive;)V

    goto :goto_0
.end method
