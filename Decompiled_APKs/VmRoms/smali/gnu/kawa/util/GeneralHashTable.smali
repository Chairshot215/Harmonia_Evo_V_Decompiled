.class public Lgnu/kawa/util/GeneralHashTable;
.super Lgnu/kawa/util/AbstractHashTable;
.source "GeneralHashTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lgnu/kawa/util/AbstractHashTable",
        "<",
        "Lgnu/kawa/util/HashNode",
        "<TK;TV;>;TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    invoke-direct {p0}, Lgnu/kawa/util/AbstractHashTable;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "capacity"

    .prologue
    .line 19
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    invoke-direct {p0, p1}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    .line 20
    return-void
.end method


# virtual methods
.method protected allocEntries(I)[Lgnu/kawa/util/HashNode;
    .locals 0
    .parameter "n"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    new-array p0, p1, [Lgnu/kawa/util/HashNode;

    .end local p0           #this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    check-cast p0, [Lgnu/kawa/util/HashNode;

    return-object p0
.end method

.method protected bridge synthetic allocEntries(I)[Ljava/util/Map$Entry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    invoke-virtual {p0, p1}, Lgnu/kawa/util/GeneralHashTable;->allocEntries(I)[Lgnu/kawa/util/HashNode;

    move-result-object v0

    return-object v0
.end method

.method protected getEntryHashCode(Lgnu/kawa/util/HashNode;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;)I"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    .local p1, entry:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    iget v0, p1, Lgnu/kawa/util/HashNode;->hash:I

    return v0
.end method

.method protected bridge synthetic getEntryHashCode(Ljava/util/Map$Entry;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    check-cast p1, Lgnu/kawa/util/HashNode;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/kawa/util/GeneralHashTable;->getEntryHashCode(Lgnu/kawa/util/HashNode;)I

    move-result v0

    return v0
.end method

.method protected getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;)",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    .local p1, entry:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    iget-object v0, p1, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    return-object v0
.end method

.method protected bridge synthetic getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    check-cast p1, Lgnu/kawa/util/HashNode;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/kawa/util/GeneralHashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v0

    return-object v0
.end method

.method public getNode(Ljava/lang/Object;)Lgnu/kawa/util/HashNode;
    .locals 0
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    invoke-super {p0, p1}, Lgnu/kawa/util/AbstractHashTable;->getNode(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    .end local p0           #this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    check-cast p0, Lgnu/kawa/util/HashNode;

    return-object p0
.end method

.method public bridge synthetic getNode(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    invoke-virtual {p0, p1}, Lgnu/kawa/util/GeneralHashTable;->getNode(Ljava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v0

    return-object v0
.end method

.method protected makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/HashNode;
    .locals 1
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Lgnu/kawa/util/HashNode;

    invoke-direct {v0, p1, p3}, Lgnu/kawa/util/HashNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .local v0, node:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    iput p2, v0, Lgnu/kawa/util/HashNode;->hash:I

    .line 32
    return-object v0
.end method

.method protected bridge synthetic makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 10
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/util/GeneralHashTable;->makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v0

    return-object v0
.end method

.method protected setEntryNext(Lgnu/kawa/util/HashNode;Lgnu/kawa/util/HashNode;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    .local p1, entry:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    .local p2, next:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    iput-object p2, p1, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    return-void
.end method

.method protected bridge synthetic setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    check-cast p1, Lgnu/kawa/util/HashNode;

    .end local p1
    check-cast p2, Lgnu/kawa/util/HashNode;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/util/GeneralHashTable;->setEntryNext(Lgnu/kawa/util/HashNode;Lgnu/kawa/util/HashNode;)V

    return-void
.end method
