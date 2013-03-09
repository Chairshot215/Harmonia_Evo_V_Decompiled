.class Lcom/google/common/collect/AbstractMultimap$MultisetKeyIterator;
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
    name = "MultisetKeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final entryIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractMultimap;)V
    .locals 1
    .parameter

    .prologue
    .line 1102
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$MultisetKeyIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.MultisetKeyIterator;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$MultisetKeyIterator;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1103
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetKeyIterator;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetKeyIterator;->entryIterator:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractMultimap;Lcom/google/common/collect/AbstractMultimap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1102
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$MultisetKeyIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.MultisetKeyIterator;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap$MultisetKeyIterator;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1106
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$MultisetKeyIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.MultisetKeyIterator;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetKeyIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1109
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$MultisetKeyIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.MultisetKeyIterator;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetKeyIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1112
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$MultisetKeyIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.MultisetKeyIterator;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetKeyIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1113
    return-void
.end method
