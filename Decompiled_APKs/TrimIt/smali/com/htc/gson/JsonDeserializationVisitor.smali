.class abstract Lcom/htc/gson/JsonDeserializationVisitor;
.super Ljava/lang/Object;
.source "JsonDeserializationVisitor.java"

# interfaces
.implements Lcom/htc/gson/ObjectNavigator$Visitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/htc/gson/ObjectNavigator$Visitor;"
    }
.end annotation


# instance fields
.field protected constructed:Z

.field protected final context:Lcom/htc/gson/JsonDeserializationContext;

.field protected final deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected final factory:Lcom/htc/gson/ObjectNavigatorFactory;

.field protected final json:Lcom/htc/gson/JsonElement;

.field protected final objectConstructor:Lcom/htc/gson/ObjectConstructor;

.field protected target:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final targetType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/ObjectNavigatorFactory;Lcom/htc/gson/ObjectConstructor;Lcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/JsonDeserializationContext;)V
    .locals 1
    .parameter "json"
    .parameter "targetType"
    .parameter "factory"
    .parameter "objectConstructor"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            "Lcom/htc/gson/ObjectNavigatorFactory;",
            "Lcom/htc/gson/ObjectConstructor;",
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/JsonDeserializer",
            "<*>;>;",
            "Lcom/htc/gson/JsonDeserializationContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lcom/htc/gson/JsonDeserializationVisitor;,"Lcom/htc/gson/JsonDeserializationVisitor<TT;>;"
    .local p5, deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<Lcom/htc/gson/JsonDeserializer<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/htc/gson/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 47
    iput-object p2, p0, Lcom/htc/gson/JsonDeserializationVisitor;->targetType:Ljava/lang/reflect/Type;

    .line 48
    iput-object p3, p0, Lcom/htc/gson/JsonDeserializationVisitor;->factory:Lcom/htc/gson/ObjectNavigatorFactory;

    .line 49
    iput-object p4, p0, Lcom/htc/gson/JsonDeserializationVisitor;->objectConstructor:Lcom/htc/gson/ObjectConstructor;

    .line 50
    iput-object p5, p0, Lcom/htc/gson/JsonDeserializationVisitor;->deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    .line 51
    iput-object p1, p0, Lcom/htc/gson/JsonDeserializationVisitor;->json:Lcom/htc/gson/JsonElement;

    .line 52
    iput-object p6, p0, Lcom/htc/gson/JsonDeserializationVisitor;->context:Lcom/htc/gson/JsonDeserializationContext;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/gson/JsonDeserializationVisitor;->constructed:Z

    .line 54
    return-void
.end method

.method private visitChild(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationVisitor;)Ljava/lang/Object;
    .locals 5
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lcom/htc/gson/JsonDeserializationVisitor",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, this:Lcom/htc/gson/JsonDeserializationVisitor;,"Lcom/htc/gson/JsonDeserializationVisitor<TT;>;"
    .local p2, childVisitor:Lcom/htc/gson/JsonDeserializationVisitor;,"Lcom/htc/gson/JsonDeserializationVisitor<*>;"
    iget-object v1, p0, Lcom/htc/gson/JsonDeserializationVisitor;->factory:Lcom/htc/gson/ObjectNavigatorFactory;

    new-instance v2, Lcom/htc/gson/ObjectTypePair;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lcom/htc/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-virtual {v1, v2}, Lcom/htc/gson/ObjectNavigatorFactory;->create(Lcom/htc/gson/ObjectTypePair;)Lcom/htc/gson/ObjectNavigator;

    move-result-object v0

    .line 109
    .local v0, on:Lcom/htc/gson/ObjectNavigator;
    invoke-virtual {v0, p2}, Lcom/htc/gson/ObjectNavigator;->accept(Lcom/htc/gson/ObjectNavigator$Visitor;)V

    .line 112
    invoke-virtual {p2}, Lcom/htc/gson/JsonDeserializationVisitor;->getTarget()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected abstract constructTarget()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public end(Lcom/htc/gson/ObjectTypePair;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 70
    .local p0, this:Lcom/htc/gson/JsonDeserializationVisitor;,"Lcom/htc/gson/JsonDeserializationVisitor<TT;>;"
    return-void
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, this:Lcom/htc/gson/JsonDeserializationVisitor;,"Lcom/htc/gson/JsonDeserializationVisitor<TT;>;"
    iget-boolean v0, p0, Lcom/htc/gson/JsonDeserializationVisitor;->constructed:Z

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/htc/gson/JsonDeserializationVisitor;->constructTarget()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/gson/JsonDeserializationVisitor;->target:Ljava/lang/Object;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/gson/JsonDeserializationVisitor;->constructed:Z

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/htc/gson/JsonDeserializationVisitor;->target:Ljava/lang/Object;

    return-object v0
.end method

.method protected invokeCustomDeserializer(Lcom/htc/gson/JsonElement;Lcom/htc/gson/Pair;)Ljava/lang/Object;
    .locals 3
    .parameter "element"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/gson/JsonElement;",
            "Lcom/htc/gson/Pair",
            "<",
            "Lcom/htc/gson/JsonDeserializer",
            "<*>;",
            "Lcom/htc/gson/ObjectTypePair;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, this:Lcom/htc/gson/JsonDeserializationVisitor;,"Lcom/htc/gson/JsonDeserializationVisitor<TT;>;"
    .local p2, pair:Lcom/htc/gson/Pair;,"Lcom/htc/gson/Pair<Lcom/htc/gson/JsonDeserializer<*>;Lcom/htc/gson/ObjectTypePair;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    :cond_0
    const/4 v1, 0x0

    .line 90
    :goto_0
    return-object v1

    .line 89
    :cond_1
    invoke-virtual {p2}, Lcom/htc/gson/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/gson/ObjectTypePair;

    invoke-virtual {v1}, Lcom/htc/gson/ObjectTypePair;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 90
    .local v0, objType:Ljava/lang/reflect/Type;
    invoke-virtual {p2}, Lcom/htc/gson/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/gson/JsonDeserializer;

    iget-object v2, p0, Lcom/htc/gson/JsonDeserializationVisitor;->context:Lcom/htc/gson/JsonDeserializationContext;

    invoke-interface {v1, p1, v0, v2}, Lcom/htc/gson/JsonDeserializer;->deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public start(Lcom/htc/gson/ObjectTypePair;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 67
    .local p0, this:Lcom/htc/gson/JsonDeserializationVisitor;,"Lcom/htc/gson/JsonDeserializationVisitor<TT;>;"
    return-void
.end method

.method final visitChildAsArray(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonArray;)Ljava/lang/Object;
    .locals 7
    .parameter "childType"
    .parameter "jsonChild"

    .prologue
    .line 101
    .local p0, this:Lcom/htc/gson/JsonDeserializationVisitor;,"Lcom/htc/gson/JsonDeserializationVisitor<TT;>;"
    new-instance v0, Lcom/htc/gson/JsonArrayDeserializationVisitor;

    invoke-virtual {p2}, Lcom/htc/gson/JsonArray;->getAsJsonArray()Lcom/htc/gson/JsonArray;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/gson/JsonDeserializationVisitor;->factory:Lcom/htc/gson/ObjectNavigatorFactory;

    iget-object v4, p0, Lcom/htc/gson/JsonDeserializationVisitor;->objectConstructor:Lcom/htc/gson/ObjectConstructor;

    iget-object v5, p0, Lcom/htc/gson/JsonDeserializationVisitor;->deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    iget-object v6, p0, Lcom/htc/gson/JsonDeserializationVisitor;->context:Lcom/htc/gson/JsonDeserializationContext;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/htc/gson/JsonArrayDeserializationVisitor;-><init>(Lcom/htc/gson/JsonArray;Ljava/lang/reflect/Type;Lcom/htc/gson/ObjectNavigatorFactory;Lcom/htc/gson/ObjectConstructor;Lcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/JsonDeserializationContext;)V

    .line 104
    .local v0, childVisitor:Lcom/htc/gson/JsonDeserializationVisitor;,"Lcom/htc/gson/JsonDeserializationVisitor<*>;"
    invoke-direct {p0, p1, v0}, Lcom/htc/gson/JsonDeserializationVisitor;->visitChild(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationVisitor;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method final visitChildAsObject(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonElement;)Ljava/lang/Object;
    .locals 7
    .parameter "childType"
    .parameter "jsonChild"

    .prologue
    .line 94
    .local p0, this:Lcom/htc/gson/JsonDeserializationVisitor;,"Lcom/htc/gson/JsonDeserializationVisitor<TT;>;"
    new-instance v0, Lcom/htc/gson/JsonObjectDeserializationVisitor;

    iget-object v3, p0, Lcom/htc/gson/JsonDeserializationVisitor;->factory:Lcom/htc/gson/ObjectNavigatorFactory;

    iget-object v4, p0, Lcom/htc/gson/JsonDeserializationVisitor;->objectConstructor:Lcom/htc/gson/ObjectConstructor;

    iget-object v5, p0, Lcom/htc/gson/JsonDeserializationVisitor;->deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    iget-object v6, p0, Lcom/htc/gson/JsonDeserializationVisitor;->context:Lcom/htc/gson/JsonDeserializationContext;

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/htc/gson/JsonObjectDeserializationVisitor;-><init>(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/ObjectNavigatorFactory;Lcom/htc/gson/ObjectConstructor;Lcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/JsonDeserializationContext;)V

    .line 97
    .local v0, childVisitor:Lcom/htc/gson/JsonDeserializationVisitor;,"Lcom/htc/gson/JsonDeserializationVisitor<*>;"
    invoke-direct {p0, p1, v0}, Lcom/htc/gson/JsonDeserializationVisitor;->visitChild(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationVisitor;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final visitUsingCustomHandler(Lcom/htc/gson/ObjectTypePair;)Z
    .locals 4
    .parameter "objTypePair"

    .prologue
    .local p0, this:Lcom/htc/gson/JsonDeserializationVisitor;,"Lcom/htc/gson/JsonDeserializationVisitor<TT;>;"
    const/4 v2, 0x1

    .line 74
    iget-object v3, p0, Lcom/htc/gson/JsonDeserializationVisitor;->deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {p1, v3}, Lcom/htc/gson/ObjectTypePair;->getMatchingHandler(Lcom/htc/gson/ParameterizedTypeHandlerMap;)Lcom/htc/gson/Pair;

    move-result-object v0

    .line 75
    .local v0, pair:Lcom/htc/gson/Pair;,"Lcom/htc/gson/Pair<Lcom/htc/gson/JsonDeserializer<*>;Lcom/htc/gson/ObjectTypePair;>;"
    if-nez v0, :cond_0

    .line 76
    const/4 v2, 0x0

    .line 81
    :goto_0
    return v2

    .line 78
    :cond_0
    iget-object v3, p0, Lcom/htc/gson/JsonDeserializationVisitor;->json:Lcom/htc/gson/JsonElement;

    invoke-virtual {p0, v3, v0}, Lcom/htc/gson/JsonDeserializationVisitor;->invokeCustomDeserializer(Lcom/htc/gson/JsonElement;Lcom/htc/gson/Pair;)Ljava/lang/Object;

    move-result-object v1

    .line 79
    .local v1, value:Ljava/lang/Object;
    iput-object v1, p0, Lcom/htc/gson/JsonDeserializationVisitor;->target:Ljava/lang/Object;

    .line 80
    iput-boolean v2, p0, Lcom/htc/gson/JsonDeserializationVisitor;->constructed:Z

    goto :goto_0
.end method
