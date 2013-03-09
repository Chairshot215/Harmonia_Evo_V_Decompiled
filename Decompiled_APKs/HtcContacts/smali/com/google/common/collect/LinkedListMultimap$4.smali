.class Lcom/google/common/collect/LinkedListMultimap$4;
.super Ljava/util/AbstractCollection;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedListMultimap;->entries()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 0
    .parameter

    .prologue
    .line 769
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$4;,"Lcom/google/common/collect/LinkedListMultimap.4;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$4;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 775
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$4;,"Lcom/google/common/collect/LinkedListMultimap.4;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$4;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$1;)V

    .line 776
    .local v0, nodes:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/common/collect/LinkedListMultimap$Node<TK;TV;>;>;"
    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$4$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/LinkedListMultimap$4$1;-><init>(Lcom/google/common/collect/LinkedListMultimap$4;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 771
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$4;,"Lcom/google/common/collect/LinkedListMultimap.4;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$4;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/Multiset;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->size()I

    move-result v0

    return v0
.end method
