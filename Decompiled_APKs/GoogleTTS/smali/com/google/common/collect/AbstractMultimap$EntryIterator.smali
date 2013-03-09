.class Lcom/google/common/collect/AbstractMultimap$EntryIterator;
.super Ljava/lang/Object;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
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
.field collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final keyIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;

.field valueIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;)V
    .locals 1
    .parameter

    .prologue
    .line 1240
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$EntryIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1241
    #getter for: Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;
    invoke-static {p1}, Lcom/google/common/collect/AbstractMultimap;->access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->keyIterator:Ljava/util/Iterator;

    .line 1242
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->keyIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->findValueIteratorAndKey()V

    .line 1247
    :goto_0
    return-void

    .line 1245
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyModifiableIterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->valueIterator:Ljava/util/Iterator;

    goto :goto_0
.end method


# virtual methods
.method findValueIteratorAndKey()V
    .locals 2

    .prologue
    .line 1250
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$EntryIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.EntryIterator;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->keyIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1251
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->key:Ljava/lang/Object;

    .line 1252
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iput-object v1, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->collection:Ljava/util/Collection;

    .line 1253
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->valueIterator:Ljava/util/Iterator;

    .line 1254
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1257
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$EntryIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.EntryIterator;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->keyIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1234
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$EntryIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->next()Ljava/util/Map$Entry;

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
    .line 1261
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$EntryIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.EntryIterator;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1262
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->findValueIteratorAndKey()V

    .line 1264
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->key:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1268
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$EntryIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.EntryIterator;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1269
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->keyIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$210(Lcom/google/common/collect/AbstractMultimap;)I

    .line 1273
    return-void
.end method
