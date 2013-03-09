.class public abstract Lcom/google/common/collect/ForwardingMultimap;
.super Lcom/google/common/collect/ForwardingObject;
.source "ForwardingMultimap.java"

# interfaces
.implements Lcom/google/common/collect/Multimap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingObject;",
        "Lcom/google/common/collect/Multimap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    .local p0, this:Lcom/google/common/collect/ForwardingMultimap;,"Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingObject;-><init>()V

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lcom/google/common/collect/ForwardingMultimap;,"Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    .local p0, this:Lcom/google/common/collect/ForwardingMultimap;,"Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Lcom/google/common/collect/ForwardingMultimap;,"Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 117
    .local p0, this:Lcom/google/common/collect/ForwardingMultimap;,"Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/ForwardingMultimap;,"Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 121
    .local p0, this:Lcom/google/common/collect/ForwardingMultimap;,"Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 109
    .local p0, this:Lcom/google/common/collect/ForwardingMultimap;,"Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->size()I

    move-result v0

    return v0
.end method
