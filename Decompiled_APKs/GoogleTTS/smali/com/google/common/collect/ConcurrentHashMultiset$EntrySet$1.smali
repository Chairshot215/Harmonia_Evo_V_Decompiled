.class Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet$1;
.super Ljava/lang/Object;
.source "ConcurrentHashMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;

.field final synthetic val$backingIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 396
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet$1;,"Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet.1;"
    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet$1;->this$1:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;

    iput-object p2, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet$1;->val$backingIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 398
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet$1;,"Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet.1;"
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet$1;->val$backingIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/google/common/collect/Multiset$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet$1;,"Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet.1;"
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet$1;->val$backingIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 403
    .local v0, backingEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TE;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 396
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet$1;,"Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet$1;->next()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 408
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet$1;,"Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet.1;"
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet$1;->val$backingIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 409
    return-void
.end method
