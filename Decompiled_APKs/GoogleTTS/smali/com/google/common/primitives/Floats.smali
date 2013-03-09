.class public final Lcom/google/common/primitives/Floats;
.super Ljava/lang/Object;
.source "Floats.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Floats$FloatArrayAsList;,
        Lcom/google/common/primitives/Floats$LexicographicalComparator;
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

.method static synthetic access$000([FFII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Floats;->indexOf([FFII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([FFII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Floats;->lastIndexOf([FFII)I

    move-result v0

    return v0
.end method

.method public static compare(FF)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 69
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public static hashCode(F)I
    .locals 1
    .parameter "value"

    .prologue
    .line 55
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    return v0
.end method

.method private static indexOf([FFII)I
    .locals 2
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 108
    move v0, p2

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 109
    aget v1, p0, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    .line 113
    .end local v0           #i:I
    :goto_1
    return v0

    .line 108
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static lastIndexOf([FFII)I
    .locals 2
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 166
    add-int/lit8 v0, p3, -0x1

    .local v0, i:I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 167
    aget v1, p0, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    .line 171
    .end local v0           #i:I
    :goto_1
    return v0

    .line 166
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 171
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
