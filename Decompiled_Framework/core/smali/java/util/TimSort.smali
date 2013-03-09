.class Ljava/util/TimSort;
.super Ljava/lang/Object;
.source "TimSort.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final MIN_GALLOP:I = 0x7

.field private static final MIN_MERGE:I = 0x20


# instance fields
.field private final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private minGallop:I

.field private final runBase:[I

.field private final runLen:[I

.field private stackSize:I

.field private tmp:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x7

    iput v3, p0, Ljava/util/TimSort;->minGallop:I

    const/4 v3, 0x0

    iput v3, p0, Ljava/util/TimSort;->stackSize:I

    iput-object p1, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    array-length v0, p1

    const/16 v3, 0x200

    if-ge v0, v3, :cond_0

    ushr-int/lit8 v3, v0, 0x1

    :goto_0
    new-array v1, v3, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    const/16 v3, 0x78

    if-ge v0, v3, :cond_1

    const/4 v2, 0x5

    :goto_1
    new-array v3, v2, [I

    iput-object v3, p0, Ljava/util/TimSort;->runBase:[I

    new-array v3, v2, [I

    iput-object v3, p0, Ljava/util/TimSort;->runLen:[I

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

.method private static binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    if-ne p3, p1, :cond_0

    add-int/lit8 p3, p3, 0x1

    :cond_0
    :goto_0
    if-ge p3, p2, :cond_3

    aget-object v3, p0, p3

    move v0, p1

    move v4, p3

    :goto_1
    if-ge v0, v4, :cond_2

    add-int v5, v0, v4

    ushr-int/lit8 v1, v5, 0x1

    aget-object v5, p0, v1

    invoke-interface {p4, v3, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

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

.method private static countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    if-ne v0, p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    add-int/lit8 v1, v0, 0x1

    aget-object v2, p0, v0

    aget-object v3, p0, p1

    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3

    move v0, v1

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v2, p0, v0

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0, p1, v0}, Ljava/util/TimSort;->reverseRange([Ljava/lang/Object;II)V

    :cond_2
    sub-int v2, v0, p1

    goto :goto_0

    :goto_2
    if-ge v0, p2, :cond_2

    aget-object v2, p0, v0

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    iget-object v2, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

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

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    return-object v2

    :cond_1
    iget-object v2, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    array-length v2, v2

    ushr-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private static gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x1

    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_3

    sub-int v2, p3, p4

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_1

    move v0, v3

    mul-int/lit8 v5, v3, 0x2

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

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

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

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_5

    move v0, v3

    mul-int/lit8 v5, v3, 0x2

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

.method private static gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v0, 0x0

    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_3

    add-int/lit8 v2, p4, 0x1

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1

    move v0, v3

    mul-int/lit8 v5, v3, 0x2

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

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

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

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_5

    move v0, v3

    mul-int/lit8 v5, v3, 0x2

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
    .locals 11

    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    aget v2, v0, p1

    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    aget v3, v0, p1

    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    add-int/lit8 v1, p1, 0x1

    aget v6, v0, v1

    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v1, p1, 0x1

    aget v7, v0, v1

    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    add-int v1, v3, v7

    aput v1, v0, p1

    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v4, p0, Ljava/util/TimSort;->runBase:[I

    add-int/lit8 v5, p1, 0x2

    aget v4, v4, v5

    aput v4, v0, v1

    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v4, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v5, p1, 0x2

    aget v4, v4, v5

    aput v4, v0, v1

    :cond_0
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/TimSort;->stackSize:I

    iget-object v0, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    aget-object v0, v0, v6

    iget-object v1, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    invoke-static/range {v0 .. v5}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v10

    add-int/2addr v2, v10

    sub-int/2addr v3, v10

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    add-int v1, v2, v3

    add-int/lit8 v1, v1, -0x1

    aget-object v4, v0, v1

    iget-object v5, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    add-int/lit8 v8, v7, -0x1

    iget-object v9, p0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    invoke-static/range {v4 .. v9}, Ljava/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v7

    if-eqz v7, :cond_1

    if-gt v3, v7, :cond_3

    invoke-direct {p0, v2, v3, v6, v7}, Ljava/util/TimSort;->mergeLo(IIII)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2, v3, v6, v7}, Ljava/util/TimSort;->mergeHi(IIII)V

    goto :goto_0
.end method

.method private mergeCollapse()V
    .locals 5

    :goto_0
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v1, -0x2

    if-lez v0, :cond_1

    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    aget v2, v2, v0

    iget-object v3, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-direct {p0, v0}, Ljava/util/TimSort;->mergeAt(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    aget v1, v1, v0

    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_2

    invoke-direct {p0, v0}, Ljava/util/TimSort;->mergeAt(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private mergeForceCollapse()V
    .locals 4

    :goto_0
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v1, -0x2

    if-lez v0, :cond_0

    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-direct {p0, v0}, Ljava/util/TimSort;->mergeAt(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private mergeHi(IIII)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/util/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v9

    const/4 v2, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v3, v0, v9, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v2, p1, p2

    add-int/lit8 v16, v2, -0x1

    add-int/lit8 v18, p4, -0x1

    add-int v2, p3, p4

    add-int/lit8 v20, v2, -0x1

    add-int/lit8 v21, v20, -0x1

    add-int/lit8 v17, v16, -0x1

    aget-object v2, v3, v16

    aput-object v2, v3, v20

    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_0

    const/4 v2, 0x0

    add-int/lit8 v4, p4, -0x1

    sub-int v4, v21, v4

    move/from16 v0, p4

    invoke-static {v9, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v20, v21

    move/from16 v16, v17

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_1

    sub-int v20, v21, p2

    sub-int v16, v17, p2

    add-int/lit8 v2, v16, 0x1

    add-int/lit8 v4, v20, 0x1

    move/from16 v0, p2

    invoke-static {v3, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v2, v9, v18

    aput-object v2, v3, v20

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/TimSort;->minGallop:I

    move/from16 v22, v0

    move/from16 v20, v21

    move/from16 v16, v17

    :goto_1
    const/4 v14, 0x0

    const/4 v15, 0x0

    :cond_2
    aget-object v2, v9, v18

    aget-object v4, v3, v16

    invoke-interface {v7, v2, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_5

    add-int/lit8 v21, v20, -0x1

    add-int/lit8 v17, v16, -0x1

    aget-object v2, v3, v16

    aput-object v2, v3, v20

    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x0

    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_11

    move/from16 v20, v21

    move/from16 v16, v17

    :cond_3
    :goto_2
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ge v0, v2, :cond_4

    const/16 v22, 0x1

    :cond_4
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/TimSort;->minGallop:I

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_d

    sub-int v20, v20, p2

    sub-int v16, v16, p2

    add-int/lit8 v2, v16, 0x1

    add-int/lit8 v4, v20, 0x1

    move/from16 v0, p2

    invoke-static {v3, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v2, v9, v18

    aput-object v2, v3, v20

    goto :goto_0

    :cond_5
    add-int/lit8 v21, v20, -0x1

    add-int/lit8 v19, v18, -0x1

    aget-object v2, v9, v18

    aput-object v2, v3, v20

    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x0

    add-int/lit8 p4, p4, -0x1

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_6

    move/from16 v20, v21

    move/from16 v18, v19

    goto :goto_2

    :cond_6
    move/from16 v20, v21

    move/from16 v18, v19

    :goto_3
    or-int v2, v14, v15

    move/from16 v0, v22

    if-lt v2, v0, :cond_2

    :goto_4
    aget-object v2, v9, v18

    add-int/lit8 v6, p2, -0x1

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v2 .. v7}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v2

    sub-int v14, p2, v2

    if-eqz v14, :cond_7

    sub-int v20, v20, v14

    sub-int v16, v16, v14

    sub-int p2, p2, v14

    add-int/lit8 v2, v16, 0x1

    add-int/lit8 v4, v20, 0x1

    invoke-static {v3, v2, v3, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p2, :cond_3

    :cond_7
    add-int/lit8 v21, v20, -0x1

    add-int/lit8 v19, v18, -0x1

    aget-object v2, v9, v18

    aput-object v2, v3, v20

    add-int/lit8 p4, p4, -0x1

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_8

    move/from16 v20, v21

    move/from16 v18, v19

    goto :goto_2

    :cond_8
    aget-object v8, v3, v16

    const/4 v10, 0x0

    add-int/lit8 v12, p4, -0x1

    move/from16 v11, p4

    move-object v13, v7

    invoke-static/range {v8 .. v13}, Ljava/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v2

    sub-int v15, p4, v2

    if-eqz v15, :cond_10

    sub-int v20, v21, v15

    sub-int v18, v19, v15

    sub-int p4, p4, v15

    add-int/lit8 v2, v18, 0x1

    add-int/lit8 v4, v20, 0x1

    invoke-static {v9, v2, v3, v4, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    move/from16 v0, p4

    if-le v0, v2, :cond_3

    :goto_5
    add-int/lit8 v21, v20, -0x1

    add-int/lit8 v17, v16, -0x1

    aget-object v2, v3, v16

    aput-object v2, v3, v20

    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_9

    move/from16 v20, v21

    move/from16 v16, v17

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v22, v22, -0x1

    const/4 v2, 0x7

    if-lt v14, v2, :cond_b

    const/4 v2, 0x1

    move v4, v2

    :goto_6
    const/4 v2, 0x7

    if-lt v15, v2, :cond_c

    const/4 v2, 0x1

    :goto_7
    or-int/2addr v2, v4

    if-nez v2, :cond_f

    if-gez v22, :cond_a

    const/16 v22, 0x0

    :cond_a
    add-int/lit8 v22, v22, 0x2

    move/from16 v20, v21

    move/from16 v16, v17

    goto/16 :goto_1

    :cond_b
    const/4 v2, 0x0

    move v4, v2

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    goto :goto_7

    :cond_d
    if-nez p4, :cond_e

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Comparison method violates its general contract!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    const/4 v2, 0x0

    add-int/lit8 v4, p4, -0x1

    sub-int v4, v20, v4

    move/from16 v0, p4

    invoke-static {v9, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_f
    move/from16 v20, v21

    move/from16 v16, v17

    goto/16 :goto_4

    :cond_10
    move/from16 v20, v21

    move/from16 v18, v19

    goto :goto_5

    :cond_11
    move/from16 v20, v21

    move/from16 v16, v17

    goto/16 :goto_3
.end method

.method private mergeLo(IIII)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v4

    const/4 v3, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v10, v0, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    move/from16 v11, p3

    move/from16 v19, p1

    add-int/lit8 v20, v19, 0x1

    add-int/lit8 v18, v11, 0x1

    aget-object v3, v10, v11

    aput-object v3, v10, v19

    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_0

    move/from16 v0, v20

    move/from16 v1, p2

    invoke-static {v4, v5, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v19, v20

    move/from16 v11, v18

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_1

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, p4

    invoke-static {v10, v0, v10, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v3, v20, p4

    aget-object v6, v4, v5

    aput-object v6, v10, v3

    move/from16 v19, v20

    move/from16 v11, v18

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/TimSort;->minGallop:I

    move/from16 v21, v0

    move/from16 v19, v20

    move/from16 v11, v18

    :goto_1
    const/4 v15, 0x0

    const/16 v16, 0x0

    :cond_2
    aget-object v3, v10, v11

    aget-object v6, v4, v5

    invoke-interface {v8, v3, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_5

    add-int/lit8 v20, v19, 0x1

    add-int/lit8 v18, v11, 0x1

    aget-object v3, v10, v11

    aput-object v3, v10, v19

    add-int/lit8 v16, v16, 0x1

    const/4 v15, 0x0

    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_11

    move/from16 v19, v20

    move/from16 v11, v18

    :cond_3
    :goto_2
    const/4 v3, 0x1

    move/from16 v0, v21

    if-ge v0, v3, :cond_4

    const/16 v21, 0x1

    :cond_4
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/TimSort;->minGallop:I

    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_d

    move/from16 v0, v19

    move/from16 v1, p4

    invoke-static {v10, v11, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v3, v19, p4

    aget-object v6, v4, v5

    aput-object v6, v10, v3

    goto :goto_0

    :cond_5
    add-int/lit8 v20, v19, 0x1

    add-int/lit8 v17, v5, 0x1

    aget-object v3, v4, v5

    aput-object v3, v10, v19

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x0

    add-int/lit8 p2, p2, -0x1

    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_6

    move/from16 v19, v20

    move/from16 v5, v17

    goto :goto_2

    :cond_6
    move/from16 v19, v20

    move/from16 v5, v17

    :goto_3
    or-int v3, v15, v16

    move/from16 v0, v21

    if-lt v3, v0, :cond_2

    move/from16 v18, v11

    :goto_4
    aget-object v3, v10, v18

    const/4 v7, 0x0

    move/from16 v6, p2

    invoke-static/range {v3 .. v8}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v15

    if-eqz v15, :cond_7

    move/from16 v0, v19

    invoke-static {v4, v5, v10, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v19, v19, v15

    add-int/2addr v5, v15

    sub-int p2, p2, v15

    const/4 v3, 0x1

    move/from16 v0, p2

    if-gt v0, v3, :cond_7

    move/from16 v11, v18

    goto :goto_2

    :cond_7
    add-int/lit8 v20, v19, 0x1

    add-int/lit8 v11, v18, 0x1

    aget-object v3, v10, v18

    aput-object v3, v10, v19

    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_8

    move/from16 v19, v20

    goto :goto_2

    :cond_8
    aget-object v9, v4, v5

    const/4 v13, 0x0

    move/from16 v12, p4

    move-object v14, v8

    invoke-static/range {v9 .. v14}, Ljava/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v16

    if-eqz v16, :cond_10

    move/from16 v0, v20

    move/from16 v1, v16

    invoke-static {v10, v11, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v19, v20, v16

    add-int v11, v11, v16

    sub-int p4, p4, v16

    if-eqz p4, :cond_3

    :goto_5
    add-int/lit8 v20, v19, 0x1

    add-int/lit8 v17, v5, 0x1

    aget-object v3, v4, v5

    aput-object v3, v10, v19

    add-int/lit8 p2, p2, -0x1

    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_9

    move/from16 v19, v20

    move/from16 v5, v17

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v21, v21, -0x1

    const/4 v3, 0x7

    if-lt v15, v3, :cond_b

    const/4 v3, 0x1

    move v6, v3

    :goto_6
    const/4 v3, 0x7

    move/from16 v0, v16

    if-lt v0, v3, :cond_c

    const/4 v3, 0x1

    :goto_7
    or-int/2addr v3, v6

    if-nez v3, :cond_f

    if-gez v21, :cond_a

    const/16 v21, 0x0

    :cond_a
    add-int/lit8 v21, v21, 0x2

    move/from16 v19, v20

    move/from16 v5, v17

    goto/16 :goto_1

    :cond_b
    const/4 v3, 0x0

    move v6, v3

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    goto :goto_7

    :cond_d
    if-nez p2, :cond_e

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "Comparison method violates its general contract!"

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_e
    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v4, v5, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_f
    move/from16 v19, v20

    move/from16 v18, v11

    move/from16 v5, v17

    goto/16 :goto_4

    :cond_10
    move/from16 v19, v20

    goto :goto_5

    :cond_11
    move/from16 v19, v20

    move/from16 v11, v18

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

    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    aput p1, v0, v1

    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    aput p2, v0, v1

    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/TimSort;->stackSize:I

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

.method static sort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    if-nez p3, :cond_1

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v6, p0

    invoke-static {v6, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    sub-int v3, p2, p1

    const/4 v6, 0x2

    if-lt v3, v6, :cond_0

    const/16 v6, 0x20

    if-ge v3, v6, :cond_2

    invoke-static {p0, p1, p2, p3}, Ljava/util/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v1

    add-int v6, p1, v1

    invoke-static {p0, p1, p2, v6, p3}, Ljava/util/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/util/TimSort;

    invoke-direct {v5, p0, p3}, Ljava/util/TimSort;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-static {v3}, Ljava/util/TimSort;->minRunLength(I)I

    move-result v2

    :cond_3
    invoke-static {p0, p1, p2, p3}, Ljava/util/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v4

    if-ge v4, v2, :cond_4

    if-gt v3, v2, :cond_5

    move v0, v3

    :goto_1
    add-int v6, p1, v0

    add-int v7, p1, v4

    invoke-static {p0, p1, v6, v7, p3}, Ljava/util/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    move v4, v0

    :cond_4
    invoke-direct {v5, p1, v4}, Ljava/util/TimSort;->pushRun(II)V

    invoke-direct {v5}, Ljava/util/TimSort;->mergeCollapse()V

    add-int/2addr p1, v4

    sub-int/2addr v3, v4

    if-nez v3, :cond_3

    invoke-direct {v5}, Ljava/util/TimSort;->mergeForceCollapse()V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method static sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    return-void
.end method
