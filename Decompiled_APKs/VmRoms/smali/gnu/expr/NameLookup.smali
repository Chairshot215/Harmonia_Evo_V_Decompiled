.class public Lgnu/expr/NameLookup;
.super Lgnu/kawa/util/GeneralHashTable;
.source "NameLookup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/kawa/util/GeneralHashTable",
        "<",
        "Ljava/lang/Object;",
        "Lgnu/expr/Declaration;",
        ">;"
    }
.end annotation


# static fields
.field static final KEY:Lgnu/mapping/Symbol;


# instance fields
.field language:Lgnu/expr/Language;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "<current-NameLookup>"

    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/expr/NameLookup;->KEY:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 20
    invoke-direct {p0}, Lgnu/kawa/util/GeneralHashTable;-><init>()V

    .line 21
    iput-object p1, p0, Lgnu/expr/NameLookup;->language:Lgnu/expr/Language;

    .line 22
    return-void
.end method

.method public static getInstance(Lgnu/mapping/Environment;Lgnu/expr/Language;)Lgnu/expr/NameLookup;
    .locals 3
    .parameter "env"
    .parameter "language"

    .prologue
    .line 33
    sget-object v2, Lgnu/expr/NameLookup;->KEY:Lgnu/mapping/Symbol;

    invoke-virtual {p0, v2}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;)Lgnu/mapping/Location;

    move-result-object v0

    .line 34
    .local v0, loc:Lgnu/mapping/Location;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/NameLookup;

    .line 35
    .local v1, nl:Lgnu/expr/NameLookup;
    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lgnu/expr/NameLookup;

    .end local v1           #nl:Lgnu/expr/NameLookup;
    invoke-direct {v1, p1}, Lgnu/expr/NameLookup;-><init>(Lgnu/expr/Language;)V

    .line 38
    .restart local v1       #nl:Lgnu/expr/NameLookup;
    invoke-virtual {v0, v1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 42
    :goto_0
    return-object v1

    .line 41
    :cond_0
    invoke-virtual {v1, p1}, Lgnu/expr/NameLookup;->setLanguage(Lgnu/expr/Language;)V

    goto :goto_0
.end method

.method public static setInstance(Lgnu/mapping/Environment;Lgnu/expr/NameLookup;)V
    .locals 2
    .parameter "env"
    .parameter "instance"

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    sget-object v0, Lgnu/expr/NameLookup;->KEY:Lgnu/mapping/Symbol;

    invoke-virtual {p0, v0}, Lgnu/mapping/Environment;->remove(Lgnu/mapping/Symbol;)V

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    sget-object v0, Lgnu/expr/NameLookup;->KEY:Lgnu/mapping/Symbol;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getLanguage()Lgnu/expr/Language;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lgnu/expr/NameLookup;->language:Lgnu/expr/Language;

    return-object v0
.end method

.method public lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;
    .locals 5
    .parameter "symbol"
    .parameter "namespace"

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lgnu/expr/NameLookup;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 144
    .local v1, hash:I
    invoke-virtual {p0, v1}, Lgnu/expr/NameLookup;->hashToIndex(I)I

    move-result v2

    .line 145
    .local v2, index:I
    iget-object v4, p0, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v4, [Lgnu/kawa/util/HashNode;

    aget-object v3, v4, v2

    .line 146
    .local v3, node:Lgnu/kawa/util/HashNode;
    :goto_0
    if-eqz v3, :cond_1

    .line 148
    invoke-virtual {v3}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Declaration;

    .line 149
    .local v0, decl:Lgnu/expr/Declaration;
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lgnu/expr/NameLookup;->language:Lgnu/expr/Language;

    invoke-virtual {v4, v0, p2}, Lgnu/expr/Language;->hasNamespace(Lgnu/expr/Declaration;I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 153
    .end local v0           #decl:Lgnu/expr/Declaration;
    :goto_1
    return-object v4

    .line 146
    .restart local v0       #decl:Lgnu/expr/Declaration;
    :cond_0
    iget-object v3, v3, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    goto :goto_0

    .line 153
    .end local v0           #decl:Lgnu/expr/Declaration;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;
    .locals 1
    .parameter "symbol"
    .parameter "function"

    .prologue
    .line 158
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, p1, v0}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pop(Lgnu/expr/ScopeExp;)V
    .locals 1
    .parameter "exp"

    .prologue
    .line 103
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 104
    .local v0, decl:Lgnu/expr/Declaration;
    :goto_0
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0, v0}, Lgnu/expr/NameLookup;->pop(Lgnu/expr/Declaration;)Z

    .line 104
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method public pop(Lgnu/expr/Declaration;)Z
    .locals 9
    .parameter "decl"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 69
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v5

    .line 70
    .local v5, symbol:Ljava/lang/Object;
    if-nez v5, :cond_0

    move v6, v7

    .line 91
    :goto_0
    return v6

    .line 72
    :cond_0
    invoke-virtual {p0, v5}, Lgnu/expr/NameLookup;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 73
    .local v0, hash:I
    const/4 v4, 0x0

    .line 74
    .local v4, prev:Lgnu/kawa/util/HashNode;
    invoke-virtual {p0, v0}, Lgnu/expr/NameLookup;->hashToIndex(I)I

    move-result v1

    .line 75
    .local v1, index:I
    iget-object v6, p0, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v6, [Lgnu/kawa/util/HashNode;

    aget-object v3, v6, v1

    .line 76
    .local v3, node:Lgnu/kawa/util/HashNode;
    :goto_1
    if-eqz v3, :cond_3

    .line 78
    iget-object v2, v3, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    .line 79
    .local v2, next:Lgnu/kawa/util/HashNode;
    invoke-virtual {v3}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_2

    .line 81
    if-nez v4, :cond_1

    .line 82
    iget-object v6, p0, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v6, [Lgnu/kawa/util/HashNode;

    aput-object v2, v6, v1

    .line 85
    :goto_2
    iget v6, p0, Lgnu/expr/NameLookup;->num_bindings:I

    sub-int/2addr v6, v8

    iput v6, p0, Lgnu/expr/NameLookup;->num_bindings:I

    move v6, v8

    .line 86
    goto :goto_0

    .line 84
    :cond_1
    iput-object v2, v4, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    goto :goto_2

    .line 88
    :cond_2
    move-object v4, v3

    .line 89
    move-object v3, v2

    .line 90
    goto :goto_1

    .end local v2           #next:Lgnu/kawa/util/HashNode;
    :cond_3
    move v6, v7

    .line 91
    goto :goto_0
.end method

.method public push(Lgnu/expr/Declaration;)V
    .locals 6
    .parameter "decl"

    .prologue
    .line 55
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v3

    .line 56
    .local v3, symbol:Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 65
    .end local p0
    :goto_0
    return-void

    .line 58
    .restart local p0
    :cond_0
    iget v4, p0, Lgnu/expr/NameLookup;->num_bindings:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lgnu/expr/NameLookup;->num_bindings:I

    iget-object v4, p0, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v4, [Lgnu/kawa/util/HashNode;

    array-length v4, v4

    if-lt v5, v4, :cond_1

    .line 59
    invoke-virtual {p0}, Lgnu/expr/NameLookup;->rehash()V

    .line 60
    :cond_1
    invoke-virtual {p0, v3}, Lgnu/expr/NameLookup;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 61
    .local v0, hash:I
    invoke-virtual {p0, v3, v0, p1}, Lgnu/expr/NameLookup;->makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v2

    .line 62
    .local v2, node:Lgnu/kawa/util/HashNode;
    invoke-virtual {p0, v0}, Lgnu/expr/NameLookup;->hashToIndex(I)I

    move-result v1

    .line 63
    .local v1, index:I
    iget-object v4, p0, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v4, [Lgnu/kawa/util/HashNode;

    aget-object v4, v4, v1

    iput-object v4, v2, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    .line 64
    iget-object p0, p0, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    .end local p0
    check-cast p0, [Lgnu/kawa/util/HashNode;

    aput-object v2, p0, v1

    goto :goto_0
.end method

.method public push(Lgnu/expr/ScopeExp;)V
    .locals 1
    .parameter "exp"

    .prologue
    .line 96
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 97
    .local v0, decl:Lgnu/expr/Declaration;
    :goto_0
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0, v0}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 97
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method public removeSubsumed(Lgnu/expr/Declaration;)V
    .locals 8
    .parameter "decl"

    .prologue
    .line 113
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v6

    .line 114
    .local v6, symbol:Ljava/lang/Object;
    invoke-virtual {p0, v6}, Lgnu/expr/NameLookup;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 115
    .local v0, hash:I
    invoke-virtual {p0, v0}, Lgnu/expr/NameLookup;->hashToIndex(I)I

    move-result v1

    .line 116
    .local v1, index:I
    const/4 v5, 0x0

    .line 117
    .local v5, prev:Lgnu/kawa/util/HashNode;
    iget-object v7, p0, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v7, [Lgnu/kawa/util/HashNode;

    aget-object v4, v7, v1

    .local v4, node:Lgnu/kawa/util/HashNode;
    :goto_0
    if-eqz v4, :cond_2

    .line 119
    iget-object v3, v4, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    .line 120
    .local v3, next:Lgnu/kawa/util/HashNode;
    invoke-virtual {v4}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/expr/Declaration;

    .line 121
    .local v2, ndecl:Lgnu/expr/Declaration;
    if-eq v2, p1, :cond_1

    invoke-virtual {p0, p1, v2}, Lgnu/expr/NameLookup;->subsumedBy(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 123
    if-nez v5, :cond_0

    .line 124
    iget-object v7, p0, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v7, [Lgnu/kawa/util/HashNode;

    aput-object v3, v7, v1

    .line 130
    :goto_1
    move-object v4, v3

    .line 131
    goto :goto_0

    .line 126
    :cond_0
    iput-object v3, v5, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    goto :goto_1

    .line 129
    :cond_1
    move-object v5, v4

    goto :goto_1

    .line 132
    .end local v2           #ndecl:Lgnu/expr/Declaration;
    .end local v3           #next:Lgnu/kawa/util/HashNode;
    :cond_2
    return-void
.end method

.method public setLanguage(Lgnu/expr/Language;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 17
    iput-object p1, p0, Lgnu/expr/NameLookup;->language:Lgnu/expr/Language;

    return-void
.end method

.method protected subsumedBy(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)Z
    .locals 2
    .parameter "decl"
    .parameter "other"

    .prologue
    .line 137
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgnu/expr/NameLookup;->language:Lgnu/expr/Language;

    invoke-virtual {v0, p1}, Lgnu/expr/Language;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result v0

    iget-object v1, p0, Lgnu/expr/NameLookup;->language:Lgnu/expr/Language;

    invoke-virtual {v1, p2}, Lgnu/expr/Language;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
