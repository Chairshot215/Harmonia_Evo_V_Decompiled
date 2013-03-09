.class Lgnu/text/CharMap;
.super Lgnu/kawa/util/AbstractWeakHashTable;
.source "Char.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/kawa/util/AbstractWeakHashTable",
        "<",
        "Lgnu/text/Char;",
        "Lgnu/text/Char;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Lgnu/kawa/util/AbstractWeakHashTable;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lgnu/text/Char;
    .locals 5
    .parameter "key"

    .prologue
    .line 276
    invoke-virtual {p0}, Lgnu/text/CharMap;->cleanup()V

    .line 277
    move v0, p1

    .line 278
    .local v0, hash:I
    invoke-virtual {p0, v0}, Lgnu/text/CharMap;->hashToIndex(I)I

    move-result v1

    .line 279
    .local v1, index:I
    iget-object v4, p0, Lgnu/text/CharMap;->table:[Ljava/util/Map$Entry;

    check-cast v4, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    aget-object v2, v4, v1

    .line 280
    .local v2, node:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;,"Lgnu/kawa/util/AbstractWeakHashTable$WEntry<Lgnu/text/Char;Lgnu/text/Char;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 282
    invoke-virtual {v2}, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/text/Char;

    .line 283
    .local v3, val:Lgnu/text/Char;
    invoke-virtual {v3}, Lgnu/text/Char;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 288
    :goto_1
    return-object v3

    .line 280
    :cond_0
    iget-object v2, v2, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    goto :goto_0

    .line 286
    .end local v3           #val:Lgnu/text/Char;
    :cond_1
    new-instance v3, Lgnu/text/Char;

    invoke-direct {v3, p1}, Lgnu/text/Char;-><init>(I)V

    .line 287
    .restart local v3       #val:Lgnu/text/Char;
    invoke-super {p0, v3, v3}, Lgnu/kawa/util/AbstractWeakHashTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method protected getKeyFromValue(Lgnu/text/Char;)Lgnu/text/Char;
    .locals 0
    .parameter "ch"

    .prologue
    .line 293
    return-object p1
.end method

.method protected bridge synthetic getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 272
    check-cast p1, Lgnu/text/Char;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/text/CharMap;->getKeyFromValue(Lgnu/text/Char;)Lgnu/text/Char;

    move-result-object v0

    return-object v0
.end method

.method protected matches(Lgnu/text/Char;Lgnu/text/Char;)Z
    .locals 2
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 298
    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-virtual {p2}, Lgnu/text/Char;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
