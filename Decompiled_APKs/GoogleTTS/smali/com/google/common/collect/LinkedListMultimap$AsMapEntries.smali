.class Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;
.super Ljava/util/AbstractSet;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsMapEntries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 0
    .parameter

    .prologue
    .line 808
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.AsMapEntries;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 808
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.AsMapEntries;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

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
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 817
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.AsMapEntries;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$1;)V

    .line 818
    .local v0, keyIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TK;>;"
    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;-><init>(Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 813
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.AsMapEntries;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/Multiset;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
