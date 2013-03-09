.class public Lgnu/lists/GeneralArray;
.super Lgnu/lists/AbstractSequence;
.source "GeneralArray.java"

# interfaces
.implements Lgnu/lists/Array;


# static fields
.field static final zeros:[I


# instance fields
.field base:Lgnu/lists/SimpleVector;

.field dimensions:[I

.field lowBounds:[I

.field offset:I

.field simple:Z

.field strides:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [I

    sput-object v0, Lgnu/lists/GeneralArray;->zeros:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/lists/GeneralArray;->simple:Z

    .line 58
    return-void
.end method

.method public constructor <init>([I)V
    .locals 5
    .parameter "dimensions"

    .prologue
    .line 61
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    .line 27
    const/4 v4, 0x1

    iput-boolean v4, p0, Lgnu/lists/GeneralArray;->simple:Z

    .line 62
    const/4 v3, 0x1

    .line 63
    .local v3, total:I
    array-length v1, p1

    .line 64
    .local v1, rank:I
    sget-object v4, Lgnu/lists/GeneralArray;->zeros:[I

    array-length v4, v4

    if-gt v1, v4, :cond_0

    .line 65
    sget-object v4, Lgnu/lists/GeneralArray;->zeros:[I

    iput-object v4, p0, Lgnu/lists/GeneralArray;->lowBounds:[I

    .line 68
    :goto_0
    new-array v2, v1, [I

    .line 69
    .local v2, strides:[I
    move v0, v1

    .local v0, i:I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 71
    aput v3, v2, v0

    .line 72
    aget v4, p1, v0

    mul-int/2addr v3, v4

    goto :goto_1

    .line 67
    .end local v0           #i:I
    .end local v2           #strides:[I
    :cond_0
    new-array v4, v1, [I

    iput-object v4, p0, Lgnu/lists/GeneralArray;->lowBounds:[I

    goto :goto_0

    .line 74
    .restart local v0       #i:I
    .restart local v2       #strides:[I
    :cond_1
    new-instance v4, Lgnu/lists/FVector;

    invoke-direct {v4, v3}, Lgnu/lists/FVector;-><init>(I)V

    iput-object v4, p0, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    .line 75
    iput-object p1, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    .line 76
    const/4 v4, 0x0

    iput v4, p0, Lgnu/lists/GeneralArray;->offset:I

    .line 77
    return-void
.end method

.method public static makeSimple([I[ILgnu/lists/SimpleVector;)Lgnu/lists/Array;
    .locals 6
    .parameter "lowBounds"
    .parameter "dimensions"
    .parameter "base"

    .prologue
    .line 32
    array-length v1, p1

    .line 33
    .local v1, d:I
    if-nez p0, :cond_0

    .line 35
    sget-object p0, Lgnu/lists/GeneralArray;->zeros:[I

    .line 36
    array-length v5, p0

    if-le v1, v5, :cond_0

    .line 37
    new-array p0, v1, [I

    .line 39
    :cond_0
    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    const/4 v5, 0x0

    aget v5, p0, v5

    if-nez v5, :cond_1

    move-object v5, p2

    .line 53
    :goto_0
    return-object v5

    .line 41
    :cond_1
    new-instance v0, Lgnu/lists/GeneralArray;

    invoke-direct {v0}, Lgnu/lists/GeneralArray;-><init>()V

    .line 42
    .local v0, array:Lgnu/lists/GeneralArray;
    new-array v4, v1, [I

    .line 43
    .local v4, strides:[I
    const/4 v3, 0x1

    .line 44
    .local v3, n:I
    move v2, v1

    .local v2, i:I
    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 46
    aput v3, v4, v2

    .line 47
    aget v5, p1, v2

    mul-int/2addr v3, v5

    goto :goto_1

    .line 49
    :cond_2
    iput-object v4, v0, Lgnu/lists/GeneralArray;->strides:[I

    .line 50
    iput-object p1, v0, Lgnu/lists/GeneralArray;->dimensions:[I

    .line 51
    iput-object p0, v0, Lgnu/lists/GeneralArray;->lowBounds:[I

    .line 52
    iput-object p2, v0, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    move-object v5, v0

    .line 53
    goto :goto_0
.end method

.method public static toString(Lgnu/lists/Array;Ljava/lang/StringBuffer;)V
    .locals 5
    .parameter "array"
    .parameter "sbuf"

    .prologue
    .line 175
    const-string v4, "#<array"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    invoke-interface {p0}, Lgnu/lists/Array;->rank()I

    move-result v2

    .line 177
    .local v2, r:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 179
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 180
    invoke-interface {p0, v0}, Lgnu/lists/Array;->getLowBound(I)I

    move-result v1

    .line 181
    .local v1, lo:I
    invoke-interface {p0, v0}, Lgnu/lists/Array;->getSize(I)I

    move-result v3

    .line 182
    .local v3, sz:I
    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 185
    const/16 v4, 0x3a

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 187
    :cond_0
    add-int v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    .end local v1           #lo:I
    .end local v3           #sz:I
    :cond_1
    const/16 v4, 0x3e

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 190
    return-void
.end method


# virtual methods
.method public createPos(IZ)I
    .locals 6
    .parameter "index"
    .parameter "isAfter"

    .prologue
    .line 103
    iget v3, p0, Lgnu/lists/GeneralArray;->offset:I

    .line 104
    .local v3, total:I
    iget-object v4, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    array-length v2, v4

    .local v2, i:I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 106
    iget-object v4, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    aget v1, v4, v2

    .line 107
    .local v1, dim:I
    rem-int v0, p1, v1

    .line 108
    .local v0, cur:I
    div-int/2addr p1, v1

    .line 109
    iget-object v4, p0, Lgnu/lists/GeneralArray;->strides:[I

    aget v4, v4, v2

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    .line 110
    goto :goto_0

    .line 111
    .end local v0           #cur:I
    .end local v1           #dim:I
    :cond_0
    shl-int/lit8 v4, v3, 0x1

    if-eqz p2, :cond_1

    const/4 v5, 0x1

    :goto_1
    or-int/2addr v4, v5

    return v4

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lgnu/lists/GeneralArray;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get([I)Ljava/lang/Object;
    .locals 2
    .parameter "indexes"

    .prologue
    .line 131
    iget-object v0, p0, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {p0, p1}, Lgnu/lists/GeneralArray;->getEffectiveIndex([I)I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEffectiveIndex([I)I
    .locals 5
    .parameter "indexes"

    .prologue
    .line 84
    iget v3, p0, Lgnu/lists/GeneralArray;->offset:I

    .line 85
    .local v3, result:I
    iget-object v4, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    array-length v0, v4

    .local v0, i:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 87
    aget v1, p1, v0

    .line 88
    .local v1, index:I
    iget-object v4, p0, Lgnu/lists/GeneralArray;->lowBounds:[I

    aget v2, v4, v0

    .line 89
    .local v2, low:I
    if-lt v1, v2, :cond_0

    sub-int/2addr v1, v2

    iget-object v4, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    aget v4, v4, v0

    if-lt v1, v4, :cond_1

    .line 90
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 91
    :cond_1
    iget-object v4, p0, Lgnu/lists/GeneralArray;->strides:[I

    aget v4, v4, v0

    mul-int/2addr v4, v1

    add-int/2addr v3, v4

    .line 92
    goto :goto_0

    .line 93
    .end local v1           #index:I
    .end local v2           #low:I
    :cond_2
    return v3
.end method

.method public getLowBound(I)I
    .locals 1
    .parameter "dim"

    .prologue
    .line 150
    iget-object v0, p0, Lgnu/lists/GeneralArray;->lowBounds:[I

    aget v0, v0, p1

    return v0
.end method

.method public getRowMajor(I)Ljava/lang/Object;
    .locals 5
    .parameter "index"

    .prologue
    .line 116
    iget-boolean v4, p0, Lgnu/lists/GeneralArray;->simple:Z

    if-eqz v4, :cond_0

    .line 117
    iget-object v4, p0, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v4, p1}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 126
    :goto_0
    return-object v4

    .line 118
    :cond_0
    iget v3, p0, Lgnu/lists/GeneralArray;->offset:I

    .line 119
    .local v3, total:I
    iget-object v4, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    array-length v2, v4

    .local v2, i:I
    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 121
    iget-object v4, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    aget v1, v4, v2

    .line 122
    .local v1, dim:I
    rem-int v0, p1, v1

    .line 123
    .local v0, cur:I
    div-int/2addr p1, v1

    .line 124
    iget-object v4, p0, Lgnu/lists/GeneralArray;->strides:[I

    aget v4, v4, v2

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    .line 125
    goto :goto_1

    .line 126
    .end local v0           #cur:I
    .end local v1           #dim:I
    :cond_1
    iget-object v4, p0, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v4, v3}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method public getSize(I)I
    .locals 1
    .parameter "dim"

    .prologue
    .line 155
    iget-object v0, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    aget v0, v0, p1

    return v0
.end method

.method public rank()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    array-length v0, v0

    return v0
.end method

.method public set([ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "indexes"
    .parameter "value"

    .prologue
    .line 136
    iget-object v0, p0, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {p0, p1}, Lgnu/lists/GeneralArray;->getEffectiveIndex([I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 142
    const/4 v1, 0x1

    .line 143
    .local v1, total:I
    iget-object v2, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    array-length v0, v2

    .local v0, i:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 144
    iget-object v2, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    aget v2, v2, v0

    mul-int/2addr v1, v2

    goto :goto_0

    .line 145
    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 195
    .local v0, sbuf:Ljava/lang/StringBuffer;
    invoke-static {p0, v0}, Lgnu/lists/GeneralArray;->toString(Lgnu/lists/Array;Ljava/lang/StringBuffer;)V

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public transpose([I[II[I)Lgnu/lists/Array;
    .locals 4
    .parameter "lowBounds"
    .parameter "dimensions"
    .parameter "offset0"
    .parameter "factors"

    .prologue
    const/4 v3, 0x0

    .line 161
    array-length v1, p2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    aget v1, p1, v3

    if-nez v1, :cond_0

    new-instance v1, Lgnu/lists/GeneralArray1;

    invoke-direct {v1}, Lgnu/lists/GeneralArray1;-><init>()V

    move-object v0, v1

    .line 164
    .local v0, array:Lgnu/lists/GeneralArray;
    :goto_0
    iput p3, v0, Lgnu/lists/GeneralArray;->offset:I

    .line 165
    iput-object p4, v0, Lgnu/lists/GeneralArray;->strides:[I

    .line 166
    iput-object p2, v0, Lgnu/lists/GeneralArray;->dimensions:[I

    .line 167
    iput-object p1, v0, Lgnu/lists/GeneralArray;->lowBounds:[I

    .line 168
    iget-object v1, p0, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    iput-object v1, v0, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    .line 169
    iput-boolean v3, v0, Lgnu/lists/GeneralArray;->simple:Z

    .line 170
    return-object v0

    .line 161
    .end local v0           #array:Lgnu/lists/GeneralArray;
    :cond_0
    new-instance v1, Lgnu/lists/GeneralArray;

    invoke-direct {v1}, Lgnu/lists/GeneralArray;-><init>()V

    move-object v0, v1

    goto :goto_0
.end method
