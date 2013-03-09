.class public final Lcom/google/common/collect/LinkedHashMultiset;
.super Lcom/google/common/collect/AbstractMapBasedMultiset;
.source "LinkedHashMultiset.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMapBasedMultiset",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 76
    .local p0, this:Lcom/google/common/collect/LinkedHashMultiset;,"Lcom/google/common/collect/LinkedHashMultiset<TE;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;-><init>(Ljava/util/Map;)V

    .line 77
    return-void
.end method

.method public static create()Lcom/google/common/collect/LinkedHashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/LinkedHashMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/google/common/collect/LinkedHashMultiset;

    invoke-direct {v0}, Lcom/google/common/collect/LinkedHashMultiset;-><init>()V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 95
    .local p0, this:Lcom/google/common/collect/LinkedHashMultiset;,"Lcom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 96
    invoke-static {p1}, Lcom/google/common/collect/Serialization;->readCount(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 97
    .local v0, distinctElements:I
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->capacity(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/google/common/collect/LinkedHashMultiset;->setBackingMap(Ljava/util/Map;)V

    .line 99
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Serialization;->populateMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectInputStream;I)V

    .line 100
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    .local p0, this:Lcom/google/common/collect/LinkedHashMultiset;,"Lcom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 90
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectOutputStream;)V

    .line 91
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    .local p0, this:Lcom/google/common/collect/LinkedHashMultiset;,"Lcom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->add(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    .local p0, this:Lcom/google/common/collect/LinkedHashMultiset;,"Lcom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    .local p0, this:Lcom/google/common/collect/LinkedHashMultiset;,"Lcom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 39
    .local p0, this:Lcom/google/common/collect/LinkedHashMultiset;,"Lcom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->clear()V

    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    .local p0, this:Lcom/google/common/collect/LinkedHashMultiset;,"Lcom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    .local p0, this:Lcom/google/common/collect/LinkedHashMultiset;,"Lcom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic count(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    .local p0, this:Lcom/google/common/collect/LinkedHashMultiset;,"Lcom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 39
    .local p0, this:Lcom/google/common/collect/LinkedHashMultiset;,"Lcom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 39
    .local p0, this:Lcom/google/common/collect/LinkedHashMultiset;,"Lcom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    .local p0, this:Lcom/google/common/collect/LinkedHashMultiset;,"Lcom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 39
    .local p0, this:Lcom/google/common/collect/LinkedHashMultiset;,"Lcom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 39
    .local p0, this:Lcom/google/common/collect/LinkedHashMultiset;,"Lcom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 39
    .local p0, this:Lcom/google/common/collect/LinkedHashMultiset;,"Lcom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    .local p0, this:Lcom/google/common/collect/LinkedHashMultiset;,"Lcom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->remove(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    .local p0, this:Lcom/google/common/collect/LinkedHashMultiset;,"Lcom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    .local p0, this:Lcom/google/common/collect/LinkedHashMultiset;,"Lcom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    .local p0, this:Lcom/google/common/collect/LinkedHashMultiset;,"Lcom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 39
    .local p0, this:Lcom/google/common/collect/LinkedHashMultiset;,"Lcom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    .local p0, this:Lcom/google/common/collect/LinkedHashMultiset;,"Lcom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
