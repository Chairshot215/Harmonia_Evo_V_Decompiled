.class public final Lcom/google/common/primitives/Booleans;
.super Ljava/lang/Object;
.source "Booleans.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Booleans$BooleanArrayAsList;,
        Lcom/google/common/primitives/Booleans$LexicographicalComparator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([ZZII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Booleans;->indexOf([ZZII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([ZZII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Booleans;->lastIndexOf([ZZII)I

    move-result v0

    return v0
.end method

.method public static compare(ZZ)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 69
    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static hashCode(Z)I
    .locals 1
    .parameter "value"

    .prologue
    .line 55
    if-eqz p0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method private static indexOf([ZZII)I
    .locals 2
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 115
    move v0, p2

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 116
    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 120
    .end local v0           #i:I
    :goto_1
    return v0

    .line 115
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static lastIndexOf([ZZII)I
    .locals 2
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 169
    add-int/lit8 v0, p3, -0x1

    .local v0, i:I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 170
    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 174
    .end local v0           #i:I
    :goto_1
    return v0

    .line 169
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 174
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
