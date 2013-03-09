.class public final Lcom/htc/gson/JsonObject;
.super Lcom/htc/gson/JsonElement;
.source "JsonObject.java"


# instance fields
.field private final members:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/htc/gson/JsonElement;-><init>()V

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/gson/JsonObject;->members:Ljava/util/Map;

    .line 46
    return-void
.end method

.method private createJsonElement(Ljava/lang/Object;)Lcom/htc/gson/JsonElement;
    .locals 1
    .parameter "value"

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/htc/gson/JsonPrimitive;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/htc/gson/JsonElement;)V
    .locals 2
    .parameter "property"
    .parameter "value"

    .prologue
    .line 57
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/htc/gson/Preconditions;->checkArgument(Z)V

    .line 59
    if-nez p2, :cond_0

    .line 60
    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object p2

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/htc/gson/JsonObject;->members:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void

    .line 57
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 106
    invoke-direct {p0, p2}, Lcom/htc/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/gson/JsonObject;->add(Ljava/lang/String;Lcom/htc/gson/JsonElement;)V

    .line 107
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 117
    invoke-direct {p0, p2}, Lcom/htc/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/gson/JsonObject;->add(Ljava/lang/String;Lcom/htc/gson/JsonElement;)V

    .line 118
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 95
    invoke-direct {p0, p2}, Lcom/htc/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/gson/JsonObject;->add(Ljava/lang/String;Lcom/htc/gson/JsonElement;)V

    .line 96
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 84
    invoke-direct {p0, p2}, Lcom/htc/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/gson/JsonObject;->add(Ljava/lang/String;Lcom/htc/gson/JsonElement;)V

    .line 85
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/gson/JsonElement;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/gson/JsonObject;->members:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/htc/gson/JsonElement;
    .locals 2
    .parameter "memberName"

    .prologue
    .line 161
    iget-object v1, p0, Lcom/htc/gson/JsonObject;->members:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/htc/gson/JsonObject;->members:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/JsonElement;

    .line 163
    .local v0, member:Lcom/htc/gson/JsonElement;
    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v0

    .line 165
    .end local v0           #member:Lcom/htc/gson/JsonElement;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAsJsonArray(Ljava/lang/String;)Lcom/htc/gson/JsonArray;
    .locals 1
    .parameter "memberName"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/gson/JsonObject;->members:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/JsonArray;

    return-object v0
.end method

.method public getAsJsonObject(Ljava/lang/String;)Lcom/htc/gson/JsonObject;
    .locals 1
    .parameter "memberName"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/htc/gson/JsonObject;->members:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/JsonObject;

    return-object v0
.end method

.method public getAsJsonPrimitive(Ljava/lang/String;)Lcom/htc/gson/JsonPrimitive;
    .locals 1
    .parameter "memberName"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/gson/JsonObject;->members:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/JsonPrimitive;

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .parameter "memberName"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/htc/gson/JsonObject;->members:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)Lcom/htc/gson/JsonElement;
    .locals 1
    .parameter "property"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/gson/JsonObject;->members:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/JsonElement;

    return-object v0
.end method

.method protected toString(Ljava/lang/Appendable;Lcom/htc/gson/Escaper;)V
    .locals 4
    .parameter "sb"
    .parameter "escaper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    const/16 v3, 0x7b

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 202
    const/4 v1, 0x1

    .line 203
    .local v1, first:Z
    iget-object v3, p0, Lcom/htc/gson/JsonObject;->members:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 204
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/gson/JsonElement;>;"
    if-eqz v1, :cond_0

    .line 205
    const/4 v1, 0x0

    .line 209
    :goto_1
    const/16 v3, 0x22

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 210
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 211
    const-string v3, "\":"

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 212
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/gson/JsonElement;

    invoke-virtual {v3, p1, p2}, Lcom/htc/gson/JsonElement;->toString(Ljava/lang/Appendable;Lcom/htc/gson/Escaper;)V

    goto :goto_0

    .line 207
    :cond_0
    const/16 v3, 0x2c

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 214
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/gson/JsonElement;>;"
    :cond_1
    const/16 v3, 0x7d

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 215
    return-void
.end method
