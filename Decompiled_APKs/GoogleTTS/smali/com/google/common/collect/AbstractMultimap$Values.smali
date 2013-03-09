.class Lcom/google/common/collect/AbstractMultimap$Values;
.super Ljava/util/AbstractCollection;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1140
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$Values;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->clear()V

    .line 1141
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 1144
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$Values;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/AbstractMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1131
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$Values;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.Values;"
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$ValueIterator;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$Values;->this$0:Lcom/google/common/collect/AbstractMultimap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap$ValueIterator;-><init>(Lcom/google/common/collect/AbstractMultimap;Lcom/google/common/collect/AbstractMultimap$1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1134
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$Values;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->this$0:Lcom/google/common/collect/AbstractMultimap;

    #getter for: Lcom/google/common/collect/AbstractMultimap;->totalSize:I
    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$200(Lcom/google/common/collect/AbstractMultimap;)I

    move-result v0

    return v0
.end method
