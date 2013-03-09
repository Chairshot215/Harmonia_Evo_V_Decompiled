.class final Lcom/htc/gson/ModifierBasedExclusionStrategy;
.super Ljava/lang/Object;
.source "ModifierBasedExclusionStrategy.java"

# interfaces
.implements Lcom/htc/gson/ExclusionStrategy;


# instance fields
.field private final modifiers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([I)V
    .locals 6
    .parameter "modifiers"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/htc/gson/ModifierBasedExclusionStrategy;->modifiers:Ljava/util/Collection;

    .line 36
    if-eqz p1, :cond_0

    .line 37
    move-object v0, p1

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 38
    .local v3, modifier:I
    iget-object v4, p0, Lcom/htc/gson/ModifierBasedExclusionStrategy;->modifiers:Ljava/util/Collection;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #modifier:I
    :cond_0
    return-void
.end method


# virtual methods
.method public shouldSkipClass(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipField(Lcom/htc/gson/FieldAttributes;)Z
    .locals 3
    .parameter "f"

    .prologue
    .line 44
    iget-object v2, p0, Lcom/htc/gson/ModifierBasedExclusionStrategy;->modifiers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 45
    .local v1, modifier:I
    invoke-virtual {p1, v1}, Lcom/htc/gson/FieldAttributes;->hasModifier(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    const/4 v2, 0x1

    .line 49
    .end local v1           #modifier:I
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
