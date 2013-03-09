.class public Lgnu/kawa/functions/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# static fields
.field static final shapeStrides:[I

.field static final zeros2:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 13
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lgnu/kawa/functions/Arrays;->shapeStrides:[I

    .line 14
    new-array v0, v1, [I

    sput-object v0, Lgnu/kawa/functions/Arrays;->zeros2:[I

    return-void

    .line 13
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static effectiveIndex(Lgnu/lists/Array;Lgnu/mapping/Procedure;[Ljava/lang/Object;[I)I
    .locals 7
    .parameter "array"
    .parameter "proc"
    .parameter "args"
    .parameter "work"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 74
    .local v3, mapval:Ljava/lang/Object;
    instance-of v5, v3, Lgnu/mapping/Values;

    if-eqz v5, :cond_0

    .line 76
    move-object v0, v3

    check-cast v0, Lgnu/mapping/Values;

    move-object v4, v0

    .line 77
    .local v4, mapvals:Lgnu/mapping/Values;
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    invoke-virtual {v4, v1}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {v4, v1}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    aput v5, p3, v2

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v4           #mapvals:Lgnu/mapping/Values;
    :cond_0
    const/4 v5, 0x0

    check-cast v3, Ljava/lang/Number;

    .end local v3           #mapval:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v6

    aput v6, p3, v5

    .line 84
    :cond_1
    invoke-interface {p0, p3}, Lgnu/lists/Array;->getEffectiveIndex([I)I

    move-result v5

    return v5
.end method

.method public static make(Lgnu/lists/Array;Ljava/lang/Object;)Lgnu/lists/Array;
    .locals 9
    .parameter "shape"
    .parameter "value"

    .prologue
    .line 28
    const/4 v8, 0x0

    invoke-interface {p0, v8}, Lgnu/lists/Array;->getSize(I)I

    move-result v5

    .line 29
    .local v5, rank:I
    new-array v0, v5, [I

    .line 30
    .local v0, dimensions:[I
    const/4 v4, 0x0

    .line 31
    .local v4, lowBounds:[I
    const/4 v7, 0x1

    .line 32
    .local v7, total:I
    move v2, v5

    .local v2, i:I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 34
    mul-int/lit8 v8, v2, 0x2

    invoke-interface {p0, v8}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 35
    .local v3, lo:I
    mul-int/lit8 v8, v2, 0x2

    add-int/lit8 v8, v8, 0x1

    invoke-interface {p0, v8}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 36
    .local v1, hi:I
    sub-int v6, v1, v3

    .line 37
    .local v6, size:I
    aput v6, v0, v2

    .line 38
    if-eqz v3, :cond_1

    .line 40
    if-nez v4, :cond_0

    .line 41
    new-array v4, v5, [I

    .line 42
    :cond_0
    aput v3, v4, v2

    .line 44
    :cond_1
    mul-int/2addr v7, v6

    .line 45
    goto :goto_0

    .line 46
    .end local v1           #hi:I
    .end local v3           #lo:I
    .end local v6           #size:I
    :cond_2
    new-instance v8, Lgnu/lists/FVector;

    invoke-direct {v8, v7, p1}, Lgnu/lists/FVector;-><init>(ILjava/lang/Object;)V

    invoke-static {v4, v0, v8}, Lgnu/lists/GeneralArray;->makeSimple([I[ILgnu/lists/SimpleVector;)Lgnu/lists/Array;

    move-result-object v8

    return-object v8
.end method

.method public static makeSimple(Lgnu/lists/Array;Lgnu/lists/SimpleVector;)Lgnu/lists/Array;
    .locals 7
    .parameter "shape"
    .parameter "base"

    .prologue
    .line 51
    const/4 v6, 0x0

    invoke-interface {p0, v6}, Lgnu/lists/Array;->getSize(I)I

    move-result v5

    .line 52
    .local v5, rank:I
    new-array v0, v5, [I

    .line 53
    .local v0, dimensions:[I
    const/4 v4, 0x0

    .line 54
    .local v4, lowBounds:[I
    move v2, v5

    .local v2, i:I
    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 56
    mul-int/lit8 v6, v2, 0x2

    invoke-interface {p0, v6}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 57
    .local v3, lo:I
    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-interface {p0, v6}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 58
    .local v1, hi:I
    sub-int v6, v1, v3

    aput v6, v0, v2

    .line 59
    if-eqz v3, :cond_0

    .line 61
    if-nez v4, :cond_1

    .line 62
    new-array v4, v5, [I

    .line 63
    :cond_1
    aput v3, v4, v2

    goto :goto_0

    .line 66
    .end local v1           #hi:I
    .end local v3           #lo:I
    :cond_2
    invoke-static {v4, v0, p1}, Lgnu/lists/GeneralArray;->makeSimple([I[ILgnu/lists/SimpleVector;)Lgnu/lists/Array;

    move-result-object v6

    return-object v6
.end method

.method public static shape([Ljava/lang/Object;)Lgnu/lists/Array;
    .locals 7
    .parameter "vals"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 18
    array-length v2, p0

    .line 19
    .local v2, len:I
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    .line 20
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "shape: not an even number of arguments"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 21
    :cond_0
    shr-int/lit8 v0, v2, 0x1

    .line 22
    .local v0, d:I
    new-array v1, v4, [I

    aput v0, v1, v6

    const/4 v3, 0x1

    aput v4, v1, v3

    .line 23
    .local v1, dims:[I
    new-instance v3, Lgnu/lists/FVector;

    invoke-direct {v3, p0}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    sget-object v4, Lgnu/kawa/functions/Arrays;->zeros2:[I

    sget-object v5, Lgnu/kawa/functions/Arrays;->shapeStrides:[I

    invoke-virtual {v3, v4, v1, v6, v5}, Lgnu/lists/FVector;->transpose([I[II[I)Lgnu/lists/Array;

    move-result-object v3

    return-object v3
.end method

.method public static shareArray(Lgnu/lists/Array;Lgnu/lists/Array;Lgnu/mapping/Procedure;)Lgnu/lists/Array;
    .locals 9
    .parameter "array"
    .parameter "shape"
    .parameter "proc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lgnu/lists/Array;->getSize(I)I

    move-result v7

    .line 92
    .local v7, rank:I
    new-array v0, v7, [Ljava/lang/Object;

    .line 93
    .local v0, args:[Ljava/lang/Object;
    new-array v1, v7, [I

    .line 94
    .local v1, dimensions:[I
    new-array v6, v7, [I

    .line 95
    .local v6, lowBounds:[I
    const/4 v2, 0x0

    .line 96
    .local v2, empty:Z
    move v3, v7

    .local v3, i:I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3           #i:I
    .local v4, i:I
    if-ltz v4, :cond_1

    .line 98
    mul-int/lit8 v3, v4, 0x2

    invoke-interface {p1, v3}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v3

    .line 99
    .local v3, low:Ljava/lang/Object;
    aput-object v3, v0, v4

    .line 100
    check-cast v3, Ljava/lang/Number;

    .end local v3           #low:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 101
    .local v5, lo:I
    aput v5, v6, v4

    .line 102
    mul-int/lit8 v3, v4, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p1, v3}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 103
    .local v3, hi:I
    sub-int/2addr v3, v5

    .line 104
    .local v3, size:I
    aput v3, v1, v4

    .line 105
    if-gtz v3, :cond_0

    .line 106
    const/4 v2, 0x1

    :cond_0
    move v3, v4

    .line 107
    .end local v4           #i:I
    .local v3, i:I
    goto :goto_0

    .line 108
    .end local v3           #i:I
    .end local v5           #lo:I
    .restart local v4       #i:I
    :cond_1
    invoke-interface {p0}, Lgnu/lists/Array;->rank()I

    move-result p1

    .line 109
    .local p1, arank:I
    new-array v5, v7, [I

    .line 111
    .local v5, offsets:[I
    if-eqz v2, :cond_2

    .line 112
    const/4 p1, 0x0

    .line 133
    .end local v2           #empty:Z
    .end local v4           #i:I
    .end local v7           #rank:I
    .local p1, offset0:I
    :goto_1
    invoke-interface {p0, v6, v1, p1, v5}, Lgnu/lists/Array;->transpose([I[II[I)Lgnu/lists/Array;

    move-result-object p0

    .end local p0
    return-object p0

    .line 115
    .restart local v2       #empty:Z
    .restart local v4       #i:I
    .restart local v7       #rank:I
    .restart local p0
    .local p1, arank:I
    :cond_2
    new-array v8, p1, [I

    .line 116
    .local v8, work:[I
    invoke-static {p0, p2, v0, v8}, Lgnu/kawa/functions/Arrays;->effectiveIndex(Lgnu/lists/Array;Lgnu/mapping/Procedure;[Ljava/lang/Object;[I)I

    move-result v4

    .line 117
    .local v4, offset0:I
    move p1, v7

    .end local v2           #empty:Z
    .end local v7           #rank:I
    .local p1, i:I
    :goto_2
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_4

    .line 119
    aget v3, v1, p1

    .line 120
    .local v3, size:I
    aget v2, v6, p1

    .line 121
    .local v2, lo:I
    const/4 v7, 0x1

    if-gt v3, v7, :cond_3

    .line 122
    const/4 v2, 0x0

    aput v2, v5, p1

    goto :goto_2

    .line 125
    :cond_3
    aget-object v3, v0, p1

    .line 126
    .local v3, low:Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    .end local v2           #lo:I
    move-result-object v2

    aput-object v2, v0, p1

    .line 127
    invoke-static {p0, p2, v0, v8}, Lgnu/kawa/functions/Arrays;->effectiveIndex(Lgnu/lists/Array;Lgnu/mapping/Procedure;[Ljava/lang/Object;[I)I

    move-result v2

    sub-int/2addr v2, v4

    aput v2, v5, p1

    .line 129
    aput-object v3, v0, p1

    goto :goto_2

    .end local v3           #low:Ljava/lang/Object;
    :cond_4
    move p1, v4

    .end local v4           #offset0:I
    .local p1, offset0:I
    goto :goto_1
.end method
