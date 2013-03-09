.class Lcom/google/common/collect/AbstractMultimap$ValueIterator;
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
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
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
    .line 1149
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$ValueIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.ValueIterator;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$ValueIterator;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1150
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$ValueIterator;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->createEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$ValueIterator;->entryIterator:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractMultimap;Lcom/google/common/collect/AbstractMultimap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1149
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$ValueIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.ValueIterator;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap$ValueIterator;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1153
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$ValueIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.ValueIterator;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$ValueIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1156
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$ValueIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.ValueIterator;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$ValueIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1159
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$ValueIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.ValueIterator;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$ValueIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1160
    return-void
.end method
