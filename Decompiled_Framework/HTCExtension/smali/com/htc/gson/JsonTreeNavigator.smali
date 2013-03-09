.class final Lcom/htc/gson/JsonTreeNavigator;
.super Ljava/lang/Object;
.source "JsonTreeNavigator.java"


# instance fields
.field private final visitNulls:Z

.field private final visitor:Lcom/htc/gson/JsonElementVisitor;


# direct methods
.method constructor <init>(Lcom/htc/gson/JsonElementVisitor;Z)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    iput-boolean p2, p0, Lcom/htc/gson/JsonTreeNavigator;->visitNulls:Z

    return-void
.end method

.method private visitChild(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonElement;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/htc/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v2, p1, p3}, Lcom/htc/gson/JsonElementVisitor;->visitNullArrayMember(Lcom/htc/gson/JsonArray;Z)V

    invoke-virtual {p0, p2}, Lcom/htc/gson/JsonTreeNavigator;->navigate(Lcom/htc/gson/JsonElement;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/htc/gson/JsonElement;->isJsonArray()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/htc/gson/JsonElement;->getAsJsonArray()Lcom/htc/gson/JsonArray;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v2, p1, v0, p3}, Lcom/htc/gson/JsonElementVisitor;->visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonArray;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/gson/JsonTreeNavigator;->navigate(Lcom/htc/gson/JsonElement;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/htc/gson/JsonElement;->isJsonObject()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/htc/gson/JsonElement;->getAsJsonObject()Lcom/htc/gson/JsonObject;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v2, p1, v1, p3}, Lcom/htc/gson/JsonElementVisitor;->visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonObject;Z)V

    invoke-virtual {p0, v1}, Lcom/htc/gson/JsonTreeNavigator;->navigate(Lcom/htc/gson/JsonElement;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-virtual {p2}, Lcom/htc/gson/JsonElement;->getAsJsonPrimitive()Lcom/htc/gson/JsonPrimitive;

    move-result-object v3

    invoke-interface {v2, p1, v3, p3}, Lcom/htc/gson/JsonElementVisitor;->visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonPrimitive;Z)V

    goto :goto_0
.end method

.method private visitChild(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonElement;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3}, Lcom/htc/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/gson/JsonTreeNavigator;->visitNulls:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v2, p1, p2, p4}, Lcom/htc/gson/JsonElementVisitor;->visitNullObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Z)V

    invoke-virtual {p3}, Lcom/htc/gson/JsonElement;->getAsJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/gson/JsonTreeNavigator;->navigate(Lcom/htc/gson/JsonElement;)V

    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lcom/htc/gson/JsonElement;->isJsonArray()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p3}, Lcom/htc/gson/JsonElement;->getAsJsonArray()Lcom/htc/gson/JsonArray;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v2, p1, p2, v0, p4}, Lcom/htc/gson/JsonElementVisitor;->visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonArray;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/gson/JsonTreeNavigator;->navigate(Lcom/htc/gson/JsonElement;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/htc/gson/JsonElement;->isJsonObject()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p3}, Lcom/htc/gson/JsonElement;->getAsJsonObject()Lcom/htc/gson/JsonObject;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v2, p1, p2, v1, p4}, Lcom/htc/gson/JsonElementVisitor;->visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonObject;Z)V

    invoke-virtual {p0, v1}, Lcom/htc/gson/JsonTreeNavigator;->navigate(Lcom/htc/gson/JsonElement;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-virtual {p3}, Lcom/htc/gson/JsonElement;->getAsJsonPrimitive()Lcom/htc/gson/JsonPrimitive;

    move-result-object v3

    invoke-interface {v2, p1, p2, v3, p4}, Lcom/htc/gson/JsonElementVisitor;->visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonPrimitive;Z)V

    goto :goto_0
.end method


# virtual methods
.method public navigate(Lcom/htc/gson/JsonElement;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->isJsonNull()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v7}, Lcom/htc/gson/JsonElementVisitor;->visitNull()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->isJsonArray()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->getAsJsonArray()Lcom/htc/gson/JsonArray;

    move-result-object v0

    iget-object v7, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v7, v0}, Lcom/htc/gson/JsonElementVisitor;->startArray(Lcom/htc/gson/JsonArray;)V

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/htc/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/gson/JsonElement;

    invoke-direct {p0, v0, v1, v3}, Lcom/htc/gson/JsonTreeNavigator;->visitChild(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonElement;Z)V

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v7, v0}, Lcom/htc/gson/JsonElementVisitor;->endArray(Lcom/htc/gson/JsonArray;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->isJsonObject()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->getAsJsonObject()Lcom/htc/gson/JsonObject;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v7, v5}, Lcom/htc/gson/JsonElementVisitor;->startObject(Lcom/htc/gson/JsonObject;)V

    const/4 v3, 0x1

    invoke-virtual {v5}, Lcom/htc/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/gson/JsonElement;

    invoke-direct {p0, v5, v7, v8, v3}, Lcom/htc/gson/JsonTreeNavigator;->visitChild(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonElement;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v7, v5}, Lcom/htc/gson/JsonElementVisitor;->endObject(Lcom/htc/gson/JsonObject;)V

    goto :goto_0

    :cond_6
    iget-object v7, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->getAsJsonPrimitive()Lcom/htc/gson/JsonPrimitive;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/htc/gson/JsonElementVisitor;->visitPrimitive(Lcom/htc/gson/JsonPrimitive;)V

    goto :goto_0
.end method
