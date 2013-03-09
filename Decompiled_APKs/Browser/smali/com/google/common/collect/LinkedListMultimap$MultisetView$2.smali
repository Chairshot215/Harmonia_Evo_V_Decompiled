.class Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;
.super Ljava/util/AbstractSet;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedListMultimap$MultisetView;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/LinkedListMultimap$MultisetView;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView;)V
    .locals 0
    .parameter

    .prologue
    .line 672
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;,"Lcom/google/common/collect/LinkedListMultimap$MultisetView.2;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;->this$1:Lcom/google/common/collect/LinkedListMultimap$MultisetView;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

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
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 678
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;,"Lcom/google/common/collect/LinkedListMultimap$MultisetView.2;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;->this$1:Lcom/google/common/collect/LinkedListMultimap$MultisetView;

    iget-object v1, v1, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$1;)V

    .line 679
    .local v0, keyIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TK;>;"
    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;-><init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 674
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;,"Lcom/google/common/collect/LinkedListMultimap$MultisetView.2;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;->this$1:Lcom/google/common/collect/LinkedListMultimap$MultisetView;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/Multiset;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
