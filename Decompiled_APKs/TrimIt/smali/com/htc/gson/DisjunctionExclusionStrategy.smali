.class final Lcom/htc/gson/DisjunctionExclusionStrategy;
.super Ljava/lang/Object;
.source "DisjunctionExclusionStrategy.java"

# interfaces
.implements Lcom/htc/gson/ExclusionStrategy;


# instance fields
.field private final strategies:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/gson/ExclusionStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/gson/ExclusionStrategy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, strategies:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/gson/ExclusionStrategy;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/htc/gson/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 34
    iput-object p1, p0, Lcom/htc/gson/DisjunctionExclusionStrategy;->strategies:Ljava/util/Collection;

    .line 35
    return-void
.end method


# virtual methods
.method public shouldSkipClass(Ljava/lang/Class;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/htc/gson/DisjunctionExclusionStrategy;->strategies:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/gson/ExclusionStrategy;

    .line 48
    .local v1, strategy:Lcom/htc/gson/ExclusionStrategy;
    invoke-interface {v1, p1}, Lcom/htc/gson/ExclusionStrategy;->shouldSkipClass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    const/4 v2, 0x1

    .line 52
    .end local v1           #strategy:Lcom/htc/gson/ExclusionStrategy;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public shouldSkipField(Lcom/htc/gson/FieldAttributes;)Z
    .locals 3
    .parameter "f"

    .prologue
    .line 38
    iget-object v2, p0, Lcom/htc/gson/DisjunctionExclusionStrategy;->strategies:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/gson/ExclusionStrategy;

    .line 39
    .local v1, strategy:Lcom/htc/gson/ExclusionStrategy;
    invoke-interface {v1, p1}, Lcom/htc/gson/ExclusionStrategy;->shouldSkipField(Lcom/htc/gson/FieldAttributes;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    const/4 v2, 0x1

    .line 43
    .end local v1           #strategy:Lcom/htc/gson/ExclusionStrategy;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
