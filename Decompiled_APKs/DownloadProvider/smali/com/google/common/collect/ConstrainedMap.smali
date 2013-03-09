.class Lcom/google/common/collect/ConstrainedMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "ConstrainedMap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ConstrainedMap$ConstrainedEntrySet;,
        Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final constraint:Lcom/google/common/collect/MapConstraint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapConstraint",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field

.field final delegate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/collect/MapConstraint;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapConstraint",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Lcom/google/common/collect/ConstrainedMap;,"Lcom/google/common/collect/ConstrainedMap<TK;TV;>;"
    .local p1, delegate:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    .local p2, constraint:Lcom/google/common/collect/MapConstraint;,"Lcom/google/common/collect/MapConstraint<-TK;-TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/collect/ConstrainedMap;->delegate:Ljava/util/Map;

    .line 43
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapConstraint;

    iput-object v0, p0, Lcom/google/common/collect/ConstrainedMap;->constraint:Lcom/google/common/collect/MapConstraint;

    .line 44
    return-void
.end method

.method static synthetic access$000(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map$Entry;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/google/common/collect/ConstrainedMap;->constrainedEntry(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method private static constrainedEntry(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapConstraint",
            "<-TK;-TV;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .local p1, constraint:Lcom/google/common/collect/MapConstraint;,"Lcom/google/common/collect/MapConstraint<-TK;-TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Lcom/google/common/collect/ConstrainedMap$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ConstrainedMap$1;-><init>(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)V

    return-object v0
.end method

.method private static constrainedEntrySet(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)Ljava/util/Set;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Lcom/google/common/collect/MapConstraint",
            "<-TK;-TV;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    .local p1, constraint:Lcom/google/common/collect/MapConstraint;,"Lcom/google/common/collect/MapConstraint<-TK;-TV;>;"
    new-instance v0, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntrySet;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntrySet;-><init>(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    .local p0, this:Lcom/google/common/collect/ConstrainedMap;,"Lcom/google/common/collect/ConstrainedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConstrainedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, this:Lcom/google/common/collect/ConstrainedMap;,"Lcom/google/common/collect/ConstrainedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ConstrainedMap;->delegate:Ljava/util/Map;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/ConstrainedMap;,"Lcom/google/common/collect/ConstrainedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ConstrainedMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/common/collect/ConstrainedMap;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ConstrainedMap;->constraint:Lcom/google/common/collect/MapConstraint;

    invoke-static {v0, v1}, Lcom/google/common/collect/ConstrainedMap;->constrainedEntrySet(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ConstrainedMap;->entrySet:Ljava/util/Set;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ConstrainedMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, this:Lcom/google/common/collect/ConstrainedMap;,"Lcom/google/common/collect/ConstrainedMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/google/common/collect/ConstrainedMap;->constraint:Lcom/google/common/collect/MapConstraint;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/MapConstraint;->checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/google/common/collect/ConstrainedMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, this:Lcom/google/common/collect/ConstrainedMap;,"Lcom/google/common/collect/ConstrainedMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 61
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/ConstrainedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 63
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method
