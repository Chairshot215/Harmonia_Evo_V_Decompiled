.class Lcom/google/common/collect/AbstractMultimap$MultisetEntry;
.super Lcom/google/common/collect/Multisets$AbstractEntry;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultisetEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$AbstractEntry",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final entry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Map$Entry;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1090
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$MultisetEntry;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.MultisetEntry;"
    .local p2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$MultisetEntry;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    .line 1091
    iput-object p2, p0, Lcom/google/common/collect/AbstractMultimap$MultisetEntry;->entry:Ljava/util/Map$Entry;

    .line 1092
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1097
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$MultisetEntry;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.MultisetEntry;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetEntry;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1094
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$MultisetEntry;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.MultisetEntry;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetEntry;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
