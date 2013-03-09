.class Ljava/util/ComparableTimSort;
.super Ljava/lang/Object;
.source "ComparableTimSort.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final MIN_GALLOP:I = 0x7

.field private static final MIN_MERGE:I = 0x20


# instance fields
.field private final a:[Ljava/lang/Object;

.field private minGallop:I

.field private final runBase:[I

.field private final runLen:[I

.field private stackSize:I

.field private tmp:[Ljava/lang/Object;


# direct methods
.method private constructor <init>([Ljava/lang/Object;)V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x7

    iput v3, p0, Ljava/util/ComparableTimSort;->minGallop:I

    const/4 v3, 0x0

    iput v3, p0, Ljava/util/ComparableTimSort;->stackSize:I

    iput-object p1, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    array-length v0, p1

    const/16 v3, 0x200

    if-ge v0, v3, :cond_0

    ushr-int/lit8 v3, v0, 0x1

    :goto_0
    new-array v1, v3, [Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    const/16 v3, 0x78

    if-ge v0, v3, :cond_1

    const/4 v2, 0x5

    :goto_1
    new-array v3, v2, [I

    iput-object v3, p0, Ljava/util/ComparableTimSort;->runBase:[I

    new-array v3, v2, [I

    iput-object v3, p0, Ljava/util/ComparableTimSort;->runLen:[I

    return-void

    :cond_0
    const/16 v3, 0x100

    goto :goto_0

    :cond_1
    const/16 v3, 0x606

    if-ge v0, v3, :cond_2

    const/16 v2, 0xa

    goto :goto_1

    :cond_2
    const v3, 0x1d16f

    if-ge v0, v3, :cond_3

    const/16 v2, 0x13

    goto :goto_1

    :cond_3
    const/16 v2, 0x28

    goto :goto_1
.end method

.method private static binarySort([Ljava/lang/Object;III)V
    .locals 7

    if-ne p3, p1, :cond_0

    add-int/lit8 p3, p3, 0x1

    :cond_0
    :goto_0
    if-ge p3, p2, :cond_3

    aget-object v3, p0, p3

    check-cast v3, Ljava/lang/Comparable;

    move v0, p1

    move v4, p3

    :goto_1
    if-ge v0, v4, :cond_2

    add-int v5, v0, v4

    ushr-int/lit8 v1, v5, 0x1

    aget-object v5, p0, v1

    invoke-interface {v3, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    :cond_2
    sub-int v2, p3, v0

    packed-switch v2, :pswitch_data_0

    add-int/lit8 v5, v0, 0x1

    invoke-static {p0, v0, p0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    aput-object v3, p0, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :pswitch_0
    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v6, v0, 0x1

    aget-object v6, p0, v6

    aput-object v6, p0, v5

    :pswitch_1
    add-int/lit8 v5, v0, 0x1

    aget-object v6, p0, v0

    aput-object v6, p0, v5

    goto :goto_2

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static countRunAndMakeAscending([Ljava/lang/Object;II)I
    .locals 4

    add-int/lit8 v0, p1, 0x1

    if-ne v0, p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    add-int/lit8 v1, v0, 0x1

    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Comparable;

    aget-object v3, p0, p1

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3

    move v0, v1

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Comparable;

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0, p1, v0}, Ljava/util/ComparableTimSort;->reverseRange([Ljava/lang/Object;II)V

    :cond_2
    sub-int v2, v0, p1

    goto :goto_0

    :goto_2
    if-ge v0, p2, :cond_2

    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Comparable;

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .locals 3

    iget-object v2, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v2, p1, :cond_0

    move v1, p1

    shr-int/lit8 v2, v1, 0x1

    or-int/2addr v1, v2

    shr-int/lit8 v2, v1, 0x2

    or-int/2addr v1, v2

    shr-int/lit8 v2, v1, 0x4

    or-int/2addr v1, v2

    shr-int/lit8 v2, v1, 0x8

    or-int/2addr v1, v2

    shr-int/lit8 v2, v1, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-gez v1, :cond_1

    move v1, p1

    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    return-object v2

    :cond_1
    iget-object v2, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    array-length v2, v2

    ushr-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private static gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "III)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x1

    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_3

    sub-int v2, p3, p4

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_1

    move v0, v3

    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    if-gtz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_1
    if-le v3, v2, :cond_2

    move v3, v2

    :cond_2
    add-int/2addr v0, p4

    add-int/2addr v3, p4

    :goto_1
    add-int/lit8 v0, v0, 0x1

    :goto_2
    if-ge v0, v3, :cond_8

    sub-int v5, v3, v0

    ushr-int/lit8 v5, v5, 0x1

    add-int v1, v0, v5

    add-int v5, p2, v1

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_7

    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, p4, 0x1

    :cond_4
    :goto_3
    if-ge v3, v2, :cond_5

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_5

    move v0, v3

    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    if-gtz v3, :cond_4

    move v3, v2

    goto :goto_3

    :cond_5
    if-le v3, v2, :cond_6

    move v3, v2

    :cond_6
    move v4, v0

    sub-int v0, p4, v3

    sub-int v3, p4, v4

    goto :goto_1

    :cond_7
    move v3, v1

    goto :goto_2

    :cond_8
    return v3
.end method

.method private static gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "III)I"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v0, 0x0

    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_3

    add-int/lit8 v2, p4, 0x1

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1

    move v0, v3

    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    if-gtz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_1
    if-le v3, v2, :cond_2

    move v3, v2

    :cond_2
    move v4, v0

    sub-int v0, p4, v3

    sub-int v3, p4, v4

    :goto_1
    add-int/lit8 v0, v0, 0x1

    :goto_2
    if-ge v0, v3, :cond_8

    sub-int v5, v3, v0

    ushr-int/lit8 v5, v5, 0x1

    add-int v1, v0, v5

    add-int v5, p2, v1

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_7

    move v3, v1

    goto :goto_2

    :cond_3
    sub-int v2, p3, p4

    :cond_4
    :goto_3
    if-ge v3, v2, :cond_5

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_5

    move v0, v3

    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    if-gtz v3, :cond_4

    move v3, v2

    goto :goto_3

    :cond_5
    if-le v3, v2, :cond_6

    move v3, v2

    :cond_6
    add-int/2addr v0, p4

    add-int/2addr v3, p4

    goto :goto_1

    :cond_7
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    :cond_8
    return v3
.end method

.method private mergeAt(I)V
    .locals 9

    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    aget v0, v5, p1

    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    aget v3, v5, p1

    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    add-int/lit8 v6, p1, 0x1

    aget v1, v5, v6

    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v6, p1, 0x1

    aget v4, v5, v6

    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int v6, v3, v4

    aput v6, v5, p1

    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v5, v5, -0x3

    if-ne p1, v5, :cond_0

    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Ljava/util/ComparableTimSort;->runBase:[I

    add-int/lit8 v8, p1, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v8, p1, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    :cond_0
    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    iget-object v5, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Ljava/lang/Comparable;

    iget-object v6, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v5, v6, v0, v3, v7}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v3, v2

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    add-int v6, v0, v3

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Comparable;

    iget-object v6, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    add-int/lit8 v7, v4, -0x1

    invoke-static {v5, v6, v1, v4, v7}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v4

    if-eqz v4, :cond_1

    if-gt v3, v4, :cond_3

    invoke-direct {p0, v0, v3, v1, v4}, Ljava/util/ComparableTimSort;->mergeLo(IIII)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0, v3, v1, v4}, Ljava/util/ComparableTimSort;->mergeHi(IIII)V

    goto :goto_0
.end method

.method private mergeCollapse()V
    .locals 5

    :goto_0
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v1, -0x2

    if-lez v0, :cond_1

    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    aget v2, v2, v0

    iget-object v3, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    aget v1, v1, v0

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_2

    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private mergeForceCollapse()V
    .locals 4

    :goto_0
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v1, -0x2

    if-lez v0, :cond_0

    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private mergeHi(IIII)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/util/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v2, v0, v12, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v13, p1, p2

    add-int/lit8 v5, v13, -0x1

    add-int/lit8 v7, p4, -0x1

    add-int v13, p3, p4

    add-int/lit8 v9, v13, -0x1

    add-int/lit8 v10, v9, -0x1

    add-int/lit8 v6, v5, -0x1

    aget-object v13, v2, v5

    aput-object v13, v2, v9

    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_0

    const/4 v13, 0x0

    add-int/lit8 v14, p4, -0x1

    sub-int v14, v10, v14

    move/from16 v0, p4

    invoke-static {v12, v13, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v9, v10

    move v5, v6

    :goto_0
    return-void

    :cond_0
    const/4 v13, 0x1

    move/from16 v0, p4

    if-ne v0, v13, :cond_1

    sub-int v9, v10, p2

    sub-int v5, v6, p2

    add-int/lit8 v13, v5, 0x1

    add-int/lit8 v14, v9, 0x1

    move/from16 v0, p2

    invoke-static {v2, v13, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v13, v12, v7

    aput-object v13, v2, v9

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/ComparableTimSort;->minGallop:I

    move v9, v10

    move v5, v6

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_2
    aget-object v13, v12, v7

    check-cast v13, Ljava/lang/Comparable;

    aget-object v14, v2, v5

    invoke-interface {v13, v14}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v13

    if-gez v13, :cond_5

    add-int/lit8 v10, v9, -0x1

    add-int/lit8 v6, v5, -0x1

    aget-object v13, v2, v5

    aput-object v13, v2, v9

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_11

    move v9, v10

    move v5, v6

    :cond_3
    :goto_2
    const/4 v13, 0x1

    if-ge v11, v13, :cond_4

    const/4 v11, 0x1

    :cond_4
    move-object/from16 v0, p0

    iput v11, v0, Ljava/util/ComparableTimSort;->minGallop:I

    const/4 v13, 0x1

    move/from16 v0, p4

    if-ne v0, v13, :cond_d

    sub-int v9, v9, p2

    sub-int v5, v5, p2

    add-int/lit8 v13, v5, 0x1

    add-int/lit8 v14, v9, 0x1

    move/from16 v0, p2

    invoke-static {v2, v13, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v13, v12, v7

    aput-object v13, v2, v9

    goto :goto_0

    :cond_5
    add-int/lit8 v10, v9, -0x1

    add-int/lit8 v8, v7, -0x1

    aget-object v13, v12, v7

    aput-object v13, v2, v9

    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    add-int/lit8 p4, p4, -0x1

    const/4 v13, 0x1

    move/from16 v0, p4

    if-ne v0, v13, :cond_6

    move v9, v10

    move v7, v8

    goto :goto_2

    :cond_6
    move v9, v10

    move v7, v8

    :goto_3
    or-int v13, v3, v4

    if-lt v13, v11, :cond_2

    :goto_4
    aget-object v13, v12, v7

    check-cast v13, Ljava/lang/Comparable;

    add-int/lit8 v14, p2, -0x1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v13, v2, v0, v1, v14}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v13

    sub-int v3, p2, v13

    if-eqz v3, :cond_7

    sub-int/2addr v9, v3

    sub-int/2addr v5, v3

    sub-int p2, p2, v3

    add-int/lit8 v13, v5, 0x1

    add-int/lit8 v14, v9, 0x1

    invoke-static {v2, v13, v2, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p2, :cond_3

    :cond_7
    add-int/lit8 v10, v9, -0x1

    add-int/lit8 v8, v7, -0x1

    aget-object v13, v12, v7

    aput-object v13, v2, v9

    add-int/lit8 p4, p4, -0x1

    const/4 v13, 0x1

    move/from16 v0, p4

    if-ne v0, v13, :cond_8

    move v9, v10

    move v7, v8

    goto :goto_2

    :cond_8
    aget-object v13, v2, v5

    check-cast v13, Ljava/lang/Comparable;

    const/4 v14, 0x0

    add-int/lit8 v15, p4, -0x1

    move/from16 v0, p4

    invoke-static {v13, v12, v14, v0, v15}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v13

    sub-int v4, p4, v13

    if-eqz v4, :cond_10

    sub-int v9, v10, v4

    sub-int v7, v8, v4

    sub-int p4, p4, v4

    add-int/lit8 v13, v7, 0x1

    add-int/lit8 v14, v9, 0x1

    invoke-static {v12, v13, v2, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x1

    move/from16 v0, p4

    if-le v0, v13, :cond_3

    :goto_5
    add-int/lit8 v10, v9, -0x1

    add-int/lit8 v6, v5, -0x1

    aget-object v13, v2, v5

    aput-object v13, v2, v9

    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_9

    move v9, v10

    move v5, v6

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v11, v11, -0x1

    const/4 v13, 0x7

    if-lt v3, v13, :cond_b

    const/4 v13, 0x1

    move v14, v13

    :goto_6
    const/4 v13, 0x7

    if-lt v4, v13, :cond_c

    const/4 v13, 0x1

    :goto_7
    or-int/2addr v13, v14

    if-nez v13, :cond_f

    if-gez v11, :cond_a

    const/4 v11, 0x0

    :cond_a
    add-int/lit8 v11, v11, 0x2

    move v9, v10

    move v5, v6

    goto/16 :goto_1

    :cond_b
    const/4 v13, 0x0

    move v14, v13

    goto :goto_6

    :cond_c
    const/4 v13, 0x0

    goto :goto_7

    :cond_d
    if-nez p4, :cond_e

    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Comparison method violates its general contract!"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_e
    const/4 v13, 0x0

    add-int/lit8 v14, p4, -0x1

    sub-int v14, v9, v14

    move/from16 v0, p4

    invoke-static {v12, v13, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_f
    move v9, v10

    move v5, v6

    goto/16 :goto_4

    :cond_10
    move v9, v10

    move v7, v8

    goto :goto_5

    :cond_11
    move v9, v10

    move v5, v6

    goto/16 :goto_3
.end method

.method private mergeLo(IIII)V
    .locals 14

    iget-object v1, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    move/from16 v0, p2

    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x0

    move/from16 v0, p2

    invoke-static {v1, p1, v11, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    move/from16 v6, p3

    move v8, p1

    add-int/lit8 v9, v8, 0x1

    add-int/lit8 v7, v6, 0x1

    aget-object v12, v1, v6

    aput-object v12, v1, v8

    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_0

    move/from16 v0, p2

    invoke-static {v11, v4, v1, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v9

    move v6, v7

    :goto_0
    return-void

    :cond_0
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_1

    move/from16 v0, p4

    invoke-static {v1, v7, v1, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v12, v9, p4

    aget-object v13, v11, v4

    aput-object v13, v1, v12

    move v8, v9

    move v6, v7

    goto :goto_0

    :cond_1
    iget v10, p0, Ljava/util/ComparableTimSort;->minGallop:I

    move v8, v9

    move v6, v7

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_2
    aget-object v12, v1, v6

    check-cast v12, Ljava/lang/Comparable;

    aget-object v13, v11, v4

    invoke-interface {v12, v13}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v12

    if-gez v12, :cond_5

    add-int/lit8 v9, v8, 0x1

    add-int/lit8 v7, v6, 0x1

    aget-object v12, v1, v6

    aput-object v12, v1, v8

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_11

    move v8, v9

    move v6, v7

    :cond_3
    :goto_2
    const/4 v12, 0x1

    if-ge v10, v12, :cond_4

    const/4 v10, 0x1

    :cond_4
    iput v10, p0, Ljava/util/ComparableTimSort;->minGallop:I

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_d

    move/from16 v0, p4

    invoke-static {v1, v6, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v12, v8, p4

    aget-object v13, v11, v4

    aput-object v13, v1, v12

    goto :goto_0

    :cond_5
    add-int/lit8 v9, v8, 0x1

    add-int/lit8 v5, v4, 0x1

    aget-object v12, v11, v4

    aput-object v12, v1, v8

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    add-int/lit8 p2, p2, -0x1

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_6

    move v8, v9

    move v4, v5

    goto :goto_2

    :cond_6
    move v8, v9

    move v4, v5

    :goto_3
    or-int v12, v2, v3

    if-lt v12, v10, :cond_2

    :goto_4
    aget-object v12, v1, v6

    check-cast v12, Ljava/lang/Comparable;

    const/4 v13, 0x0

    move/from16 v0, p2

    invoke-static {v12, v11, v4, v0, v13}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v11, v4, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v2

    add-int/2addr v4, v2

    sub-int p2, p2, v2

    const/4 v12, 0x1

    move/from16 v0, p2

    if-le v0, v12, :cond_3

    :cond_7
    add-int/lit8 v9, v8, 0x1

    add-int/lit8 v7, v6, 0x1

    aget-object v12, v1, v6

    aput-object v12, v1, v8

    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_8

    move v8, v9

    move v6, v7

    goto :goto_2

    :cond_8
    aget-object v12, v11, v4

    check-cast v12, Ljava/lang/Comparable;

    const/4 v13, 0x0

    move/from16 v0, p4

    invoke-static {v12, v1, v7, v0, v13}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {v1, v7, v1, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v8, v9, v3

    add-int v6, v7, v3

    sub-int p4, p4, v3

    if-eqz p4, :cond_3

    :goto_5
    add-int/lit8 v9, v8, 0x1

    add-int/lit8 v5, v4, 0x1

    aget-object v12, v11, v4

    aput-object v12, v1, v8

    add-int/lit8 p2, p2, -0x1

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_9

    move v8, v9

    move v4, v5

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v10, v10, -0x1

    const/4 v12, 0x7

    if-lt v2, v12, :cond_b

    const/4 v12, 0x1

    move v13, v12

    :goto_6
    const/4 v12, 0x7

    if-lt v3, v12, :cond_c

    const/4 v12, 0x1

    :goto_7
    or-int/2addr v12, v13

    if-nez v12, :cond_f

    if-gez v10, :cond_a

    const/4 v10, 0x0

    :cond_a
    add-int/lit8 v10, v10, 0x2

    move v8, v9

    move v4, v5

    goto/16 :goto_1

    :cond_b
    const/4 v12, 0x0

    move v13, v12

    goto :goto_6

    :cond_c
    const/4 v12, 0x0

    goto :goto_7

    :cond_d
    if-nez p2, :cond_e

    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Comparison method violates its general contract!"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_e
    move/from16 v0, p2

    invoke-static {v11, v4, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_f
    move v8, v9

    move v4, v5

    goto/16 :goto_4

    :cond_10
    move v8, v9

    move v6, v7

    goto :goto_5

    :cond_11
    move v8, v9

    move v6, v7

    goto/16 :goto_3
.end method

.method private static minRunLength(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    add-int v1, p0, v0

    return v1
.end method

.method private pushRun(II)V
    .locals 2

    iget-object v0, p0, Ljava/util/ComparableTimSort;->runBase:[I

    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    aput p1, v0, v1

    iget-object v0, p0, Ljava/util/ComparableTimSort;->runLen:[I

    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    aput p2, v0, v1

    iget v0, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ComparableTimSort;->stackSize:I

    return-void
.end method

.method private static reverseRange([Ljava/lang/Object;II)V
    .locals 4

    add-int/lit8 p2, p2, -0x1

    move v0, p2

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    add-int/lit8 p1, v1, 0x1

    aget-object v3, p0, v0

    aput-object v3, p0, v1

    add-int/lit8 p2, v0, -0x1

    aput-object v2, p0, v0

    move v0, p2

    move v1, p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static sort([Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;II)V

    return-void
.end method

.method static sort([Ljava/lang/Object;II)V
    .locals 8

    array-length v6, p0

    invoke-static {v6, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    sub-int v3, p2, p1

    const/4 v6, 0x2

    if-ge v3, v6, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v6, 0x20

    if-ge v3, v6, :cond_1

    invoke-static {p0, p1, p2}, Ljava/util/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v1

    add-int v6, p1, v1

    invoke-static {p0, p1, p2, v6}, Ljava/util/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/util/ComparableTimSort;

    invoke-direct {v5, p0}, Ljava/util/ComparableTimSort;-><init>([Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/util/ComparableTimSort;->minRunLength(I)I

    move-result v2

    :cond_2
    invoke-static {p0, p1, p2}, Ljava/util/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v4

    if-ge v4, v2, :cond_3

    if-gt v3, v2, :cond_4

    move v0, v3

    :goto_1
    add-int v6, p1, v0

    add-int v7, p1, v4

    invoke-static {p0, p1, v6, v7}, Ljava/util/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    move v4, v0

    :cond_3
    invoke-direct {v5, p1, v4}, Ljava/util/ComparableTimSort;->pushRun(II)V

    invoke-direct {v5}, Ljava/util/ComparableTimSort;->mergeCollapse()V

    add-int/2addr p1, v4

    sub-int/2addr v3, v4

    if-nez v3, :cond_2

    invoke-direct {v5}, Ljava/util/ComparableTimSort;->mergeForceCollapse()V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method
