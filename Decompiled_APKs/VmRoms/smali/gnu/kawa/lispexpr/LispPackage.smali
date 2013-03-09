.class public Lgnu/kawa/lispexpr/LispPackage;
.super Lgnu/mapping/Namespace;
.source "LispPackage.java"


# instance fields
.field exported:Lgnu/mapping/Namespace;

.field imported:Lgnu/kawa/lispexpr/NamespaceUse;

.field importing:Lgnu/kawa/lispexpr/NamespaceUse;

.field shadowingSymbols:Lgnu/lists/LList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lgnu/mapping/Namespace;-><init>()V

    .line 15
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v0, p0, Lgnu/kawa/lispexpr/LispPackage;->shadowingSymbols:Lgnu/lists/LList;

    return-void
.end method

.method private addToShadowingSymbols(Lgnu/mapping/Symbol;)V
    .locals 5
    .parameter "sym"

    .prologue
    .line 99
    iget-object v2, p0, Lgnu/kawa/lispexpr/LispPackage;->shadowingSymbols:Lgnu/lists/LList;

    :goto_0
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v2, v3, :cond_1

    .line 101
    move-object v0, v2

    check-cast v0, Lgnu/lists/Pair;

    move-object v1, v0

    .line 102
    .local v1, p:Lgnu/lists/Pair;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 107
    .end local v1           #p:Lgnu/lists/Pair;
    :goto_1
    return-void

    .line 104
    .restart local v1       #p:Lgnu/lists/Pair;
    :cond_0
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 105
    .local v2, s:Ljava/lang/Object;
    goto :goto_0

    .line 106
    .end local v1           #p:Lgnu/lists/Pair;
    .end local v2           #s:Ljava/lang/Object;
    :cond_1
    new-instance v3, Lgnu/lists/Pair;

    iget-object v4, p0, Lgnu/kawa/lispexpr/LispPackage;->shadowingSymbols:Lgnu/lists/LList;

    invoke-direct {v3, p1, v4}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Lgnu/kawa/lispexpr/LispPackage;->shadowingSymbols:Lgnu/lists/LList;

    goto :goto_1
.end method

.method private removeFromShadowingSymbols(Lgnu/mapping/Symbol;)Z
    .locals 5
    .parameter "sym"

    .prologue
    .line 111
    const/4 v2, 0x0

    .line 112
    .local v2, prev:Lgnu/lists/Pair;
    iget-object v3, p0, Lgnu/kawa/lispexpr/LispPackage;->shadowingSymbols:Lgnu/lists/LList;

    :goto_0
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v3, v4, :cond_2

    .line 114
    move-object v0, v3

    check-cast v0, Lgnu/lists/Pair;

    move-object v1, v0

    .line 115
    .local v1, p:Lgnu/lists/Pair;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    .line 116
    .local v3, s:Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 118
    if-nez v2, :cond_0

    .line 119
    check-cast v3, Lgnu/lists/LList;

    .end local v3           #s:Ljava/lang/Object;
    iput-object v3, p0, Lgnu/kawa/lispexpr/LispPackage;->shadowingSymbols:Lgnu/lists/LList;

    .line 122
    :goto_1
    const/4 v4, 0x1

    .line 126
    .end local v1           #p:Lgnu/lists/Pair;
    :goto_2
    return v4

    .line 121
    .restart local v1       #p:Lgnu/lists/Pair;
    .restart local v3       #s:Ljava/lang/Object;
    :cond_0
    invoke-virtual {v2, v3}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    goto :goto_1

    .line 124
    :cond_1
    move-object v2, v1

    .line 125
    goto :goto_0

    .line 126
    .end local v1           #p:Lgnu/lists/Pair;
    .end local v3           #s:Ljava/lang/Object;
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method


# virtual methods
.method public isPresent(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0, v1}, Lgnu/kawa/lispexpr/LispPackage;->lookupPresent(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;
    .locals 4
    .parameter "name"
    .parameter "hash"
    .parameter "create"

    .prologue
    const/4 v3, 0x0

    .line 43
    iget-object v2, p0, Lgnu/kawa/lispexpr/LispPackage;->exported:Lgnu/mapping/Namespace;

    invoke-virtual {v2, p1, p2, v3}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 44
    .local v0, sym:Lgnu/mapping/Symbol;
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 62
    :goto_0
    return-object v2

    .line 46
    :cond_0
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/lispexpr/LispPackage;->lookupInternal(Ljava/lang/String;I)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_1

    move-object v2, v0

    .line 48
    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, p0, Lgnu/kawa/lispexpr/LispPackage;->imported:Lgnu/kawa/lispexpr/NamespaceUse;

    .local v1, used:Lgnu/kawa/lispexpr/NamespaceUse;
    :goto_1
    if-eqz v1, :cond_3

    .line 54
    invoke-virtual {p0, p1, p2, v3}, Lgnu/kawa/lispexpr/LispPackage;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_2

    move-object v2, v0

    .line 56
    goto :goto_0

    .line 52
    :cond_2
    iget-object v1, v1, Lgnu/kawa/lispexpr/NamespaceUse;->nextImported:Lgnu/kawa/lispexpr/NamespaceUse;

    goto :goto_1

    .line 59
    :cond_3
    if-eqz p3, :cond_4

    .line 60
    new-instance v2, Lgnu/mapping/Symbol;

    invoke-direct {v2, p0, p1}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p2}, Lgnu/kawa/lispexpr/LispPackage;->add(Lgnu/mapping/Symbol;I)Lgnu/mapping/Symbol;

    move-result-object v2

    goto :goto_0

    .line 62
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public lookupPresent(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;
    .locals 3
    .parameter "name"
    .parameter "hash"
    .parameter "intern"

    .prologue
    .line 67
    iget-object v1, p0, Lgnu/kawa/lispexpr/LispPackage;->exported:Lgnu/mapping/Namespace;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 68
    .local v0, sym:Lgnu/mapping/Symbol;
    if-nez v0, :cond_0

    .line 69
    invoke-super {p0, p1, p2, p3}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 70
    :cond_0
    return-object v0
.end method

.method public shadow(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lgnu/kawa/lispexpr/LispPackage;->lookupPresent(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 133
    .local v0, sym:Lgnu/mapping/Symbol;
    invoke-direct {p0, v0}, Lgnu/kawa/lispexpr/LispPackage;->addToShadowingSymbols(Lgnu/mapping/Symbol;)V

    .line 134
    return-void
.end method

.method public shadowingImport(Lgnu/mapping/Symbol;)V
    .locals 5
    .parameter "symbol"

    .prologue
    .line 138
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 140
    .local v0, hash:I
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lgnu/kawa/lispexpr/LispPackage;->lookupPresent(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v2

    .line 141
    .local v2, old:Lgnu/mapping/Symbol;
    if-eqz v2, :cond_0

    if-eq v2, p1, :cond_0

    .line 142
    invoke-virtual {p0, v2}, Lgnu/kawa/lispexpr/LispPackage;->unintern(Lgnu/mapping/Symbol;)Z

    .line 143
    :cond_0
    invoke-direct {p0, p1}, Lgnu/kawa/lispexpr/LispPackage;->addToShadowingSymbols(Lgnu/mapping/Symbol;)V

    .line 144
    return-void
.end method

.method public unintern(Lgnu/mapping/Symbol;)Z
    .locals 4
    .parameter "symbol"

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 82
    .local v0, hash:I
    iget-object v2, p0, Lgnu/kawa/lispexpr/LispPackage;->exported:Lgnu/mapping/Namespace;

    invoke-virtual {v2, v1, v0, v3}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 83
    iget-object v2, p0, Lgnu/kawa/lispexpr/LispPackage;->exported:Lgnu/mapping/Namespace;

    invoke-virtual {v2, p1}, Lgnu/mapping/Namespace;->remove(Lgnu/mapping/Symbol;)Z

    .line 88
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lgnu/mapping/Symbol;->setNamespace(Lgnu/mapping/Namespace;)V

    .line 89
    invoke-direct {p0, p1}, Lgnu/kawa/lispexpr/LispPackage;->removeFromShadowingSymbols(Lgnu/mapping/Symbol;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    :cond_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 84
    :cond_1
    invoke-super {p0, v1, v0, v3}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 85
    invoke-super {p0, p1}, Lgnu/mapping/Namespace;->remove(Lgnu/mapping/Symbol;)Z

    goto :goto_0

    :cond_2
    move v2, v3

    .line 87
    goto :goto_1
.end method
