.class Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/CustomConcurrentHashMap$Strategy",
        "<TK;TV;",
        "Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2104
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyEntry(Ljava/lang/Object;Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2112
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, original:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry<TK;TV;>;"
    .local p3, next:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    iget v1, p2, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;->hash:I

    iget-object v2, p2, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;->value:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)V

    return-object v0
.end method

.method public bridge synthetic copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2104
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy<TK;TV;>;"
    check-cast p2, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    .end local p2
    check-cast p3, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;->copyEntry(Ljava/lang/Object;Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    move-result-object v0

    return-object v0
.end method

.method public equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter "b"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2122
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy<TK;TV;>;"
    .local p1, a:Ljava/lang/Object;,"TK;"
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter "b"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2125
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy<TK;TV;>;"
    .local p1, a:Ljava/lang/Object;,"TV;"
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getHash(Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry",
            "<TK;TV;>;)I"
        }
    .end annotation

    .prologue
    .line 2137
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry<TK;TV;>;"
    iget v0, p1, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;->hash:I

    return v0
.end method

.method public bridge synthetic getHash(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2104
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy<TK;TV;>;"
    check-cast p1, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;->getHash(Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)I

    move-result v0

    return v0
.end method

.method public getKey(Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    .prologue
    .line 2131
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry<TK;TV;>;"
    iget-object v0, p1, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2104
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy<TK;TV;>;"
    check-cast p1, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;->getKey(Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNext(Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2134
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry<TK;TV;>;"
    iget-object v0, p1, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;->next:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    return-object v0
.end method

.method public bridge synthetic getNext(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2104
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy<TK;TV;>;"
    check-cast p1, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;->getNext(Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2119
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry<TK;TV;>;"
    iget-object v0, p1, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2104
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy<TK;TV;>;"
    check-cast p1, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;->getValue(Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashKey(Ljava/lang/Object;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 2128
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public newEntry(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;
    .locals 2
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2108
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, next:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)V

    return-object v0
.end method

.method public bridge synthetic newEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2104
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy<TK;TV;>;"
    check-cast p3, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;->newEntry(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    move-result-object v0

    return-object v0
.end method

.method public setInternals(Lcom/google/common/collect/CustomConcurrentHashMap$Internals;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Internals",
            "<TK;TV;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 2142
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy<TK;TV;>;"
    .local p1, internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;,"Lcom/google/common/collect/CustomConcurrentHashMap$Internals<TK;TV;Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry<TK;TV;>;>;"
    return-void
.end method

.method public setValue(Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 2116
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry<TK;TV;>;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iput-object p2, p1, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;->value:Ljava/lang/Object;

    .line 2117
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2104
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy<TK;TV;>;"
    check-cast p1, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;->setValue(Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;Ljava/lang/Object;)V

    return-void
.end method
