.class Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1$1;
.super Lcom/google/common/collect/Multisets$AbstractEntry;
.source "AbstractMapBasedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;->next()Lcom/google/common/collect/Multiset$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$AbstractEntry",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;

.field final synthetic val$mapEntry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;Ljava/util/Map$Entry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1$1;,"Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1.1;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1$1;->this$2:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;

    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1$1;->val$mapEntry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    .line 115
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1$1;,"Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1.1;"
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1$1;->val$mapEntry:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 116
    .local v0, count:I
    if-nez v0, :cond_0

    .line 117
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1$1;->this$2:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;

    iget-object v2, v2, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;->this$1:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;

    iget-object v2, v2, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    #getter for: Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$100(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1$1;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 118
    .local v1, frequency:Ljava/util/concurrent/atomic/AtomicInteger;
    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 122
    .end local v1           #frequency:Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_0
    return v0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1$1;,"Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1.1;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1$1;->val$mapEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
