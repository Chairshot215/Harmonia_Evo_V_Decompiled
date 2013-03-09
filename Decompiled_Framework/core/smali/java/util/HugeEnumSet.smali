.class final Ljava/util/HugeEnumSet;
.super Ljava/util/EnumSet;
.source "HugeEnumSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/HugeEnumSet$1;,
        Ljava/util/HugeEnumSet$HugeEnumSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Ljava/util/EnumSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final BIT_IN_LONG:I = 0x40


# instance fields
.field private bits:[J

.field private final enums:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/EnumSet;-><init>(Ljava/lang/Class;)V

    iput-object p2, p0, Ljava/util/HugeEnumSet;->enums:[Ljava/lang/Enum;

    array-length v0, p2

    add-int/lit8 v0, v0, 0x40

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x40

    new-array v0, v0, [J

    iput-object v0, p0, Ljava/util/HugeEnumSet;->bits:[J

    return-void
.end method

.method static synthetic access$000(Ljava/util/HugeEnumSet;)[J
    .locals 1

    iget-object v0, p0, Ljava/util/HugeEnumSet;->bits:[J

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/HugeEnumSet;)[Ljava/lang/Enum;
    .locals 1

    iget-object v0, p0, Ljava/util/HugeEnumSet;->enums:[Ljava/lang/Enum;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Enum;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v7, p0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {v7, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    div-int/lit8 v1, v6, 0x40

    rem-int/lit8 v0, v6, 0x40

    iget-object v7, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v4, v7, v1

    const-wide/16 v7, 0x1

    shl-long/2addr v7, v0

    or-long v2, v4, v7

    cmp-long v7, v4, v2

    if-eqz v7, :cond_0

    iget-object v7, p0, Ljava/util/HugeEnumSet;->bits:[J

    aput-wide v2, v7, v1

    iget v7, p0, Ljava/util/HugeEnumSet;->size:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/util/HugeEnumSet;->size:I

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Ljava/util/HugeEnumSet;->add(Ljava/lang/Enum;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    if-ne p1, p0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    instance-of v8, p1, Ljava/util/EnumSet;

    if-eqz v8, :cond_4

    move-object v7, p1

    check-cast v7, Ljava/util/EnumSet;

    iget-object v8, v7, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    iget-object v9, p0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-object v1, v7

    check-cast v1, Ljava/util/HugeEnumSet;

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    array-length v8, v8

    if-ge v2, v8, :cond_1

    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v5, v8, v2

    iget-object v8, v1, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v8, v8, v2

    or-long v3, v5, v8

    cmp-long v8, v5, v3

    if-eqz v8, :cond_3

    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    aput-wide v3, v8, v2

    iget v8, p0, Ljava/util/HugeEnumSet;->size:I

    invoke-static {v3, v4}, Ljava/lang/Long;->bitCount(J)I

    move-result v9

    invoke-static {v5, v6}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, p0, Ljava/util/HugeEnumSet;->size:I

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-super {p0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Ljava/util/HugeEnumSet;->bits:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/HugeEnumSet;->size:I

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/HugeEnumSet;->clone()Ljava/util/HugeEnumSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/util/EnumSet;
    .locals 1

    invoke-virtual {p0}, Ljava/util/HugeEnumSet;->clone()Ljava/util/HugeEnumSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/util/HugeEnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HugeEnumSet",
            "<TE;>;"
        }
    .end annotation

    invoke-super {p0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    check-cast v0, Ljava/util/HugeEnumSet;

    iget-object v1, p0, Ljava/util/HugeEnumSet;->bits:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Ljava/util/HugeEnumSet;->bits:[J

    return-object v0
.end method

.method protected complement()V
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    iput v4, p0, Ljava/util/HugeEnumSet;->size:I

    const/4 v2, 0x0

    iget-object v4, p0, Ljava/util/HugeEnumSet;->bits:[J

    array-length v3, v4

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v4, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v4, v4, v2

    xor-long v0, v4, v6

    add-int/lit8 v4, v3, -0x1

    if-ne v2, v4, :cond_0

    iget-object v4, p0, Ljava/util/HugeEnumSet;->enums:[Ljava/lang/Enum;

    array-length v4, v4

    rem-int/lit8 v4, v4, 0x40

    rsub-int/lit8 v4, v4, 0x40

    ushr-long v4, v6, v4

    and-long/2addr v0, v4

    :cond_0
    iget v4, p0, Ljava/util/HugeEnumSet;->size:I

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v4, p0, Ljava/util/HugeEnumSet;->bits:[J

    aput-wide v0, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 8

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    div-int/lit8 v1, v2, 0x40

    rem-int/lit8 v0, v2, 0x40

    iget-object v4, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v4, v4, v1

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v0

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    instance-of v6, p1, Ljava/util/HugeEnumSet;

    if-eqz v6, :cond_3

    move-object v1, p1

    check-cast v1, Ljava/util/HugeEnumSet;

    iget-object v6, v1, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v6}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v6, p0, Ljava/util/HugeEnumSet;->bits:[J

    array-length v6, v6

    if-ge v0, v6, :cond_0

    iget-object v6, v1, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v2, v6, v0

    iget-object v6, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v6, v6, v0

    and-long/2addr v6, v2

    cmp-long v6, v6, v2

    if-eqz v6, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    instance-of v6, p1, Ljava/util/EnumSet;

    if-nez v6, :cond_4

    invoke-super {p0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_4
    move v4, v5

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljava/util/HugeEnumSet;->bits:[J

    check-cast p1, Ljava/util/HugeEnumSet;

    iget-object v1, p1, Ljava/util/HugeEnumSet;->bits:[J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HugeEnumSet$HugeEnumSetIterator;-><init>(Ljava/util/HugeEnumSet;Ljava/util/HugeEnumSet$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 12

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    div-int/lit8 v1, v6, 0x40

    rem-int/lit8 v0, v6, 0x40

    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v4, v8, v1

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v0

    const-wide/16 v10, -0x1

    xor-long/2addr v8, v10

    and-long v2, v4, v8

    cmp-long v8, v4, v2

    if-eqz v8, :cond_0

    iget-object v7, p0, Ljava/util/HugeEnumSet;->bits:[J

    aput-wide v2, v7, v1

    iget v7, p0, Ljava/util/HugeEnumSet;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljava/util/HugeEnumSet;->size:I

    const/4 v7, 0x1

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v8, p1, Ljava/util/EnumSet;

    if-eqz v8, :cond_3

    move-object v7, p1

    check-cast v7, Ljava/util/EnumSet;

    iget-object v8, v7, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v8}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v1, v7

    check-cast v1, Ljava/util/HugeEnumSet;

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    array-length v8, v8

    if-ge v2, v8, :cond_0

    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v5, v8, v2

    iget-object v8, v1, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v8, v8, v2

    const-wide/16 v10, -0x1

    xor-long/2addr v8, v10

    and-long v3, v5, v8

    cmp-long v8, v5, v3

    if-eqz v8, :cond_2

    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    aput-wide v3, v8, v2

    iget v8, p0, Ljava/util/HugeEnumSet;->size:I

    invoke-static {v3, v4}, Ljava/lang/Long;->bitCount(J)I

    move-result v9

    invoke-static {v5, v6}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, p0, Ljava/util/HugeEnumSet;->size:I

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-super {p0, p1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    instance-of v8, p1, Ljava/util/EnumSet;

    if-eqz v8, :cond_4

    move-object v7, p1

    check-cast v7, Ljava/util/EnumSet;

    iget-object v8, v7, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v8}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_2

    iget v8, p0, Ljava/util/HugeEnumSet;->size:I

    if-lez v8, :cond_1

    invoke-virtual {p0}, Ljava/util/HugeEnumSet;->clear()V

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v1, v7

    check-cast v1, Ljava/util/HugeEnumSet;

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    array-length v8, v8

    if-ge v2, v8, :cond_0

    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v5, v8, v2

    iget-object v8, v1, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v8, v8, v2

    and-long v3, v5, v8

    cmp-long v8, v5, v3

    if-eqz v8, :cond_3

    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    aput-wide v3, v8, v2

    iget v8, p0, Ljava/util/HugeEnumSet;->size:I

    invoke-static {v3, v4}, Ljava/lang/Long;->bitCount(J)I

    move-result v9

    invoke-static {v5, v6}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, p0, Ljava/util/HugeEnumSet;->size:I

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-super {p0, p1}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method setRange(Ljava/lang/Enum;Ljava/lang/Enum;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    div-int/lit8 v7, v8, 0x40

    rem-int/lit8 v6, v8, 0x40

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    div-int/lit8 v1, v2, 0x40

    rem-int/lit8 v0, v2, 0x40

    if-ne v7, v1, :cond_1

    const-wide/16 v9, -0x1

    sub-int v11, v0, v6

    add-int/lit8 v11, v11, 0x1

    rsub-int/lit8 v11, v11, 0x40

    ushr-long/2addr v9, v11

    shl-long v4, v9, v6

    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v10, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v9, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v9, v7

    or-long/2addr v10, v4

    aput-wide v10, v9, v7

    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v10, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    :cond_0
    return-void

    :cond_1
    const-wide/16 v9, -0x1

    ushr-long/2addr v9, v6

    shl-long v4, v9, v6

    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v10, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v9, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v9, v7

    or-long/2addr v10, v4

    aput-wide v10, v9, v7

    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v10, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    const-wide/16 v9, -0x1

    add-int/lit8 v11, v0, 0x1

    rsub-int/lit8 v11, v11, 0x40

    ushr-long v4, v9, v11

    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v10, v1

    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v9, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v9, v1

    or-long/2addr v10, v4

    aput-wide v10, v9, v1

    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v10, v1

    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    add-int/lit8 v3, v7, 0x1

    :goto_0
    add-int/lit8 v9, v1, -0x1

    if-gt v3, v9, :cond_0

    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v10, v3

    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v9, p0, Ljava/util/HugeEnumSet;->bits:[J

    const-wide/16 v10, -0x1

    aput-wide v10, v9, v3

    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v10, v3

    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Ljava/util/HugeEnumSet;->size:I

    return v0
.end method
