.class public final Lcom/google/common/primitives/SignedBytes;
.super Ljava/lang/Object;
.source "SignedBytes.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkedCast(J)B
    .locals 6
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 48
    long-to-int v1, p0

    int-to-byte v0, v1

    .line 49
    .local v0, result:B
    int-to-long v4, v0

    cmp-long v1, v4, p0

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "Out of range: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v4, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 50
    return v0

    :cond_0
    move v1, v3

    .line 49
    goto :goto_0
.end method

.method public static compare(BB)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 81
    sub-int v0, p0, p1

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 4
    .parameter "separator"
    .parameter "array"

    .prologue
    .line 132
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    array-length v2, p1

    if-nez v2, :cond_0

    .line 134
    const-string v2, ""

    .line 143
    :goto_0
    return-object v2

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 139
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-byte v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 141
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
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
    .line 163
    sget-object v0, Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([B)B
    .locals 4
    .parameter "array"

    .prologue
    const/4 v3, 0x0

    .line 112
    array-length v2, p0

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 113
    aget-byte v1, p0, v3

    .line 114
    .local v1, max:B
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 115
    aget-byte v2, p0, v0

    if-le v2, v1, :cond_0

    .line 116
    aget-byte v1, p0, v0

    .line 114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #max:B
    :cond_1
    move v2, v3

    .line 112
    goto :goto_0

    .line 119
    .restart local v0       #i:I
    .restart local v1       #max:B
    :cond_2
    return v1
.end method

.method public static varargs min([B)B
    .locals 4
    .parameter "array"

    .prologue
    const/4 v3, 0x0

    .line 93
    array-length v2, p0

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 94
    aget-byte v1, p0, v3

    .line 95
    .local v1, min:B
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 96
    aget-byte v2, p0, v0

    if-ge v2, v1, :cond_0

    .line 97
    aget-byte v1, p0, v0

    .line 95
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #min:B
    :cond_1
    move v2, v3

    .line 93
    goto :goto_0

    .line 100
    .restart local v0       #i:I
    .restart local v1       #min:B
    :cond_2
    return v1
.end method

.method public static saturatedCast(J)B
    .locals 2
    .parameter "value"

    .prologue
    .line 62
    const-wide/16 v0, 0x7f

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 63
    const/16 v0, 0x7f

    .line 68
    :goto_0
    return v0

    .line 65
    :cond_0
    const-wide/16 v0, -0x80

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 66
    const/16 v0, -0x80

    goto :goto_0

    .line 68
    :cond_1
    long-to-int v0, p0

    int-to-byte v0, v0

    goto :goto_0
.end method
