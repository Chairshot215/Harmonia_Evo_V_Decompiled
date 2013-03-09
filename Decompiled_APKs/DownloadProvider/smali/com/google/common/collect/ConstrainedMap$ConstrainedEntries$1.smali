.class Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries$1;
.super Lcom/google/common/collect/ForwardingIterator;
.source "ConstrainedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    .local p0, this:Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries$1;,"Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries.1;"
    iput-object p1, p0, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries$1;->this$0:Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;

    iput-object p2, p0, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    .local p0, this:Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries$1;,"Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries$1;->delegate()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Iterator;
    .locals 1
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
    .line 108
    .local p0, this:Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries$1;,"Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries.1;"
    iget-object v0, p0, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries$1;->val$iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    .local p0, this:Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries$1;,"Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries$1;->next()Ljava/util/Map$Entry;

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
    .line 105
    .local p0, this:Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries$1;,"Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries.1;"
    iget-object v0, p0, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries$1;->this$0:Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;

    iget-object v1, v1, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;->constraint:Lcom/google/common/collect/MapConstraint;

    #calls: Lcom/google/common/collect/ConstrainedMap;->constrainedEntry(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map$Entry;
    invoke-static {v0, v1}, Lcom/google/common/collect/ConstrainedMap;->access$000(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
