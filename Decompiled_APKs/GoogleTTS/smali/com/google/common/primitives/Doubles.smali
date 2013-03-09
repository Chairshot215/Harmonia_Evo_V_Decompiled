.class public final Lcom/google/common/primitives/Doubles;
.super Ljava/lang/Object;
.source "Doubles.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Doubles$DoubleArrayAsList;,
        Lcom/google/common/primitives/Doubles$LexicographicalComparator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([DDII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Doubles;->indexOf([DDII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([DDII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Doubles;->lastIndexOf([DDII)I

    move-result v0

    return v0
.end method

.method public static compare(DD)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 72
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public static hashCode(D)I
    .locals 1
    .parameter "value"

    .prologue
    .line 54
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    return v0
.end method

.method private static indexOf([DDII)I
    .locals 3
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 111
    move v0, p3

    .local v0, i:I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 112
    aget-wide v1, p0, v0

    cmpl-double v1, v1, p1

    if-nez v1, :cond_0

    .line 116
    .end local v0           #i:I
    :goto_1
    return v0

    .line 111
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static lastIndexOf([DDII)I
    .locals 3
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 169
    add-int/lit8 v0, p4, -0x1

    .local v0, i:I
    :goto_0
    if-lt v0, p3, :cond_1

    .line 170
    aget-wide v1, p0, v0

    cmpl-double v1, v1, p1

    if-nez v1, :cond_0

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
