.class public Lcom/htc/musicenhancer/util/Levenshtein;
.super Ljava/lang/Object;
.source "Levenshtein.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areStringsTheSame(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .parameter "strA"
    .parameter "strB"
    .parameter "distanceThresholdPercentage"

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/htc/musicenhancer/util/Levenshtein;->computeStringDistance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 42
    .local v0, distance:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 43
    .local v2, strLength:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 47
    :cond_0
    int-to-float v3, v0

    int-to-float v4, v2

    div-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 48
    .local v1, levenshteinPercentage:I
    if-gt v1, p2, :cond_1

    .line 49
    const/4 v3, 0x1

    .line 52
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static computeStringDistance(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "strA"
    .parameter "strB"

    .prologue
    .line 13
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "NULL input to Levenshtein string comparer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0

    .line 22
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {p0, p1}, Lcom/htc/musicenhancer/util/Levenshtein;->getLevenshteinDistance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static getLevenshteinDistance(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .parameter "s"
    .parameter "t"

    .prologue
    const/4 v10, 0x0

    .line 59
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 60
    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Strings must not be null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 80
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 81
    .local v6, n:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 83
    .local v5, m:I
    if-nez v6, :cond_2

    move v10, v5

    .line 132
    :goto_0
    return v10

    .line 85
    :cond_2
    if-nez v5, :cond_3

    move v10, v6

    .line 86
    goto :goto_0

    .line 89
    :cond_3
    if-le v6, v5, :cond_4

    .line 91
    move-object v9, p0

    .line 92
    .local v9, tmp:Ljava/lang/String;
    move-object p0, p1

    .line 93
    move-object p1, v9

    .line 94
    move v6, v5

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 98
    .end local v9           #tmp:Ljava/lang/String;
    :cond_4
    add-int/lit8 v11, v6, 0x1

    new-array v7, v11, [I

    .line 99
    .local v7, p:[I
    add-int/lit8 v11, v6, 0x1

    new-array v2, v11, [I

    .line 110
    .local v2, d:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-gt v3, v6, :cond_5

    .line 111
    aput v3, v7, v3

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 114
    :cond_5
    const/4 v4, 0x1

    .local v4, j:I
    :goto_2
    if-gt v4, v5, :cond_8

    .line 115
    add-int/lit8 v11, v4, -0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 116
    .local v8, t_j:C
    aput v4, v2, v10

    .line 118
    const/4 v3, 0x1

    :goto_3
    if-gt v3, v6, :cond_7

    .line 119
    add-int/lit8 v11, v3, -0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v8, :cond_6

    move v1, v10

    .line 121
    .local v1, cost:I
    :goto_4
    add-int/lit8 v11, v3, -0x1

    aget v11, v2, v11

    add-int/lit8 v11, v11, 0x1

    aget v12, v7, v3

    add-int/lit8 v12, v12, 0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/lit8 v12, v3, -0x1

    aget v12, v7, v12

    add-int/2addr v12, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    aput v11, v2, v3

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 119
    .end local v1           #cost:I
    :cond_6
    const/4 v1, 0x1

    goto :goto_4

    .line 125
    :cond_7
    move-object v0, v7

    .line 126
    .local v0, _d:[I
    move-object v7, v2

    .line 127
    move-object v2, v0

    .line 114
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 132
    .end local v0           #_d:[I
    .end local v8           #t_j:C
    :cond_8
    aget v10, v7, v6

    goto :goto_0
.end method
