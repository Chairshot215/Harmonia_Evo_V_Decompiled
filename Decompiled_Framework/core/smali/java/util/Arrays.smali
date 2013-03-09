.class public Ljava/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Arrays$ArrayList;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/util/Arrays;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljava/util/Arrays;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs asList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/Arrays$ArrayList;

    invoke-direct {v0, p0}, Ljava/util/Arrays$ArrayList;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static binarySearch([BB)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch([BIIB)I

    move-result v0

    return v0
.end method

.method public static binarySearch([BIIB)I
    .locals 5

    array-length v4, p0

    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    move v1, p1

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-gt v1, v0, :cond_1

    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    aget-byte v3, p0, v2

    if-ge v3, p3, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p3, :cond_2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    xor-int/lit8 v2, v1, -0x1

    :cond_2
    return v2
.end method

.method public static binarySearch([CC)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch([CIIC)I

    move-result v0

    return v0
.end method

.method public static binarySearch([CIIC)I
    .locals 5

    array-length v4, p0

    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    move v1, p1

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-gt v1, v0, :cond_1

    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    aget-char v3, p0, v2

    if-ge v3, p3, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p3, :cond_2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    xor-int/lit8 v2, v1, -0x1

    :cond_2
    return v2
.end method

.method public static binarySearch([DD)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1, p2}, Ljava/util/Arrays;->binarySearch([DIID)I

    move-result v0

    return v0
.end method

.method public static binarySearch([DIID)I
    .locals 11

    array-length v9, p0

    invoke-static {p1, p2, v9}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    move v1, p1

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-gt v1, v0, :cond_5

    add-int v9, v1, v0

    ushr-int/lit8 v2, v9, 0x1

    aget-wide v3, p0, v2

    cmpg-double v9, v3, p3

    if-gez v9, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    cmpl-double v9, v3, p3

    if-lez v9, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    const-wide/16 v9, 0x0

    cmpl-double v9, v3, v9

    if-eqz v9, :cond_3

    cmpl-double v9, v3, p3

    if-nez v9, :cond_3

    :cond_2
    :goto_1
    return v2

    :cond_3
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_4

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_4
    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_5
    xor-int/lit8 v2, v1, -0x1

    goto :goto_1
.end method

.method public static binarySearch([FF)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch([FIIF)I

    move-result v0

    return v0
.end method

.method public static binarySearch([FIIF)I
    .locals 7

    array-length v6, p0

    invoke-static {p1, p2, v6}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    move v1, p1

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-gt v1, v0, :cond_5

    add-int v6, v1, v0

    ushr-int/lit8 v2, v6, 0x1

    aget v3, p0, v2

    cmpg-float v6, v3, p3

    if-gez v6, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    cmpl-float v6, v3, p3

    if-lez v6, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_3

    cmpl-float v6, v3, p3

    if-nez v6, :cond_3

    :cond_2
    :goto_1
    return v2

    :cond_3
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-ge v4, v5, :cond_4

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_4
    if-le v4, v5, :cond_2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_5
    xor-int/lit8 v2, v1, -0x1

    goto :goto_1
.end method

.method public static binarySearch([II)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    return v0
.end method

.method public static binarySearch([IIII)I
    .locals 5

    array-length v4, p0

    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    move v1, p1

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-gt v1, v0, :cond_1

    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    aget v3, p0, v2

    if-ge v3, p3, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p3, :cond_2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    xor-int/lit8 v2, v1, -0x1

    :cond_2
    return v2
.end method

.method public static binarySearch([JIIJ)I
    .locals 6

    array-length v5, p0

    invoke-static {p1, p2, v5}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    move v1, p1

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-gt v1, v0, :cond_1

    add-int v5, v1, v0

    ushr-int/lit8 v2, v5, 0x1

    aget-wide v3, p0, v2

    cmp-long v5, v3, p3

    if-gez v5, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    cmp-long v5, v3, p3

    if-lez v5, :cond_2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    xor-int/lit8 v2, v1, -0x1

    :cond_2
    return v2
.end method

.method public static binarySearch([JJ)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I
    .locals 5

    array-length v4, p0

    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    move v1, p1

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-gt v1, v0, :cond_1

    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    aget-object v4, p0, v2

    check-cast v4, Ljava/lang/Comparable;

    invoke-interface {v4, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez v3, :cond_2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    xor-int/lit8 v2, v1, -0x1

    :cond_2
    return v2
.end method

.method public static binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    if-nez p4, :cond_1

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    array-length v4, p0

    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    move v1, p1

    add-int/lit8 v0, p2, -0x1

    :goto_1
    if-gt v1, v0, :cond_3

    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    aget-object v4, p0, v2

    invoke-interface {p4, v4, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2

    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    :cond_2
    if-lez v3, :cond_0

    add-int/lit8 v0, v2, -0x1

    goto :goto_1

    :cond_3
    xor-int/lit8 v2, v1, -0x1

    goto :goto_0
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1, p2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static binarySearch([SIIS)I
    .locals 5

    array-length v4, p0

    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    move v1, p1

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-gt v1, v0, :cond_1

    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    aget-short v3, p0, v2

    if-ge v3, p3, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p3, :cond_2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    xor-int/lit8 v2, v1, -0x1

    :cond_2
    return v2
.end method

.method public static binarySearch([SS)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch([SIIS)I

    move-result v0

    return v0
.end method

.method private static checkBinarySearchBounds(III)V
    .locals 1

    if-le p0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-ltz p0, :cond_1

    if-le p1, p2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    return-void
.end method

.method public static checkOffsetAndCount(III)V
    .locals 1

    or-int v0, p1, p2

    if-ltz v0, :cond_0

    if-gt p1, p0, :cond_0

    sub-int v0, p0, p1

    if-ge v0, p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(III)V

    throw v0

    :cond_1
    return-void
.end method

.method public static checkStartAndEnd(III)V
    .locals 3

    if-ltz p1, :cond_0

    if-le p2, p0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start < 0 || end > len. start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-le p1, p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start > end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public static copyOf([BI)[B
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([CI)[C
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([DI)[D
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([DII)[D

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([FI)[F
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([II)[I
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([JI)[J
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;I",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([SI)[S
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([SII)[S

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([ZI)[Z
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([ZII)[Z

    move-result-object v0

    return-object v0
.end method

.method public static copyOfRange([BII)[B
    .locals 5

    if-le p1, p2, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    :cond_0
    array-length v1, p0

    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_2
    sub-int v3, p2, p1

    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v2, v3, [B

    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static copyOfRange([CII)[C
    .locals 5

    if-le p1, p2, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    :cond_0
    array-length v1, p0

    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_2
    sub-int v3, p2, p1

    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v2, v3, [C

    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static copyOfRange([DII)[D
    .locals 5

    if-le p1, p2, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    :cond_0
    array-length v1, p0

    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_2
    sub-int v3, p2, p1

    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v2, v3, [D

    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static copyOfRange([FII)[F
    .locals 5

    if-le p1, p2, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    :cond_0
    array-length v1, p0

    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_2
    sub-int v3, p2, p1

    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v2, v3, [F

    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static copyOfRange([III)[I
    .locals 5

    if-le p1, p2, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    :cond_0
    array-length v1, p0

    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_2
    sub-int v3, p2, p1

    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v2, v3, [I

    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static copyOfRange([JII)[J
    .locals 5

    if-le p1, p2, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    :cond_0
    array-length v1, p0

    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_2
    sub-int v3, p2, p1

    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v2, v3, [J

    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    array-length v1, p0

    if-le p1, p2, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    :cond_0
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_2
    sub-int v3, p2, p1

    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;II",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    if-le p1, p2, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    :cond_0
    array-length v1, p0

    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_2
    sub-int v3, p2, p1

    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static copyOfRange([SII)[S
    .locals 5

    if-le p1, p2, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    :cond_0
    array-length v1, p0

    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_2
    sub-int v3, p2, p1

    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v2, v3, [S

    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static copyOfRange([ZII)[Z
    .locals 5

    if-le p1, p2, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    :cond_0
    array-length v1, p0

    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_2
    sub-int v3, p2, p1

    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v2, v3, [Z

    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v5, p0

    array-length v6, p1

    if-eq v5, v6, :cond_3

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_1
    array-length v5, p0

    if-ge v2, v5, :cond_0

    aget-object v0, p0, v2

    aget-object v1, p1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEqualsElements(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v3, v4

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static deepEqualsElements(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_3

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_3
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    check-cast p0, [I

    check-cast p0, [I

    check-cast p1, [I

    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    goto :goto_0

    :cond_4
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    check-cast p0, [C

    check-cast p0, [C

    check-cast p1, [C

    check-cast p1, [C

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v2

    goto :goto_0

    :cond_5
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    check-cast p0, [Z

    check-cast p0, [Z

    check-cast p1, [Z

    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    goto :goto_0

    :cond_6
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    check-cast p0, [B

    check-cast p0, [B

    check-cast p1, [B

    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    goto/16 :goto_0

    :cond_7
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    check-cast p0, [J

    check-cast p0, [J

    check-cast p1, [J

    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    goto/16 :goto_0

    :cond_8
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    check-cast p0, [F

    check-cast p0, [F

    check-cast p1, [F

    check-cast p1, [F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    goto/16 :goto_0

    :cond_9
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    check-cast p0, [D

    check-cast p0, [D

    check-cast p1, [D

    check-cast p1, [D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    goto/16 :goto_0

    :cond_a
    check-cast p0, [S

    check-cast p0, [S

    check-cast p1, [S

    check-cast p1, [S

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public static deepHashCode([Ljava/lang/Object;)I
    .locals 7

    if-nez p0, :cond_1

    const/4 v3, 0x0

    :cond_0
    return v3

    :cond_1
    const/4 v3, 0x1

    move-object v0, p0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCodeElement(Ljava/lang/Object;)I

    move-result v2

    mul-int/lit8 v6, v3, 0x1f

    add-int v3, v6, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static deepHashCodeElement(Ljava/lang/Object;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_2

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_2
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast p0, [I

    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    goto :goto_0

    :cond_3
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    check-cast p0, [C

    check-cast p0, [C

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v1

    goto :goto_0

    :cond_4
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    check-cast p0, [Z

    check-cast p0, [Z

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v1

    goto :goto_0

    :cond_5
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    goto :goto_0

    :cond_6
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    check-cast p0, [J

    check-cast p0, [J

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    goto :goto_0

    :cond_7
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    check-cast p0, [F

    check-cast p0, [F

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    goto/16 :goto_0

    :cond_8
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    check-cast p0, [D

    check-cast p0, [D

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v1

    goto/16 :goto_0

    :cond_9
    check-cast p0, [S

    check-cast p0, [S

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([S)I

    move-result v1

    goto/16 :goto_0
.end method

.method public static deepToString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string v1, "null"

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x9

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->deepToStringImpl([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static deepToStringImpl([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 8

    const/4 v7, 0x0

    if-nez p0, :cond_0

    const-string v6, "null"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    const/16 v6, 0x5b

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_1
    array-length v6, p0

    if-ge v3, v6, :cond_f

    if-eqz v3, :cond_1

    const-string v6, ", "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    aget-object v0, p0, v3

    if-nez v0, :cond_2

    const-string v6, "null"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    check-cast v0, [Z

    check-cast v0, [Z

    invoke-static {v0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    check-cast v0, [C

    check-cast v0, [C

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    check-cast v0, [D

    check-cast v0, [D

    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    check-cast v0, [F

    check-cast v0, [F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    check-cast v0, [I

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_8
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    check-cast v0, [J

    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_9
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    check-cast v0, [S

    check-cast v0, [S

    invoke-static {v0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_a
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_b
    sget-boolean v6, Ljava/util/Arrays;->$assertionsDisabled:Z

    if-nez v6, :cond_c

    instance-of v6, v0, [Ljava/lang/Object;

    if-nez v6, :cond_c

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_c
    invoke-static {p1, v0}, Ljava/util/Arrays;->deepToStringImplContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "[...]"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_d
    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, [Ljava/lang/Object;

    array-length v6, p1

    add-int/lit8 v6, v6, 0x1

    new-array v5, v6, [Ljava/lang/Object;

    array-length v6, p1

    invoke-static {p1, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, p1

    aput-object v4, v5, v6

    invoke-static {v4, v5, p2}, Ljava/util/Arrays;->deepToStringImpl([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto/16 :goto_2

    :cond_e
    aget-object v6, p0, v3

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_f
    const/16 v6, 0x5d

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private static deepToStringImplContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    if-ne v1, p1, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static equals([B[B)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static equals([C[C)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-char v3, p0, v0

    aget-char v4, p1, v0

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static equals([D[D)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-wide v3, p0, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    aget-wide v5, p1, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static equals([F[F)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    aget v4, p1, v0

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static equals([I[I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget v3, p0, v0

    aget v4, p1, v0

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static equals([J[J)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-wide v3, p0, v0

    aget-wide v5, p1, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v5, p0

    array-length v6, p1

    if-eq v5, v6, :cond_3

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_1
    array-length v5, p0

    if-ge v2, v5, :cond_0

    aget-object v0, p0, v2

    aget-object v1, p1, v2

    if-nez v0, :cond_5

    if-nez v1, :cond_6

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_6
    move v3, v4

    goto :goto_0
.end method

.method public static equals([S[S)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-short v3, p0, v0

    aget-short v4, p1, v0

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static equals([Z[Z)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-boolean v3, p0, v0

    aget-boolean v4, p1, v0

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static fill([BB)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aput-byte p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([BIIB)V
    .locals 2

    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aput-byte p3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([CC)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aput-char p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([CIIC)V
    .locals 2

    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aput-char p3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([DD)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aput-wide p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([DIID)V
    .locals 2

    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aput-wide p3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([FF)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aput p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([FIIF)V
    .locals 2

    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aput p3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aput p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([IIII)V
    .locals 2

    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aput p3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([JIIJ)V
    .locals 2

    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aput-wide p3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([JJ)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aput-wide p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 2

    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aput-object p3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aput-object p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([SIIS)V
    .locals 2

    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aput-short p3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([SS)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aput-short p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([ZIIZ)V
    .locals 2

    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aput-boolean p3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([ZZ)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aput-boolean p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static hashCode([B)I
    .locals 6

    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    return v2

    :cond_1
    const/4 v2, 0x1

    move-object v0, p0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v1, v0, v3

    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static hashCode([C)I
    .locals 6

    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    return v2

    :cond_1
    const/4 v2, 0x1

    move-object v0, p0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-char v1, v0, v3

    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static hashCode([D)I
    .locals 11

    if-nez p0, :cond_1

    const/4 v3, 0x0

    :cond_0
    return v3

    :cond_1
    const/4 v3, 0x1

    move-object v0, p0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-wide v1, v0, v4

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    mul-int/lit8 v8, v3, 0x1f

    const/16 v9, 0x20

    ushr-long v9, v6, v9

    xor-long/2addr v9, v6

    long-to-int v9, v9

    add-int v3, v8, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static hashCode([F)I
    .locals 7

    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    return v2

    :cond_1
    const/4 v2, 0x1

    move-object v0, p0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, v0, v3

    mul-int/lit8 v5, v2, 0x1f

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    add-int v2, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static hashCode([I)I
    .locals 6

    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    return v2

    :cond_1
    const/4 v2, 0x1

    move-object v0, p0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, v0, v3

    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static hashCode([J)I
    .locals 9

    if-nez p0, :cond_1

    const/4 v3, 0x0

    :cond_0
    return v3

    :cond_1
    const/4 v3, 0x1

    move-object v0, p0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-wide v1, v0, v4

    mul-int/lit8 v6, v3, 0x1f

    const/16 v7, 0x20

    ushr-long v7, v1, v7

    xor-long/2addr v7, v1

    long-to-int v7, v7

    add-int v3, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .locals 7

    if-nez p0, :cond_1

    const/4 v3, 0x0

    :cond_0
    return v3

    :cond_1
    const/4 v3, 0x1

    move-object v0, p0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    if-nez v1, :cond_2

    const/4 v2, 0x0

    :goto_1
    mul-int/lit8 v6, v3, 0x1f

    add-int v3, v6, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public static hashCode([S)I
    .locals 6

    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    return v2

    :cond_1
    const/4 v2, 0x1

    move-object v0, p0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-short v1, v0, v3

    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static hashCode([Z)I
    .locals 7

    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    return v2

    :cond_1
    const/4 v2, 0x1

    move-object v0, p0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-boolean v1, v0, v3

    mul-int/lit8 v6, v2, 0x1f

    if-eqz v1, :cond_2

    const/16 v5, 0x4cf

    :goto_1
    add-int v2, v6, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/16 v5, 0x4d5

    goto :goto_1
.end method

.method public static sort([B)V
    .locals 0

    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([B)V

    return-void
.end method

.method public static sort([BII)V
    .locals 0

    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    return-void
.end method

.method public static sort([C)V
    .locals 0

    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([C)V

    return-void
.end method

.method public static sort([CII)V
    .locals 0

    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([CII)V

    return-void
.end method

.method public static sort([D)V
    .locals 0

    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([D)V

    return-void
.end method

.method public static sort([DII)V
    .locals 0

    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([DII)V

    return-void
.end method

.method public static sort([F)V
    .locals 0

    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([F)V

    return-void
.end method

.method public static sort([FII)V
    .locals 0

    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([FII)V

    return-void
.end method

.method public static sort([I)V
    .locals 0

    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([I)V

    return-void
.end method

.method public static sort([III)V
    .locals 0

    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([III)V

    return-void
.end method

.method public static sort([J)V
    .locals 0

    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([J)V

    return-void
.end method

.method public static sort([JII)V
    .locals 0

    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([JII)V

    return-void
.end method

.method public static sort([Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;)V

    return-void
.end method

.method public static sort([Ljava/lang/Object;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;II)V

    return-void
.end method

.method public static sort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    return-void
.end method

.method public static sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/util/TimSort;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method public static sort([S)V
    .locals 0

    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([S)V

    return-void
.end method

.method public static sort([SII)V
    .locals 0

    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([SII)V

    return-void
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string v2, "null"

    :goto_0
    return-object v2

    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    const-string v2, "[]"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([C)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string v2, "null"

    :goto_0
    return-object v2

    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    const-string v2, "[]"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-char v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([D)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string v2, "null"

    :goto_0
    return-object v2

    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    const-string v2, "[]"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-wide v2, p0, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, p0, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([F)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string v2, "null"

    :goto_0
    return-object v2

    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    const-string v2, "[]"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([I)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string v2, "null"

    :goto_0
    return-object v2

    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    const-string v2, "[]"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([J)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string v2, "null"

    :goto_0
    return-object v2

    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    const-string v2, "[]"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-wide v2, p0, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, p0, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string v2, "null"

    :goto_0
    return-object v2

    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    const-string v2, "[]"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([S)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string v2, "null"

    :goto_0
    return-object v2

    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    const-string v2, "[]"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-short v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-short v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([Z)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string v2, "null"

    :goto_0
    return-object v2

    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    const-string v2, "[]"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-boolean v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
