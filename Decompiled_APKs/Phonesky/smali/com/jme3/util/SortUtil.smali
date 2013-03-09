.class public Lcom/jme3/util/SortUtil;
.super Ljava/lang/Object;
.source "SortUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static merge([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V
    .locals 9
    .parameter "src"
    .parameter "dest"
    .parameter "low"
    .parameter "middle"
    .parameter "high"
    .parameter "comp"

    .prologue
    .line 328
    add-int/lit8 v1, p3, -0x1

    .line 329
    .local v1, leftEnd:I
    move v5, p2

    .line 330
    .local v5, pos:I
    sub-int v7, p4, p2

    add-int/lit8 v4, v7, 0x1

    .local v4, numElements:I
    move v6, v5

    .end local v5           #pos:I
    .local v6, pos:I
    move v3, p3

    .end local p3
    .local v3, middle:I
    move v2, p2

    .line 332
    .end local p2
    .local v2, low:I
    :goto_0
    if-gt v2, v1, :cond_1

    if-gt v3, p4, :cond_1

    .line 333
    aget-object v7, p0, v2

    aget-object v8, p0, v3

    invoke-interface {p5, v7, v8}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-gtz v7, :cond_0

    .line 334
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pos:I
    .restart local v5       #pos:I
    add-int/lit8 p2, v2, 0x1

    .end local v2           #low:I
    .restart local p2
    aget-object v7, p0, v2

    aput-object v7, p1, v6

    move v6, v5

    .end local v5           #pos:I
    .restart local v6       #pos:I
    move v2, p2

    .end local p2
    .restart local v2       #low:I
    goto :goto_0

    .line 336
    :cond_0
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pos:I
    .restart local v5       #pos:I
    add-int/lit8 p3, v3, 0x1

    .end local v3           #middle:I
    .restart local p3
    aget-object v7, p0, v3

    aput-object v7, p1, v6

    move v6, v5

    .end local v5           #pos:I
    .restart local v6       #pos:I
    move v3, p3

    .end local p3
    .restart local v3       #middle:I
    goto :goto_0

    .line 340
    :cond_1
    :goto_1
    if-gt v2, v1, :cond_2

    .line 341
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pos:I
    .restart local v5       #pos:I
    add-int/lit8 p2, v2, 0x1

    .end local v2           #low:I
    .restart local p2
    aget-object v7, p0, v2

    aput-object v7, p1, v6

    move v6, v5

    .end local v5           #pos:I
    .restart local v6       #pos:I
    move v2, p2

    .end local p2
    .restart local v2       #low:I
    goto :goto_1

    .line 344
    :cond_2
    :goto_2
    if-gt v3, p4, :cond_3

    .line 345
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pos:I
    .restart local v5       #pos:I
    add-int/lit8 p3, v3, 0x1

    .end local v3           #middle:I
    .restart local p3
    aget-object v7, p0, v3

    aput-object v7, p1, v6

    move v6, v5

    .end local v5           #pos:I
    .restart local v6       #pos:I
    move v3, p3

    .end local p3
    .restart local v3       #middle:I
    goto :goto_2

    .line 348
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-ge v0, v4, :cond_4

    .line 349
    aget-object v7, p1, p4

    aput-object v7, p0, p4

    .line 348
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_3

    .line 351
    :cond_4
    return-void
.end method

.method public static msort([Ljava/lang/Object;[Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 7
    .parameter "src"
    .parameter "dest"
    .parameter "low"
    .parameter "high"
    .parameter "comp"

    .prologue
    .line 318
    if-ge p2, p3, :cond_0

    .line 319
    add-int v0, p2, p3

    div-int/lit8 v6, v0, 0x2

    .line 320
    .local v6, center:I
    invoke-static {p0, p1, p2, v6, p4}, Lcom/jme3/util/SortUtil;->msort([Ljava/lang/Object;[Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 321
    add-int/lit8 v0, v6, 0x1

    invoke-static {p0, p1, v0, p3, p4}, Lcom/jme3/util/SortUtil;->msort([Ljava/lang/Object;[Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 322
    add-int/lit8 v3, v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/jme3/util/SortUtil;->merge([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V

    .line 324
    .end local v6           #center:I
    :cond_0
    return-void
.end method
