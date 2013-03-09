.class public abstract Lcom/google/common/collect/ForwardingList;
.super Lcom/google/common/collect/ForwardingCollection;
.source "ForwardingList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingCollection",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    .local p2, element:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 49
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    .local p2, elements:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 41
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 89
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

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

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 93
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "element"

    .prologue
    .line 60
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "element"

    .prologue
    .line 64
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    .local p2, element:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "List.subList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/Platform;->subList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
