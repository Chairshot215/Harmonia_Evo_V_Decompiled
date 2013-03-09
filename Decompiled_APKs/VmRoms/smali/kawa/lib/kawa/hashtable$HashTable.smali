.class public Lkawa/lib/kawa/hashtable$HashTable;
.super Lgnu/kawa/util/GeneralHashTable;
.source "hashtable.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkawa/lib/kawa/hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HashTable"
.end annotation


# instance fields
.field public equivalenceFunction:Lgnu/mapping/Procedure;

.field public hashFunction:Lgnu/mapping/Procedure;

.field public mutable:Z


# direct methods
.method private $finit$()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkawa/lib/kawa/hashtable$HashTable;->mutable:Z

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lgnu/kawa/util/GeneralHashTable;-><init>()V

    invoke-virtual {p0}, Lkawa/lib/kawa/hashtable$HashTable;->$finit$()V

    .line 31
    iput-object p1, p0, Lkawa/lib/kawa/hashtable$HashTable;->equivalenceFunction:Lgnu/mapping/Procedure;

    .line 32
    iput-object p2, p0, Lkawa/lib/kawa/hashtable$HashTable;->hashFunction:Lgnu/mapping/Procedure;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p3}, Lgnu/kawa/util/GeneralHashTable;-><init>(I)V

    invoke-virtual {p0}, Lkawa/lib/kawa/hashtable$HashTable;->$finit$()V

    .line 28
    iput-object p1, p0, Lkawa/lib/kawa/hashtable$HashTable;->equivalenceFunction:Lgnu/mapping/Procedure;

    .line 29
    iput-object p2, p0, Lkawa/lib/kawa/hashtable$HashTable;->hashFunction:Lgnu/mapping/Procedure;

    return-void
.end method

.method public constructor <init>(Lkawa/lib/kawa/hashtable$HashTable;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lgnu/kawa/util/GeneralHashTable;-><init>()V

    invoke-virtual {p0}, Lkawa/lib/kawa/hashtable$HashTable;->$finit$()V

    .line 34
    sget-object v0, Lgnu/kawa/reflect/Invoke;->invokeSpecial:Lgnu/kawa/reflect/Invoke;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lkawa/lib/kawa/hashtable;->hashtable:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    .line 35
    iget-object v3, p1, Lkawa/lib/kawa/hashtable$HashTable;->equivalenceFunction:Lgnu/mapping/Procedure;

    invoke-virtual {v3}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 36
    iget-object v3, p1, Lkawa/lib/kawa/hashtable$HashTable;->hashFunction:Lgnu/mapping/Procedure;

    invoke-virtual {v3}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 37
    invoke-virtual {p1}, Lkawa/lib/kawa/hashtable$HashTable;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->putAll(Lkawa/lib/kawa/hashtable$HashTable;)V

    .line 39
    sget-object v0, Lgnu/kawa/functions/SetNamedPart;->setNamedPart:Lgnu/kawa/functions/SetNamedPart;

    sget-object v1, Lkawa/standard/thisRef;->thisSyntax:Lkawa/standard/thisRef;

    sget-object v2, Lkawa/lib/kawa/hashtable;->Lit0:Lgnu/mapping/SimpleSymbol;

    if-eqz p2, :cond_0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lkawa/lib/kawa/hashtable$HashTable;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lkawa/lib/kawa/hashtable$HashTable;-><init>(Lkawa/lib/kawa/hashtable$HashTable;Z)V

    return-object v0
.end method

.method public entriesVectorPair()Lgnu/lists/Pair;
    .locals 10

    .prologue
    .line 55
    new-instance v1, Lgnu/lists/FVector;

    invoke-direct {v1}, Lgnu/lists/FVector;-><init>()V

    .line 57
    new-instance v5, Lgnu/lists/FVector;

    invoke-direct {v5}, Lgnu/lists/FVector;-><init>()V

    .line 58
    .local v1, keys:Lgnu/lists/FVector;
    .local v5, vals:Lgnu/lists/FVector;
    iget-object v4, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    :try_start_0
    check-cast v4, [Lgnu/kawa/util/HashNode;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .local v4, table:[Lgnu/kawa/util/HashNode;
    array-length v2, v4

    .line 58
    .local v2, length:I
    const/4 v6, 0x1

    sub-int v0, v2, v6

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 16
    aget-object v3, v4, v0

    .line 58
    .local v3, node:Lgnu/kawa/util/HashNode;
    :goto_1
    if-eqz v3, :cond_0

    .line 59
    invoke-virtual {v3}, Lgnu/kawa/util/HashNode;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Lgnu/lists/FVector;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v3}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/lists/FVector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Lkawa/lib/kawa/hashtable$HashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v3

    goto :goto_1

    .line 58
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 61
    .end local v3           #node:Lgnu/kawa/util/HashNode;
    :cond_1
    invoke-static {v1, v5}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    return-object v6

    .line 58
    .end local v0           #i:I
    .end local v2           #length:I
    .end local v4           #table:[Lgnu/kawa/util/HashNode;
    :catch_0
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "table"

    const/4 v9, -0x2

    invoke-direct {v7, v6, v8, v9, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7
.end method

.method public fold(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "proc"
    .parameter "acc"

    .prologue
    .line 46
    iget-object v3, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    :try_start_0
    check-cast v3, [Lgnu/kawa/util/HashNode;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .local v3, table:[Lgnu/kawa/util/HashNode;
    array-length v1, v3

    .line 47
    .local v1, length:I
    const/4 v4, 0x1

    sub-int v0, v1, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 16
    aget-object v2, v3, v0

    .line 47
    .local v2, node:Lgnu/kawa/util/HashNode;
    :goto_1
    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v2}, Lgnu/kawa/util/HashNode;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v4, v5, p2}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v2}, Lkawa/lib/kawa/hashtable$HashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v2

    goto :goto_1

    .line 47
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #node:Lgnu/kawa/util/HashNode;
    .end local v3           #table:[Lgnu/kawa/util/HashNode;
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "table"

    const/4 v7, -0x2

    invoke-direct {v5, v4, v6, v7, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 49
    .restart local v0       #i:I
    .restart local v1       #length:I
    .restart local v3       #table:[Lgnu/kawa/util/HashNode;
    :cond_1
    return-object p2
.end method

.method public hash(Ljava/lang/Object;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 40
    iget-object v0, p0, Lkawa/lib/kawa/hashtable$HashTable;->hashFunction:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public keysVector()Lgnu/lists/FVector;
    .locals 9

    .prologue
    .line 50
    new-instance v4, Lgnu/lists/FVector;

    invoke-direct {v4}, Lgnu/lists/FVector;-><init>()V

    .line 52
    .local v4, v:Lgnu/lists/FVector;
    iget-object v3, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    :try_start_0
    check-cast v3, [Lgnu/kawa/util/HashNode;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .local v3, table:[Lgnu/kawa/util/HashNode;
    array-length v1, v3

    .line 52
    .local v1, length:I
    const/4 v5, 0x1

    sub-int v0, v1, v5

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 16
    aget-object v2, v3, v0

    .line 52
    .local v2, node:Lgnu/kawa/util/HashNode;
    :goto_1
    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v2}, Lgnu/kawa/util/HashNode;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/lists/FVector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lkawa/lib/kawa/hashtable$HashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v2

    goto :goto_1

    .line 52
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #node:Lgnu/kawa/util/HashNode;
    .end local v3           #table:[Lgnu/kawa/util/HashNode;
    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "table"

    const/4 v8, -0x2

    invoke-direct {v6, v5, v7, v8, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 54
    .restart local v0       #i:I
    .restart local v1       #length:I
    .restart local v3       #table:[Lgnu/kawa/util/HashNode;
    :cond_1
    return-object v4
.end method

.method public matches(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter "value1"
    .parameter "value2"

    .prologue
    .line 42
    iget-object v0, p0, Lkawa/lib/kawa/hashtable$HashTable;->equivalenceFunction:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putAll(Lkawa/lib/kawa/hashtable$HashTable;)V
    .locals 8
    .parameter "other"

    .prologue
    .line 82
    iget-object v3, p1, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    :try_start_0
    check-cast v3, [Lgnu/kawa/util/HashNode;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .local v3, table:[Lgnu/kawa/util/HashNode;
    array-length v1, v3

    .line 83
    .local v1, length:I
    const/4 v4, 0x1

    sub-int v0, v1, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 16
    aget-object v2, v3, v0

    .line 83
    .local v2, node:Lgnu/kawa/util/HashNode;
    :goto_1
    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {v2}, Lgnu/kawa/util/HashNode;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lkawa/lib/kawa/hashtable$HashTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lkawa/lib/kawa/hashtable$HashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v2

    goto :goto_1

    .line 83
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #node:Lgnu/kawa/util/HashNode;
    .end local v3           #table:[Lgnu/kawa/util/HashNode;
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "table"

    const/4 v7, -0x2

    invoke-direct {v5, v4, v6, v7, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .restart local v0       #i:I
    .restart local v1       #length:I
    .restart local v3       #table:[Lgnu/kawa/util/HashNode;
    :cond_1
    return-void
.end method

.method public toAlist()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 62
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 64
    .local v3, result:Lgnu/lists/LList;
    iget-object v4, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    :try_start_0
    check-cast v4, [Lgnu/kawa/util/HashNode;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .local v4, table:[Lgnu/kawa/util/HashNode;
    array-length v1, v4

    .line 64
    .local v1, length:I
    const/4 v5, 0x1

    sub-int v0, v1, v5

    .local v0, i:I
    move-object v5, v3

    .end local v3           #result:Lgnu/lists/LList;
    :goto_0
    if-ltz v0, :cond_1

    .line 16
    aget-object v2, v4, v0

    .line 64
    .local v2, node:Lgnu/kawa/util/HashNode;
    :goto_1
    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {v2}, Lgnu/kawa/util/HashNode;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    invoke-static {v6, v5}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    .local v3, result:Lgnu/lists/Pair;
    invoke-virtual {p0, v2}, Lkawa/lib/kawa/hashtable$HashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v2

    move-object v5, v3

    goto :goto_1

    .line 64
    .end local v3           #result:Lgnu/lists/Pair;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #node:Lgnu/kawa/util/HashNode;
    .end local v4           #table:[Lgnu/kawa/util/HashNode;
    .local v3, result:Lgnu/lists/LList;
    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "table"

    const/4 v8, -0x2

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 68
    .end local v3           #result:Lgnu/lists/LList;
    .restart local v0       #i:I
    .restart local v1       #length:I
    .restart local v4       #table:[Lgnu/kawa/util/HashNode;
    :cond_1
    return-object v5
.end method

.method public toNodeArray()[Lgnu/kawa/util/HashNode;
    .locals 11

    .prologue
    .line 74
    invoke-virtual {p0}, Lkawa/lib/kawa/hashtable$HashTable;->size()I

    move-result v3

    .local v3, n:I
    new-array v5, v3, [Lgnu/kawa/util/HashNode;

    .local v5, result:[Lgnu/kawa/util/HashNode;
    const/4 v0, 0x0

    .line 78
    .local v0, i:I
    iget-object v6, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    :try_start_0
    check-cast v6, [Lgnu/kawa/util/HashNode;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .local v6, table:[Lgnu/kawa/util/HashNode;
    array-length v2, v6

    .line 78
    .local v2, length:I
    const/4 v7, 0x1

    sub-int v1, v2, v7

    .end local v0           #i:I
    .local v1, i:I
    move v7, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 16
    aget-object v4, v6, v1

    .line 78
    .end local v1           #i:I
    .local v4, node:Lgnu/kawa/util/HashNode;
    :goto_1
    if-eqz v4, :cond_0

    .line 79
    aput-object v4, v5, v7

    .line 80
    add-int/lit8 v0, v7, 0x1

    .restart local v0       #i:I
    invoke-virtual {p0, v4}, Lkawa/lib/kawa/hashtable$HashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v4

    move v7, v0

    goto :goto_1

    .line 78
    .end local v0           #i:I
    :cond_0
    add-int/lit8 v0, v1, -0x1

    .restart local v0       #i:I
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .end local v1           #i:I
    .end local v2           #length:I
    .end local v4           #node:Lgnu/kawa/util/HashNode;
    .end local v6           #table:[Lgnu/kawa/util/HashNode;
    .restart local v0       #i:I
    :catch_0
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    const-string v9, "table"

    const/4 v10, -0x2

    invoke-direct {v8, v7, v9, v10, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .line 81
    .end local v0           #i:I
    .restart local v1       #i:I
    .restart local v2       #length:I
    .restart local v6       #table:[Lgnu/kawa/util/HashNode;
    :cond_1
    return-object v5
.end method

.method public toNodeList()Lgnu/lists/LList;
    .locals 10

    .prologue
    .line 69
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 71
    .local v4, result:Lgnu/lists/LList;
    iget-object v5, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    :try_start_0
    check-cast v5, [Lgnu/kawa/util/HashNode;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .local v5, table:[Lgnu/kawa/util/HashNode;
    array-length v2, v5

    .line 71
    .local v2, length:I
    const/4 v6, 0x1

    sub-int v1, v2, v6

    .local v1, i:I
    move-object v6, v4

    .end local v4           #result:Lgnu/lists/LList;
    :goto_0
    if-ltz v1, :cond_1

    .line 16
    aget-object v3, v5, v1

    .line 71
    .local v3, node:Lgnu/kawa/util/HashNode;
    :goto_1
    if-eqz v3, :cond_0

    .line 72
    invoke-static {v3, v6}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    .local v4, result:Lgnu/lists/Pair;
    invoke-virtual {p0, v3}, Lkawa/lib/kawa/hashtable$HashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v3

    move-object v6, v4

    goto :goto_1

    .line 71
    .end local v4           #result:Lgnu/lists/Pair;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 73
    .end local v3           #node:Lgnu/kawa/util/HashNode;
    :cond_1
    move-object v0, v6

    check-cast v0, Lgnu/lists/LList;

    move-object p0, v0

    .end local p0
    return-object p0

    .line 71
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v5           #table:[Lgnu/kawa/util/HashNode;
    .local v4, result:Lgnu/lists/LList;
    .restart local p0
    :catch_0
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "table"

    const/4 v9, -0x2

    invoke-direct {v7, v6, v8, v9, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7
.end method

.method public walk(Lgnu/mapping/Procedure;)V
    .locals 8
    .parameter "proc"

    .prologue
    .line 44
    iget-object v3, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    :try_start_0
    check-cast v3, [Lgnu/kawa/util/HashNode;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .local v3, table:[Lgnu/kawa/util/HashNode;
    array-length v1, v3

    .line 45
    .local v1, length:I
    const/4 v4, 0x1

    sub-int v0, v1, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 16
    aget-object v2, v3, v0

    .line 45
    .local v2, node:Lgnu/kawa/util/HashNode;
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lgnu/kawa/util/HashNode;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lkawa/lib/kawa/hashtable$HashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #node:Lgnu/kawa/util/HashNode;
    .end local v3           #table:[Lgnu/kawa/util/HashNode;
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "table"

    const/4 v7, -0x2

    invoke-direct {v5, v4, v6, v7, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .restart local v0       #i:I
    .restart local v1       #length:I
    .restart local v3       #table:[Lgnu/kawa/util/HashNode;
    :cond_1
    return-void
.end method
