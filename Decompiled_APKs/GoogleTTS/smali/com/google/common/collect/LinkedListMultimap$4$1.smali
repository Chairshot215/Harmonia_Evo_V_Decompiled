.class Lcom/google/common/collect/LinkedListMultimap$4$1;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedListMultimap$4;->iterator()Ljava/util/Iterator;
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
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/LinkedListMultimap$4;

.field final synthetic val$nodes:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$4;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 776
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$4$1;,"Lcom/google/common/collect/LinkedListMultimap$4.1;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$4$1;->this$1:Lcom/google/common/collect/LinkedListMultimap$4;

    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$4$1;->val$nodes:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 778
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$4$1;,"Lcom/google/common/collect/LinkedListMultimap$4.1;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$4$1;->val$nodes:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 776
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$4$1;,"Lcom/google/common/collect/LinkedListMultimap$4.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$4$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 782
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$4$1;,"Lcom/google/common/collect/LinkedListMultimap$4.1;"
    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$4$1;->val$nodes:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 783
    .local v0, node:Lcom/google/common/collect/LinkedListMultimap$Node;,"Lcom/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$4$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/LinkedListMultimap$4$1$1;-><init>(Lcom/google/common/collect/LinkedListMultimap$4$1;Lcom/google/common/collect/LinkedListMultimap$Node;)V

    return-object v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 799
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$4$1;,"Lcom/google/common/collect/LinkedListMultimap$4.1;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$4$1;->val$nodes:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 800
    return-void
.end method
