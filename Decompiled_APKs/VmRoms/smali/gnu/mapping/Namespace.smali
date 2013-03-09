.class public Lgnu/mapping/Namespace;
.super Ljava/lang/Object;
.source "Namespace.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Lgnu/mapping/HasNamedParts;


# static fields
.field public static final EmptyNamespace:Lgnu/mapping/Namespace;

.field protected static final nsTable:Ljava/util/Hashtable;


# instance fields
.field log2Size:I

.field private mask:I

.field name:Ljava/lang/String;

.field num_bindings:I

.field protected prefix:Ljava/lang/String;

.field protected table:[Lgnu/mapping/SymbolRef;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lgnu/mapping/Namespace;->nsTable:Ljava/util/Hashtable;

    .line 26
    const-string v0, ""

    invoke-static {v0}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    sput-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lgnu/mapping/Namespace;-><init>(I)V

    .line 43
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2
    .parameter "capacity"

    .prologue
    const/4 v1, 0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    .line 47
    const/4 v0, 0x4

    iput v0, p0, Lgnu/mapping/Namespace;->log2Size:I

    .line 48
    :goto_0
    iget v0, p0, Lgnu/mapping/Namespace;->log2Size:I

    shl-int v0, v1, v0

    if-le p1, v0, :cond_0

    .line 49
    iget v0, p0, Lgnu/mapping/Namespace;->log2Size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/mapping/Namespace;->log2Size:I

    goto :goto_0

    .line 50
    :cond_0
    iget v0, p0, Lgnu/mapping/Namespace;->log2Size:I

    shl-int p1, v1, v0

    .line 51
    new-array v0, p1, [Lgnu/mapping/SymbolRef;

    iput-object v0, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    .line 52
    sub-int v0, p1, v1

    iput v0, p0, Lgnu/mapping/Namespace;->mask:I

    .line 53
    return-void
.end method

.method public static create()Lgnu/mapping/Namespace;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lgnu/mapping/Namespace;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lgnu/mapping/Namespace;-><init>(I)V

    return-object v0
.end method

.method public static create(I)Lgnu/mapping/Namespace;
    .locals 1
    .parameter "capacity"

    .prologue
    .line 57
    new-instance v0, Lgnu/mapping/Namespace;

    invoke-direct {v0, p0}, Lgnu/mapping/Namespace;-><init>(I)V

    return-object v0
.end method

.method public static getDefault()Lgnu/mapping/Namespace;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    return-object v0
.end method

.method public static getDefaultSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 1
    .parameter "name"

    .prologue
    .line 72
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v0, p0}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public static makeUnknownNamespace(Ljava/lang/String;)Lgnu/mapping/Namespace;
    .locals 3
    .parameter "prefix"

    .prologue
    .line 126
    if-eqz p0, :cond_0

    const-string v1, ""

    if-ne p0, v1, :cond_1

    .line 127
    :cond_0
    const-string v0, ""

    .line 130
    .local v0, uri:Ljava/lang/String;
    :goto_0
    invoke-static {v0, p0}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v1

    return-object v1

    .line 129
    .end local v0           #uri:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://kawa.gnu.org/unknown-namespace/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #uri:Ljava/lang/String;
    goto :goto_0
.end method

.method public static valueOf()Lgnu/mapping/Namespace;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;
    .locals 4
    .parameter "name"

    .prologue
    .line 82
    if-nez p0, :cond_0

    .line 83
    const-string p0, ""

    .line 84
    :cond_0
    sget-object v2, Lgnu/mapping/Namespace;->nsTable:Ljava/util/Hashtable;

    monitor-enter v2

    .line 86
    :try_start_0
    sget-object v3, Lgnu/mapping/Namespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {v3, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Namespace;

    .line 87
    .local v0, ns:Lgnu/mapping/Namespace;
    if-eqz v0, :cond_1

    .line 88
    monitor-exit v2

    move-object v1, v0

    .line 92
    .end local v0           #ns:Lgnu/mapping/Namespace;
    .local v1, ns:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 89
    .end local v1           #ns:Ljava/lang/Object;
    .restart local v0       #ns:Lgnu/mapping/Namespace;
    :cond_1
    new-instance v0, Lgnu/mapping/Namespace;

    .end local v0           #ns:Lgnu/mapping/Namespace;
    invoke-direct {v0}, Lgnu/mapping/Namespace;-><init>()V

    .line 90
    .restart local v0       #ns:Lgnu/mapping/Namespace;
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgnu/mapping/Namespace;->setName(Ljava/lang/String;)V

    .line 91
    sget-object v3, Lgnu/mapping/Namespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {v3, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    monitor-exit v2

    move-object v1, v0

    .restart local v1       #ns:Ljava/lang/Object;
    goto :goto_0

    .line 93
    .end local v0           #ns:Lgnu/mapping/Namespace;
    .end local v1           #ns:Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static valueOf(Ljava/lang/String;Lgnu/mapping/SimpleSymbol;)Lgnu/mapping/Namespace;
    .locals 1
    .parameter "uri"
    .parameter "prefix"

    .prologue
    .line 116
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lgnu/mapping/SimpleSymbol;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;
    .locals 5
    .parameter "uri"
    .parameter "prefix"

    .prologue
    .line 98
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 99
    :cond_0
    invoke-static {p0}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v3

    .line 110
    :goto_0
    return-object v3

    .line 100
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, xname:Ljava/lang/String;
    sget-object v3, Lgnu/mapping/Namespace;->nsTable:Ljava/util/Hashtable;

    monitor-enter v3

    .line 103
    :try_start_0
    sget-object v4, Lgnu/mapping/Namespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 104
    .local v1, old:Ljava/lang/Object;
    instance-of v4, v1, Lgnu/mapping/Namespace;

    if-eqz v4, :cond_2

    .line 105
    check-cast v1, Lgnu/mapping/Namespace;

    .end local v1           #old:Ljava/lang/Object;
    monitor-exit v3

    move-object v3, v1

    goto :goto_0

    .line 106
    .restart local v1       #old:Ljava/lang/Object;
    :cond_2
    new-instance v0, Lgnu/mapping/Namespace;

    invoke-direct {v0}, Lgnu/mapping/Namespace;-><init>()V

    .line 107
    .local v0, ns:Lgnu/mapping/Namespace;
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgnu/mapping/Namespace;->setName(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    .line 109
    sget-object v4, Lgnu/mapping/Namespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    monitor-exit v3

    move-object v3, v0

    goto :goto_0

    .line 111
    .end local v0           #ns:Lgnu/mapping/Namespace;
    .end local v1           #old:Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method


# virtual methods
.method public add(Lgnu/mapping/Symbol;I)Lgnu/mapping/Symbol;
    .locals 4
    .parameter "sym"
    .parameter "hash"

    .prologue
    .line 190
    iget v2, p0, Lgnu/mapping/Namespace;->mask:I

    and-int v0, p2, v2

    .line 191
    .local v0, index:I
    new-instance v1, Lgnu/mapping/SymbolRef;

    invoke-direct {v1, p1, p0}, Lgnu/mapping/SymbolRef;-><init>(Lgnu/mapping/Symbol;Lgnu/mapping/Namespace;)V

    .line 192
    .local v1, ref:Lgnu/mapping/SymbolRef;
    iput-object p0, p1, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 193
    iget-object v2, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    aget-object v2, v2, v0

    iput-object v2, v1, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    .line 194
    iget-object v2, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    aput-object v1, v2, v0

    .line 195
    iget v2, p0, Lgnu/mapping/Namespace;->num_bindings:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgnu/mapping/Namespace;->num_bindings:I

    .line 196
    iget v2, p0, Lgnu/mapping/Namespace;->num_bindings:I

    iget-object v3, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 197
    invoke-virtual {p0}, Lgnu/mapping/Namespace;->rehash()V

    .line 198
    :cond_0
    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    .line 135
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-virtual {p0, p1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 2
    .parameter "key"

    .prologue
    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public isConstant(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public lookup(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 2
    .parameter "key"

    .prologue
    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;
    .locals 2
    .parameter "key"
    .parameter "hash"
    .parameter "create"

    .prologue
    .line 203
    monitor-enter p0

    .line 205
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lgnu/mapping/Namespace;->lookupInternal(Ljava/lang/String;I)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 206
    .local v0, sym:Lgnu/mapping/Symbol;
    if-eqz v0, :cond_0

    .line 207
    monitor-exit p0

    move-object v1, v0

    .line 228
    :goto_0
    return-object v1

    .line 219
    :cond_0
    if-eqz p3, :cond_2

    .line 221
    sget-object v1, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    if-ne p0, v1, :cond_1

    .line 222
    new-instance v0, Lgnu/mapping/SimpleSymbol;

    .end local v0           #sym:Lgnu/mapping/Symbol;
    invoke-direct {v0, p1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    .line 225
    .restart local v0       #sym:Lgnu/mapping/Symbol;
    :goto_1
    invoke-virtual {p0, v0, p2}, Lgnu/mapping/Namespace;->add(Lgnu/mapping/Symbol;I)Lgnu/mapping/Symbol;

    move-result-object v1

    monitor-exit p0

    goto :goto_0

    .line 229
    .end local v0           #sym:Lgnu/mapping/Symbol;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 224
    .restart local v0       #sym:Lgnu/mapping/Symbol;
    :cond_1
    :try_start_1
    new-instance v0, Lgnu/mapping/Symbol;

    .end local v0           #sym:Lgnu/mapping/Symbol;
    invoke-direct {v0, p0, p1}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    .restart local v0       #sym:Lgnu/mapping/Symbol;
    goto :goto_1

    .line 228
    :cond_2
    const/4 v1, 0x0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected final lookupInternal(Ljava/lang/String;I)Lgnu/mapping/Symbol;
    .locals 7
    .parameter "key"
    .parameter "hash"

    .prologue
    .line 162
    iget v5, p0, Lgnu/mapping/Namespace;->mask:I

    and-int v0, p2, v5

    .line 163
    .local v0, index:I
    const/4 v2, 0x0

    .line 164
    .local v2, prev:Lgnu/mapping/SymbolRef;
    iget-object v5, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    aget-object v3, v5, v0

    .local v3, ref:Lgnu/mapping/SymbolRef;
    :goto_0
    if-eqz v3, :cond_3

    .line 166
    iget-object v1, v3, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    .line 167
    .local v1, next:Lgnu/mapping/SymbolRef;
    invoke-virtual {v3}, Lgnu/mapping/SymbolRef;->getSymbol()Lgnu/mapping/Symbol;

    move-result-object v4

    .line 168
    .local v4, sym:Lgnu/mapping/Symbol;
    if-nez v4, :cond_1

    .line 171
    if-nez v2, :cond_0

    .line 172
    iget-object v5, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    aput-object v1, v5, v0

    .line 175
    :goto_1
    iget v5, p0, Lgnu/mapping/Namespace;->num_bindings:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iput v5, p0, Lgnu/mapping/Namespace;->num_bindings:I

    .line 183
    :goto_2
    move-object v3, v1

    .line 184
    goto :goto_0

    .line 174
    :cond_0
    iput-object v1, v2, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    goto :goto_1

    .line 179
    :cond_1
    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v4

    .line 185
    .end local v1           #next:Lgnu/mapping/SymbolRef;
    .end local v4           #sym:Lgnu/mapping/Symbol;
    :goto_3
    return-object v5

    .line 181
    .restart local v1       #next:Lgnu/mapping/SymbolRef;
    .restart local v4       #sym:Lgnu/mapping/Symbol;
    :cond_2
    move-object v2, v3

    goto :goto_2

    .line 185
    .end local v1           #next:Lgnu/mapping/SymbolRef;
    .end local v4           #sym:Lgnu/mapping/Symbol;
    :cond_3
    const/4 v5, 0x0

    goto :goto_3
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 311
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    .line 312
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 320
    iget-object v3, p0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v2, v0

    .line 322
    .local v2, xname:Ljava/lang/String;
    :goto_0
    sget-object v3, Lgnu/mapping/Namespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/Namespace;

    .line 323
    .local v1, ns:Lgnu/mapping/Namespace;
    if-eqz v1, :cond_2

    move-object v3, v1

    .line 327
    .end local v1           #ns:Lgnu/mapping/Namespace;
    .end local v2           #xname:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 320
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 325
    .restart local v1       #ns:Lgnu/mapping/Namespace;
    .restart local v2       #xname:Ljava/lang/String;
    :cond_2
    sget-object v3, Lgnu/mapping/Namespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1           #ns:Lgnu/mapping/Namespace;
    .end local v2           #xname:Ljava/lang/String;
    :cond_3
    move-object v3, p0

    .line 327
    goto :goto_1
.end method

.method protected rehash()V
    .locals 14

    .prologue
    .line 270
    iget-object v13, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    array-length v9, v13

    .line 271
    .local v9, oldCapacity:I
    mul-int/lit8 v5, v9, 0x2

    .line 272
    .local v5, newCapacity:I
    const/4 v13, 0x1

    sub-int v6, v5, v13

    .line 273
    .local v6, newMask:I
    const/4 v0, 0x0

    .line 274
    .local v0, countInserted:I
    iget-object v10, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    .line 275
    .local v10, oldTable:[Lgnu/mapping/SymbolRef;
    new-array v7, v5, [Lgnu/mapping/SymbolRef;

    .line 277
    .local v7, newTable:[Lgnu/mapping/SymbolRef;
    move v2, v9

    .local v2, i:I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 279
    aget-object v11, v10, v2

    .local v11, ref:Lgnu/mapping/SymbolRef;
    :goto_0
    if-eqz v11, :cond_0

    .line 281
    iget-object v8, v11, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    .line 282
    .local v8, next:Lgnu/mapping/SymbolRef;
    invoke-virtual {v11}, Lgnu/mapping/SymbolRef;->getSymbol()Lgnu/mapping/Symbol;

    move-result-object v12

    .line 283
    .local v12, sym:Lgnu/mapping/Symbol;
    if-eqz v12, :cond_1

    .line 285
    invoke-virtual {v12}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, key:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 287
    .local v1, hash:I
    and-int v3, v1, v6

    .line 288
    .local v3, index:I
    add-int/lit8 v0, v0, 0x1

    .line 289
    aget-object v13, v7, v3

    iput-object v13, v11, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    .line 290
    aput-object v11, v7, v3

    .line 292
    .end local v1           #hash:I
    .end local v3           #index:I
    .end local v4           #key:Ljava/lang/String;
    :cond_1
    move-object v11, v8

    .line 293
    goto :goto_0

    .line 296
    .end local v8           #next:Lgnu/mapping/SymbolRef;
    .end local v11           #ref:Lgnu/mapping/SymbolRef;
    .end local v12           #sym:Lgnu/mapping/Symbol;
    :cond_2
    iput-object v7, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    .line 297
    iget v13, p0, Lgnu/mapping/Namespace;->log2Size:I

    add-int/lit8 v13, v13, 0x1

    iput v13, p0, Lgnu/mapping/Namespace;->log2Size:I

    .line 298
    iput v6, p0, Lgnu/mapping/Namespace;->mask:I

    .line 299
    iput v0, p0, Lgnu/mapping/Namespace;->num_bindings:I

    .line 300
    return-void
.end method

.method public remove(Lgnu/mapping/Symbol;)Z
    .locals 9
    .parameter "symbol"

    .prologue
    const/4 v8, 0x1

    .line 234
    monitor-enter p0

    .line 236
    :try_start_0
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 238
    .local v0, hash:I
    iget v7, p0, Lgnu/mapping/Namespace;->mask:I

    and-int v1, v0, v7

    .line 239
    .local v1, index:I
    const/4 v4, 0x0

    .line 240
    .local v4, prev:Lgnu/mapping/SymbolRef;
    iget-object v7, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    aget-object v5, v7, v1

    .line 241
    .local v5, ref:Lgnu/mapping/SymbolRef;
    :goto_0
    if-eqz v5, :cond_4

    .line 243
    iget-object v3, v5, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    .line 244
    .local v3, next:Lgnu/mapping/SymbolRef;
    invoke-virtual {v5}, Lgnu/mapping/SymbolRef;->getSymbol()Lgnu/mapping/Symbol;

    move-result-object v6

    .line 245
    .local v6, refsym:Lgnu/mapping/Symbol;
    if-eqz v6, :cond_0

    if-ne v6, p1, :cond_2

    .line 247
    :cond_0
    if-nez v4, :cond_1

    .line 248
    iget-object v7, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    aput-object v3, v7, v1

    .line 251
    :goto_1
    iget v7, p0, Lgnu/mapping/Namespace;->num_bindings:I

    sub-int/2addr v7, v8

    iput v7, p0, Lgnu/mapping/Namespace;->num_bindings:I

    .line 252
    if-eqz v6, :cond_3

    .line 253
    monitor-exit p0

    move v7, v8

    .line 259
    .end local v3           #next:Lgnu/mapping/SymbolRef;
    .end local v6           #refsym:Lgnu/mapping/Symbol;
    :goto_2
    return v7

    .line 250
    .restart local v3       #next:Lgnu/mapping/SymbolRef;
    .restart local v6       #refsym:Lgnu/mapping/Symbol;
    :cond_1
    iput-object v3, v4, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    goto :goto_1

    .line 260
    .end local v0           #hash:I
    .end local v1           #index:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #next:Lgnu/mapping/SymbolRef;
    .end local v4           #prev:Lgnu/mapping/SymbolRef;
    .end local v5           #ref:Lgnu/mapping/SymbolRef;
    .end local v6           #refsym:Lgnu/mapping/Symbol;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 256
    .restart local v0       #hash:I
    .restart local v1       #index:I
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #next:Lgnu/mapping/SymbolRef;
    .restart local v4       #prev:Lgnu/mapping/SymbolRef;
    .restart local v5       #ref:Lgnu/mapping/SymbolRef;
    .restart local v6       #refsym:Lgnu/mapping/Symbol;
    :cond_2
    move-object v4, v5

    .line 257
    :cond_3
    move-object v5, v3

    .line 258
    goto :goto_0

    .line 259
    .end local v3           #next:Lgnu/mapping/SymbolRef;
    .end local v6           #refsym:Lgnu/mapping/Symbol;
    :cond_4
    const/4 v7, 0x0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 36
    iput-object p1, p0, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#,(namespace \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, sbuf:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 336
    iget-object v1, p0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v2, :cond_0

    .line 338
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    iget-object v1, p0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_0
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p0}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 306
    return-void
.end method
