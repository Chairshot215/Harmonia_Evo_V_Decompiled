.class Lcom/google/common/collect/ImmutableMultimap$Values;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final multimap:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<*TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<*TV;>;)V"
        }
    .end annotation

    .prologue
    .line 489
    .local p0, this:Lcom/google/common/collect/ImmutableMultimap$Values;,"Lcom/google/common/collect/ImmutableMultimap$Values<TV;>;"
    .local p1, multimap:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<*TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    .line 490
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$Values;->multimap:Lcom/google/common/collect/Multimap;

    .line 491
    return-void
.end method


# virtual methods
.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 494
    .local p0, this:Lcom/google/common/collect/ImmutableMultimap$Values;,"Lcom/google/common/collect/ImmutableMultimap$Values<TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$Values;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 496
    .local v0, entryIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/Map$Entry<*TV;>;>;"
    new-instance v1, Lcom/google/common/collect/ImmutableMultimap$Values$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ImmutableMultimap$Values$1;-><init>(Lcom/google/common/collect/ImmutableMultimap$Values;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 486
    .local p0, this:Lcom/google/common/collect/ImmutableMultimap$Values;,"Lcom/google/common/collect/ImmutableMultimap$Values<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$Values;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 507
    .local p0, this:Lcom/google/common/collect/ImmutableMultimap$Values;,"Lcom/google/common/collect/ImmutableMultimap$Values<TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Values;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->size()I

    move-result v0

    return v0
.end method
