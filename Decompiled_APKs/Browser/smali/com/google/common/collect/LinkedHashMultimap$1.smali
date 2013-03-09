.class Lcom/google/common/collect/LinkedHashMultimap$1;
.super Ljava/lang/Object;
.source "LinkedHashMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedHashMultimap;->createEntryIterator()Ljava/util/Iterator;
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
.field entry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/LinkedHashMultimap;

.field final synthetic val$delegateIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 284
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$1;,"Lcom/google/common/collect/LinkedHashMultimap.1;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    iput-object p2, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->val$delegateIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 288
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$1;,"Lcom/google/common/collect/LinkedHashMultimap.1;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->val$delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 284
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$1;,"Lcom/google/common/collect/LinkedHashMultimap.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$1;,"Lcom/google/common/collect/LinkedHashMultimap.1;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->val$delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->entry:Ljava/util/Map$Entry;

    .line 293
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->entry:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 298
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$1;,"Lcom/google/common/collect/LinkedHashMultimap.1;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->val$delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 299
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->entry:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->entry:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/LinkedHashMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 300
    return-void
.end method
