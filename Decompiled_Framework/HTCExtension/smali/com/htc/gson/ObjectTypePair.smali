.class final Lcom/htc/gson/ObjectTypePair;
.super Ljava/lang/Object;
.source "ObjectTypePair.java"


# instance fields
.field private obj:Ljava/lang/Object;

.field private final preserveType:Z

.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    iput-object p2, p0, Lcom/htc/gson/ObjectTypePair;->type:Ljava/lang/reflect/Type;

    iput-boolean p3, p0, Lcom/htc/gson/ObjectTypePair;->preserveType:Z

    return-void
.end method

.method static getActualTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p0, p1

    :cond_0
    const-class v1, Ljava/lang/Object;

    if-ne p0, v1, :cond_1

    move-object p0, p1

    :cond_1
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    move v2, v1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/htc/gson/ObjectTypePair;

    iget-object v3, p0, Lcom/htc/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/htc/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    if-nez v3, :cond_0

    :cond_2
    iget-object v3, p0, Lcom/htc/gson/ObjectTypePair;->type:Ljava/lang/reflect/Type;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/htc/gson/ObjectTypePair;->type:Ljava/lang/reflect/Type;

    if-nez v3, :cond_0

    :cond_3
    iget-boolean v3, p0, Lcom/htc/gson/ObjectTypePair;->preserveType:Z

    iget-boolean v4, v0, Lcom/htc/gson/ObjectTypePair;->preserveType:Z

    if-ne v3, v4, :cond_6

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/htc/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    iget-object v4, v0, Lcom/htc/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/htc/gson/ObjectTypePair;->type:Ljava/lang/reflect/Type;

    iget-object v4, v0, Lcom/htc/gson/ObjectTypePair;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method getMatchingHandler(Lcom/htc/gson/ParameterizedTypeHandlerMap;)Lcom/htc/gson/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<HAND",
            "LER:Ljava/lang/Object;",
            ">(",
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<THAND",
            "LER;",
            ">;)",
            "Lcom/htc/gson/Pair",
            "<THAND",
            "LER;",
            "Lcom/htc/gson/ObjectTypePair;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/htc/gson/ObjectTypePair;->preserveType:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/gson/ObjectTypePair;->toMoreSpecificType()Lcom/htc/gson/ObjectTypePair;

    move-result-object v1

    iget-object v2, v1, Lcom/htc/gson/ObjectTypePair;->type:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->getHandlerFor(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/htc/gson/Pair;

    invoke-direct {v2, v0, v1}, Lcom/htc/gson/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/htc/gson/ObjectTypePair;->type:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->getHandlerFor(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/htc/gson/Pair;

    invoke-direct {v2, v0, p0}, Lcom/htc/gson/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method getType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lcom/htc/gson/ObjectTypePair;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/htc/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/16 v0, 0x1f

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isPreserveType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/gson/ObjectTypePair;->preserveType:Z

    return v0
.end method

.method setObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    return-void
.end method

.method toMoreSpecificType()Lcom/htc/gson/ObjectTypePair;
    .locals 4

    iget-boolean v1, p0, Lcom/htc/gson/ObjectTypePair;->preserveType:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/htc/gson/ObjectTypePair;->type:Ljava/lang/reflect/Type;

    iget-object v2, p0, Lcom/htc/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/gson/ObjectTypePair;->getActualTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/gson/ObjectTypePair;->type:Ljava/lang/reflect/Type;

    if-eq v0, v1, :cond_0

    new-instance v1, Lcom/htc/gson/ObjectTypePair;

    iget-object v2, p0, Lcom/htc/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/htc/gson/ObjectTypePair;->preserveType:Z

    invoke-direct {v1, v2, v0, v3}, Lcom/htc/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    move-object p0, v1

    goto :goto_0
.end method
