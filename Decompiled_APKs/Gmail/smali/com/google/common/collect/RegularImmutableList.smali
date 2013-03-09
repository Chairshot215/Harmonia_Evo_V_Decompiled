.class Lcom/google/common/collect/RegularImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "RegularImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient array:[Ljava/lang/Object;

.field private final transient offset:I

.field private final transient size:I


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .parameter "array"

    .prologue
    .line 45
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    .line 46
    return-void
.end method

.method constructor <init>([Ljava/lang/Object;II)V
    .locals 0
    .parameter "array"
    .parameter "offset"
    .parameter "size"

    .prologue
    .line 38
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 39
    iput p2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    .line 40
    iput p3, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    .line 41
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/RegularImmutableList;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/RegularImmutableList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter "target"

    .prologue
    .line 62
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .parameter "object"

    .prologue
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 137
    if-ne p1, p0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v7

    .line 140
    :cond_1
    instance-of v9, p1, Ljava/util/List;

    if-nez v9, :cond_2

    move v7, v8

    .line 141
    goto :goto_0

    :cond_2
    move-object v6, p1

    .line 144
    check-cast v6, Ljava/util/List;

    .line 145
    .local v6, that:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableList;->size()I

    move-result v9

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-eq v9, v10, :cond_3

    move v7, v8

    .line 146
    goto :goto_0

    .line 149
    :cond_3
    iget v3, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    .line 150
    .local v3, index:I
    instance-of v9, p1, Lcom/google/common/collect/RegularImmutableList;

    if-eqz v9, :cond_5

    move-object v5, p1

    .line 151
    check-cast v5, Lcom/google/common/collect/RegularImmutableList;

    .line 152
    .local v5, other:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<*>;"
    iget v1, v5, Lcom/google/common/collect/RegularImmutableList;->offset:I

    .local v1, i:I
    :goto_1
    iget v9, v5, Lcom/google/common/collect/RegularImmutableList;->offset:I

    iget v10, v5, Lcom/google/common/collect/RegularImmutableList;->size:I

    add-int/2addr v9, v10

    if-ge v1, v9, :cond_0

    .line 153
    iget-object v9, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    aget-object v9, v9, v3

    iget-object v10, v5, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    move v7, v8

    .line 154
    goto :goto_0

    .line 152
    :cond_4
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_1

    .line 158
    .end local v1           #i:I
    .end local v5           #other:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<*>;"
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, element:Ljava/lang/Object;
    iget-object v9, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aget-object v9, v9, v3

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    move v7, v8

    .line 160
    goto :goto_0

    :cond_6
    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_2
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 92
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 170
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    const/4 v0, 0x1

    .line 171
    .local v0, hashCode:I
    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    iget v3, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 172
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_0
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .parameter "target"

    .prologue
    .line 96
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    if-eqz p1, :cond_1

    .line 97
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    sub-int v1, v0, v1

    .line 103
    .end local v0           #i:I
    :goto_1
    return v1

    .line 97
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v0           #i:I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 54
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method isPartialView()Z
    .locals 2

    .prologue
    .line 58
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/Iterators;->forArray([Ljava/lang/Object;II)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 31
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .parameter "target"

    .prologue
    .line 107
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    if-eqz p1, :cond_1

    .line 108
    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    if-lt v0, v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    sub-int v1, v0, v1

    .line 114
    .end local v0           #i:I
    :goto_1
    return v1

    .line 108
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 114
    .end local v0           #i:I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;
    .locals 2
    .parameter "start"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/UnmodifiableListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableList$1;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-direct {v0, p0, v1, p1}, Lcom/google/common/collect/RegularImmutableList$1;-><init>(Lcom/google/common/collect/RegularImmutableList;II)V

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    return v0
.end method

.method public subList(II)Lcom/google/common/collect/ImmutableList;
    .locals 4
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 119
    if-ne p1, p2, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableList;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    goto :goto_0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .prologue
    .line 72
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 73
    .local v0, newArray:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    .local p1, other:[Ljava/lang/Object;,"[TT;"
    array-length v0, p1

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    if-ge v0, v1, :cond_1

    .line 79
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {p1, v0}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 83
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    return-object p1

    .line 80
    :cond_1
    array-length v0, p1

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    if-le v0, v1, :cond_0

    .line 81
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 178
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableList;->size()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/collect/Collections2;->newStringBuilderForCollection(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v4, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 180
    .local v1, sb:Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    add-int/lit8 v0, v2, 0x1

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    iget v3, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    .line 181
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
