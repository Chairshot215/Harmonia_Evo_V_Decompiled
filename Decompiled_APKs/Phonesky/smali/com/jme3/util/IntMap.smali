.class public final Lcom/jme3/util/IntMap;
.super Ljava/lang/Object;
.source "IntMap.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/util/IntMap$Entry;,
        Lcom/jme3/util/IntMap$IntMapIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/jme3/util/IntMap$Entry",
        "<TT;>;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private capacity:I

.field private final loadFactor:F

.field private mask:I

.field private size:I

.field private table:[Lcom/jme3/util/IntMap$Entry;

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    .local p0, this:Lcom/jme3/util/IntMap;,"Lcom/jme3/util/IntMap<TT;>;"
    const/16 v0, 0x10

    const/high16 v1, 0x3f40

    invoke-direct {p0, v0, v1}, Lcom/jme3/util/IntMap;-><init>(IF)V

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    .line 57
    .local p0, this:Lcom/jme3/util/IntMap;,"Lcom/jme3/util/IntMap<TT;>;"
    const/high16 v0, 0x3f40

    invoke-direct {p0, p1, v0}, Lcom/jme3/util/IntMap;-><init>(IF)V

    .line 58
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2
    .parameter "initialCapacity"
    .parameter "loadFactor"

    .prologue
    .line 60
    .local p0, this:Lcom/jme3/util/IntMap;,"Lcom/jme3/util/IntMap<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/high16 v0, 0x4000

    if-le p1, v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "initialCapacity is too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    if-gez p1, :cond_1

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "initialCapacity must be greater than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "initialCapacity must be greater than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/jme3/util/IntMap;->capacity:I

    .line 71
    :goto_0
    iget v0, p0, Lcom/jme3/util/IntMap;->capacity:I

    if-ge v0, p1, :cond_3

    .line 72
    iget v0, p0, Lcom/jme3/util/IntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jme3/util/IntMap;->capacity:I

    goto :goto_0

    .line 74
    :cond_3
    iput p2, p0, Lcom/jme3/util/IntMap;->loadFactor:F

    .line 75
    iget v0, p0, Lcom/jme3/util/IntMap;->capacity:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/jme3/util/IntMap;->threshold:I

    .line 76
    iget v0, p0, Lcom/jme3/util/IntMap;->capacity:I

    new-array v0, v0, [Lcom/jme3/util/IntMap$Entry;

    iput-object v0, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    .line 77
    iget v0, p0, Lcom/jme3/util/IntMap;->capacity:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jme3/util/IntMap;->mask:I

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/jme3/util/IntMap;)[Lcom/jme3/util/IntMap$Entry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jme3/util/IntMap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/jme3/util/IntMap;->size:I

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 193
    .local p0, this:Lcom/jme3/util/IntMap;,"Lcom/jme3/util/IntMap<TT;>;"
    iget-object v1, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    .line 194
    .local v1, table:[Lcom/jme3/util/IntMap$Entry;
    array-length v0, v1

    .local v0, index:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 195
    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_0

    .line 197
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/jme3/util/IntMap;->size:I

    .line 198
    return-void
.end method

.method public clone()Lcom/jme3/util/IntMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jme3/util/IntMap",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, this:Lcom/jme3/util/IntMap;,"Lcom/jme3/util/IntMap<TT;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/IntMap;

    .line 84
    .local v0, clone:Lcom/jme3/util/IntMap;,"Lcom/jme3/util/IntMap<TT;>;"
    iget-object v3, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    array-length v3, v3

    new-array v2, v3, [Lcom/jme3/util/IntMap$Entry;

    .line 85
    .local v2, newTable:[Lcom/jme3/util/IntMap$Entry;
    iget-object v3, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 86
    iget-object v3, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/jme3/util/IntMap$Entry;->clone()Lcom/jme3/util/IntMap$Entry;

    move-result-object v3

    aput-object v3, v2, v1

    .line 85
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 89
    :cond_1
    iput-object v2, v0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0           #clone:Lcom/jme3/util/IntMap;,"Lcom/jme3/util/IntMap<TT;>;"
    .end local v1           #i:I
    .end local v2           #newTable:[Lcom/jme3/util/IntMap$Entry;
    :goto_1
    return-object v0

    .line 91
    :catch_0
    move-exception v3

    .line 93
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Lcom/jme3/util/IntMap;,"Lcom/jme3/util/IntMap<TT;>;"
    invoke-virtual {p0}, Lcom/jme3/util/IntMap;->clone()Lcom/jme3/util/IntMap;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(I)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 109
    .local p0, this:Lcom/jme3/util/IntMap;,"Lcom/jme3/util/IntMap<TT;>;"
    iget v2, p0, Lcom/jme3/util/IntMap;->mask:I

    and-int v1, p1, v2

    .line 110
    .local v1, index:I
    iget-object v2, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    aget-object v0, v2, v1

    .local v0, e:Lcom/jme3/util/IntMap$Entry;
    :goto_0
    if-eqz v0, :cond_1

    .line 111
    iget v2, v0, Lcom/jme3/util/IntMap$Entry;->key:I

    if-ne v2, p1, :cond_0

    .line 112
    const/4 v2, 0x1

    .line 115
    :goto_1
    return v2

    .line 110
    :cond_0
    iget-object v0, v0, Lcom/jme3/util/IntMap$Entry;->next:Lcom/jme3/util/IntMap$Entry;

    goto :goto_0

    .line 115
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, this:Lcom/jme3/util/IntMap;,"Lcom/jme3/util/IntMap<TT;>;"
    iget v2, p0, Lcom/jme3/util/IntMap;->mask:I

    and-int v1, p1, v2

    .line 120
    .local v1, index:I
    iget-object v2, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    aget-object v0, v2, v1

    .local v0, e:Lcom/jme3/util/IntMap$Entry;
    :goto_0
    if-eqz v0, :cond_1

    .line 121
    iget v2, v0, Lcom/jme3/util/IntMap$Entry;->key:I

    if-ne v2, p1, :cond_0

    .line 122
    iget-object v2, v0, Lcom/jme3/util/IntMap$Entry;->value:Ljava/lang/Object;

    .line 125
    :goto_1
    return-object v2

    .line 120
    :cond_0
    iget-object v0, v0, Lcom/jme3/util/IntMap$Entry;->next:Lcom/jme3/util/IntMap$Entry;

    goto :goto_0

    .line 125
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/jme3/util/IntMap$Entry",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, this:Lcom/jme3/util/IntMap;,"Lcom/jme3/util/IntMap<TT;>;"
    new-instance v0, Lcom/jme3/util/IntMap$IntMapIterator;

    invoke-direct {v0, p0}, Lcom/jme3/util/IntMap$IntMapIterator;-><init>(Lcom/jme3/util/IntMap;)V

    .line 202
    .local v0, it:Lcom/jme3/util/IntMap$IntMapIterator;,"Lcom/jme3/util/IntMap<TT;>.IntMapIterator;"
    invoke-virtual {v0}, Lcom/jme3/util/IntMap$IntMapIterator;->beginUse()V

    .line 203
    return-object v0
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/jme3/util/IntMap;,"Lcom/jme3/util/IntMap<TT;>;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    const/4 v7, 0x0

    .line 129
    iget v9, p0, Lcom/jme3/util/IntMap;->mask:I

    and-int v2, p1, v9

    .line 131
    .local v2, index:I
    iget-object v9, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    aget-object v1, v9, v2

    .local v1, e:Lcom/jme3/util/IntMap$Entry;
    :goto_0
    if-eqz v1, :cond_2

    .line 132
    iget v9, v1, Lcom/jme3/util/IntMap$Entry;->key:I

    if-eq v9, p1, :cond_0

    .line 131
    iget-object v1, v1, Lcom/jme3/util/IntMap$Entry;->next:Lcom/jme3/util/IntMap$Entry;

    goto :goto_0

    .line 135
    :cond_0
    iget-object v7, v1, Lcom/jme3/util/IntMap$Entry;->value:Ljava/lang/Object;

    .line 136
    .local v7, oldValue:Ljava/lang/Object;
    iput-object p2, v1, Lcom/jme3/util/IntMap$Entry;->value:Ljava/lang/Object;

    .line 164
    .end local v7           #oldValue:Ljava/lang/Object;
    :cond_1
    :goto_1
    return-object v7

    .line 139
    :cond_2
    iget-object v9, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    new-instance v10, Lcom/jme3/util/IntMap$Entry;

    iget-object v11, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    aget-object v11, v11, v2

    invoke-direct {v10, p1, p2, v11}, Lcom/jme3/util/IntMap$Entry;-><init>(ILjava/lang/Object;Lcom/jme3/util/IntMap$Entry;)V

    aput-object v10, v9, v2

    .line 140
    iget v9, p0, Lcom/jme3/util/IntMap;->size:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/jme3/util/IntMap;->size:I

    iget v10, p0, Lcom/jme3/util/IntMap;->threshold:I

    if-lt v9, v10, :cond_1

    .line 142
    iget v9, p0, Lcom/jme3/util/IntMap;->capacity:I

    mul-int/lit8 v4, v9, 0x2

    .line 143
    .local v4, newCapacity:I
    new-array v5, v4, [Lcom/jme3/util/IntMap$Entry;

    .line 144
    .local v5, newTable:[Lcom/jme3/util/IntMap$Entry;
    iget-object v8, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    .line 145
    .local v8, src:[Lcom/jme3/util/IntMap$Entry;
    add-int/lit8 v0, v4, -0x1

    .line 146
    .local v0, bucketmask:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    array-length v9, v8

    if-ge v3, v9, :cond_5

    .line 147
    aget-object v1, v8, v3

    .line 148
    if-eqz v1, :cond_4

    .line 149
    aput-object v7, v8, v3

    .line 151
    :cond_3
    iget-object v6, v1, Lcom/jme3/util/IntMap$Entry;->next:Lcom/jme3/util/IntMap$Entry;

    .line 152
    .local v6, next:Lcom/jme3/util/IntMap$Entry;
    iget v9, v1, Lcom/jme3/util/IntMap$Entry;->key:I

    and-int v2, v9, v0

    .line 153
    aget-object v9, v5, v2

    iput-object v9, v1, Lcom/jme3/util/IntMap$Entry;->next:Lcom/jme3/util/IntMap$Entry;

    .line 154
    aput-object v1, v5, v2

    .line 155
    move-object v1, v6

    .line 156
    if-nez v1, :cond_3

    .line 146
    .end local v6           #next:Lcom/jme3/util/IntMap$Entry;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 159
    :cond_5
    iput-object v5, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    .line 160
    iput v4, p0, Lcom/jme3/util/IntMap;->capacity:I

    .line 161
    int-to-float v9, v4

    iget v10, p0, Lcom/jme3/util/IntMap;->loadFactor:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/jme3/util/IntMap;->threshold:I

    .line 162
    iget v9, p0, Lcom/jme3/util/IntMap;->capacity:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/jme3/util/IntMap;->mask:I

    goto :goto_1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, this:Lcom/jme3/util/IntMap;,"Lcom/jme3/util/IntMap<TT;>;"
    iget v4, p0, Lcom/jme3/util/IntMap;->mask:I

    and-int v1, p1, v4

    .line 169
    .local v1, index:I
    iget-object v4, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    aget-object v3, v4, v1

    .line 170
    .local v3, prev:Lcom/jme3/util/IntMap$Entry;
    move-object v0, v3

    .line 171
    .local v0, e:Lcom/jme3/util/IntMap$Entry;
    :goto_0
    if-eqz v0, :cond_2

    .line 172
    iget-object v2, v0, Lcom/jme3/util/IntMap$Entry;->next:Lcom/jme3/util/IntMap$Entry;

    .line 173
    .local v2, next:Lcom/jme3/util/IntMap$Entry;
    iget v4, v0, Lcom/jme3/util/IntMap$Entry;->key:I

    if-ne v4, p1, :cond_1

    .line 174
    iget v4, p0, Lcom/jme3/util/IntMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/jme3/util/IntMap;->size:I

    .line 175
    if-ne v3, v0, :cond_0

    .line 176
    iget-object v4, p0, Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;

    aput-object v2, v4, v1

    .line 180
    :goto_1
    iget-object v4, v0, Lcom/jme3/util/IntMap$Entry;->value:Ljava/lang/Object;

    .line 185
    .end local v2           #next:Lcom/jme3/util/IntMap$Entry;
    :goto_2
    return-object v4

    .line 178
    .restart local v2       #next:Lcom/jme3/util/IntMap$Entry;
    :cond_0
    iput-object v2, v3, Lcom/jme3/util/IntMap$Entry;->next:Lcom/jme3/util/IntMap$Entry;

    goto :goto_1

    .line 182
    :cond_1
    move-object v3, v0

    .line 183
    move-object v0, v2

    .line 184
    goto :goto_0

    .line 185
    .end local v2           #next:Lcom/jme3/util/IntMap$Entry;
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 189
    .local p0, this:Lcom/jme3/util/IntMap;,"Lcom/jme3/util/IntMap<TT;>;"
    iget v0, p0, Lcom/jme3/util/IntMap;->size:I

    return v0
.end method
