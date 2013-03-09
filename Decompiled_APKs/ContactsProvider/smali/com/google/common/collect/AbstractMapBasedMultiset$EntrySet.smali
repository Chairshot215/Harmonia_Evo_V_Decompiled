.class Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;
.super Ljava/util/AbstractSet;
.source "AbstractMapBasedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Lcom/google/common/collect/AbstractMapBasedMultiset$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.EntrySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .line 144
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.EntrySet;"
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    #getter for: Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$100(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 145
    .local v0, frequency:Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 147
    .end local v0           #frequency:Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    #getter for: Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$100(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 148
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    const-wide/16 v3, 0x0

    #setter for: Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J
    invoke-static {v2, v3, v4}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$202(Lcom/google/common/collect/AbstractMapBasedMultiset;J)J

    .line 149
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.EntrySet;"
    const/4 v2, 0x0

    .line 152
    instance-of v3, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 153
    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    .line 154
    .local v1, entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 155
    .local v0, count:I
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    if-ne v0, v3, :cond_0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    .line 157
    .end local v0           #count:I
    .end local v1           #entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    :cond_0
    return v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.EntrySet;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    #getter for: Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$100(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 100
    .local v0, backingEntries:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TE;Ljava/util/concurrent/atomic/AtomicInteger;>;>;"
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.EntrySet;"
    const/4 v3, 0x0

    .line 161
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 162
    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 163
    .local v0, entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    iget-object v4, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    #getter for: Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$100(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 164
    .local v1, frequency:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v2

    .line 165
    .local v2, numberRemoved:I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    int-to-long v4, v2

    invoke-static {v3, v4, v5}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$222(Lcom/google/common/collect/AbstractMapBasedMultiset;J)J

    .line 166
    const/4 v3, 0x1

    .line 168
    .end local v0           #entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    .end local v1           #frequency:Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v2           #numberRemoved:I
    :cond_0
    return v3
.end method

.method public size()I
    .locals 1

    .prologue
    .line 138
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    #getter for: Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$100(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
