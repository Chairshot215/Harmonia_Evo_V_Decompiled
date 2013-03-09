.class public final Lcom/google/common/primitives/UnsignedBytes;
.super Ljava/lang/Object;
.source "UnsignedBytes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkedCast(J)B
    .locals 7
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    const/16 v0, 0x8

    shr-long v3, p0, v0

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "out of range: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 49
    long-to-int v0, p0

    int-to-byte v0, v0

    return v0

    :cond_0
    move v0, v2

    .line 48
    goto :goto_0
.end method

.method public static compare(BB)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 82
    and-int/lit16 v0, p0, 0xff

    and-int/lit16 v1, p1, 0xff

    sub-int/2addr v0, v1

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 4
    .parameter "separator"
    .parameter "array"

    .prologue
    .line 135
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    array-length v2, p1

    if-nez v2, :cond_0

    .line 137
    const-string v2, ""

    .line 146
    :goto_0
    return-object v2

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 142
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 144
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 146
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 166
    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([B)B
    .locals 5
    .parameter "array"

    .prologue
    const/4 v4, 0x0

    .line 114
    array-length v3, p0

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 115
    aget-byte v3, p0, v4

    and-int/lit16 v1, v3, 0xff

    .line 116
    .local v1, max:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 117
    aget-byte v3, p0, v0

    and-int/lit16 v2, v3, 0xff

    .line 118
    .local v2, next:I
    if-le v2, v1, :cond_0

    .line 119
    move v1, v2

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #max:I
    .end local v2           #next:I
    :cond_1
    move v3, v4

    .line 114
    goto :goto_0

    .line 122
    .restart local v0       #i:I
    .restart local v1       #max:I
    :cond_2
    int-to-byte v3, v1

    return v3
.end method

.method public static varargs min([B)B
    .locals 5
    .parameter "array"

    .prologue
    const/4 v4, 0x0

    .line 94
    array-length v3, p0

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 95
    aget-byte v3, p0, v4

    and-int/lit16 v1, v3, 0xff

    .line 96
    .local v1, min:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 97
    aget-byte v3, p0, v0

    and-int/lit16 v2, v3, 0xff

    .line 98
    .local v2, next:I
    if-ge v2, v1, :cond_0

    .line 99
    move v1, v2

    .line 96
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #min:I
    .end local v2           #next:I
    :cond_1
    move v3, v4

    .line 94
    goto :goto_0

    .line 102
    .restart local v0       #i:I
    .restart local v1       #min:I
    :cond_2
    int-to-byte v3, v1

    return v3
.end method

.method public static saturatedCast(J)B
    .locals 2
    .parameter "value"

    .prologue
    .line 61
    const-wide/16 v0, 0xff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 62
    const/4 v0, -0x1

    .line 67
    :goto_0
    return v0

    .line 64
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 65
    const/4 v0, 0x0

    goto :goto_0

    .line 67
    :cond_1
    long-to-int v0, p0

    int-to-byte v0, v0

    goto :goto_0
.end method
