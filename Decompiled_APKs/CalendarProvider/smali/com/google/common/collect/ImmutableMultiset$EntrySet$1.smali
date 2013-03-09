.class Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMultiset$EntrySet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableMultiset$EntrySet;

.field final synthetic val$mapIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultiset$EntrySet;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 293
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;,"Lcom/google/common/collect/ImmutableMultiset$EntrySet.1;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;->this$0:Lcom/google/common/collect/ImmutableMultiset$EntrySet;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;->val$mapIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 295
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;,"Lcom/google/common/collect/ImmutableMultiset$EntrySet.1;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;->val$mapIterator:Ljava/util/Iterator;

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
    .line 298
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;,"Lcom/google/common/collect/ImmutableMultiset$EntrySet.1;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;->val$mapIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 299
    .local v0, mapEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TE;Ljava/lang/Integer;>;"
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
    .line 293
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;,"Lcom/google/common/collect/ImmutableMultiset$EntrySet.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;->next()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method
