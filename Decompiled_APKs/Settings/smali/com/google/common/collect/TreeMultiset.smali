.class public final Lcom/google/common/collect/TreeMultiset;
.super Lcom/google/common/collect/AbstractMapBasedMultiset;
.source "TreeMultiset.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;
    }
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
    .line 108
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;-><init>(Ljava/util/Map;)V

    .line 109
    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;-><init>(Ljava/util/Map;)V

    .line 113
    return-void
.end method

.method public static create()Lcom/google/common/collect/TreeMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/TreeMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/TreeMultiset;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/TreeMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    invoke-static {}, Lcom/google/common/collect/TreeMultiset;->create()Lcom/google/common/collect/TreeMultiset;

    move-result-object v0

    .line 103
    .local v0, multiset:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 104
    return-object v0
.end method

.method public static create(Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultiset;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;)",
            "Lcom/google/common/collect/TreeMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 206
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 208
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 210
    .local v0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p0, v1}, Lcom/google/common/collect/TreeMultiset;->setBackingMap(Ljava/util/Map;)V

    .line 211
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->populateMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectInputStream;)V

    .line 212
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 200
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 201
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectOutputStream;)V

    .line 202
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->add(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->clear()V

    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 2
    .parameter "element"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    const/4 v1, 0x0

    .line 127
    :try_start_0
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 131
    :goto_0
    return v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/NullPointerException;
    goto :goto_0

    .line 130
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method createElementSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    new-instance v1, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->backingMap()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;-><init>(Lcom/google/common/collect/TreeMultiset;Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->remove(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setCount(Ljava/lang/Object;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->setCount(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic setCount(Ljava/lang/Object;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/AbstractMapBasedMultiset;->setCount(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/TreeMultiset;,"Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
