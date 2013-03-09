.class public Lorg/javia/arity/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final FLOAT_PRECISION:I = -0x1

.field public static final LEN_UNLIMITED:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    .line 182
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v8

    if-nez v0, :cond_0

    .line 183
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, p1, p2}, Lorg/javia/arity/Util;->doubleToString(DII)Ljava/lang/String;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    .line 186
    :cond_0
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    const-string v0, "NaN"

    goto :goto_0

    .line 190
    :cond_1
    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    .line 191
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->isInfinite()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 192
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_2

    move-wide v6, v0

    move-wide v1, v8

    .line 198
    :goto_1
    cmpl-double v0, v6, v8

    if-nez v0, :cond_3

    .line 199
    invoke-static {v1, v2, p1, p2}, Lorg/javia/arity/Util;->doubleToString(DII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 194
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_f

    move-wide v6, v8

    move-wide v1, v4

    .line 195
    goto :goto_1

    .line 203
    :cond_3
    cmpl-double v0, v1, v8

    if-eqz v0, :cond_7

    cmpg-double v0, v6, v8

    if-ltz v0, :cond_7

    const/4 v0, 0x1

    move v5, v0

    .line 204
    :goto_2
    cmpl-double v0, v1, v8

    if-nez v0, :cond_8

    const-string v0, ""

    .line 205
    :goto_3
    invoke-static {v6, v7, p2}, Lorg/javia/arity/Util;->doubleToString(DI)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "*"

    .line 208
    :goto_4
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 209
    const-string v2, ""

    .line 211
    :cond_4
    const-string v4, "-1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 212
    const-string v4, "-"

    .line 215
    :goto_5
    const/16 v2, 0x64

    if-eq p1, v2, :cond_d

    .line 216
    add-int/lit8 v2, p1, -0x1

    .line 217
    if-eqz v5, :cond_5

    .line 218
    add-int/lit8 v2, v2, -0x1

    .line 220
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v6, v2, v6

    .line 222
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    .line 223
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    .line 224
    add-int v2, v7, v8

    sub-int v9, v2, v6

    .line 225
    if-lez v9, :cond_d

    .line 226
    sub-int v2, v7, v8

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 227
    if-le v9, v10, :cond_a

    sub-int v2, v9, v10

    div-int/lit8 v2, v2, 0x2

    .line 228
    :goto_6
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v9, v2, v3

    .line 231
    if-le v7, v8, :cond_b

    .line 232
    sub-int v3, v7, v9

    .line 233
    sub-int v2, v8, v2

    .line 238
    :goto_7
    add-int v7, v3, v2

    if-le v7, v6, :cond_6

    .line 239
    add-int/lit8 v2, v2, -0x1

    .line 241
    :cond_6
    invoke-static {v0, v3}, Lorg/javia/arity/Util;->sizeTruncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 242
    invoke-static {v4, v2}, Lorg/javia/arity/Util;->sizeTruncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v3

    .line 245
    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v5, :cond_c

    const-string v2, "+"

    :goto_9
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    move v5, v3

    .line 203
    goto/16 :goto_2

    .line 204
    :cond_8
    invoke-static {v1, v2, p2}, Lorg/javia/arity/Util;->doubleToString(DI)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 206
    :cond_9
    const-string v1, ""

    goto/16 :goto_4

    :cond_a
    move v2, v3

    .line 227
    goto :goto_6

    .line 235
    :cond_b
    sub-int v3, v7, v2

    .line 236
    sub-int v2, v8, v9

    goto :goto_7

    .line 245
    :cond_c
    const-string v2, ""

    goto :goto_9

    :cond_d
    move-object v2, v0

    move-object v0, v4

    goto :goto_8

    :cond_e
    move-object v4, v2

    goto/16 :goto_5

    :cond_f
    move-wide v6, v0

    move-wide v1, v4

    goto/16 :goto_1
.end method

.method public static doubleToString(DI)Ljava/lang/String;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v8, -0x1

    const/16 v10, 0x2e

    const/16 v9, 0x30

    const/4 v5, 0x0

    .line 87
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 88
    if-ne p2, v8, :cond_2

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_0
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 90
    if-lez p2, :cond_0

    const/16 v1, 0xd

    if-le p2, v1, :cond_3

    :cond_0
    const/16 v1, 0x11

    .line 92
    :goto_1
    const/16 v2, 0x45

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 93
    if-eq v2, v8, :cond_4

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    .line 94
    :goto_2
    if-eq v2, v8, :cond_1

    .line 95
    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 97
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    move v3, v5

    .line 101
    :goto_3
    if-ge v3, v0, :cond_5

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-eq v2, v10, :cond_5

    .line 102
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 88
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_3
    rsub-int/lit8 v1, p2, 0x10

    goto :goto_1

    :cond_4
    move v6, v5

    .line 93
    goto :goto_2

    .line 104
    :cond_5
    add-int v2, v6, v3

    .line 105
    if-ge v3, v0, :cond_6

    .line 106
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 107
    add-int/lit8 v0, v0, -0x1

    :cond_6
    move v3, v5

    .line 111
    :goto_4
    if-ge v3, v0, :cond_7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_7

    .line 112
    add-int/lit8 v6, v1, 0x1

    .line 111
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v6

    goto :goto_4

    .line 115
    :cond_7
    if-ge v1, v0, :cond_14

    .line 116
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v6, 0x35

    if-lt v3, v6, :cond_13

    .line 118
    add-int/lit8 v3, v1, -0x1

    :goto_5
    if-ltz v3, :cond_8

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    const/16 v8, 0x39

    if-ne v6, v8, :cond_8

    .line 119
    invoke-virtual {v7, v3, v9}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 118
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 121
    :cond_8
    if-ltz v3, :cond_a

    .line 122
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, 0x1

    int-to-char v6, v6

    invoke-virtual {v7, v3, v6}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    move v11, v2

    move v2, v1

    move v1, v11

    .line 129
    :goto_6
    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 133
    :goto_7
    const/4 v2, -0x5

    if-lt v1, v2, :cond_9

    const/16 v2, 0xa

    if-le v1, v2, :cond_b

    .line 134
    :cond_9
    invoke-virtual {v7, v4, v10}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 135
    add-int/lit8 v0, v1, -0x1

    .line 146
    :goto_8
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 150
    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_f

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v9, :cond_f

    .line 151
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 150
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 124
    :cond_a
    const/16 v3, 0x31

    invoke-virtual {v7, v5, v3}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 125
    add-int/lit8 v3, v1, 0x1

    .line 126
    add-int/lit8 v1, v2, 0x1

    move v2, v3

    goto :goto_6

    .line 137
    :cond_b
    :goto_a
    if-ge v0, v1, :cond_c

    .line 138
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_c
    move v0, v1

    .line 140
    :goto_b
    if-gtz v0, :cond_d

    .line 141
    invoke-virtual {v7, v5, v9}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 143
    :cond_d
    if-gtz v1, :cond_e

    move v0, v4

    :goto_c
    invoke-virtual {v7, v0, v10}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move v0, v5

    .line 144
    goto :goto_8

    :cond_e
    move v0, v1

    .line 143
    goto :goto_c

    .line 153
    :cond_f
    if-ltz v1, :cond_10

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v10, :cond_10

    .line 154
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 157
    :cond_10
    if-eqz v0, :cond_11

    .line 158
    const/16 v1, 0x45

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 160
    :cond_11
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_12

    .line 161
    const/16 v0, 0x2d

    invoke-virtual {v7, v5, v0}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 163
    :cond_12
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    move v11, v2

    move v2, v1

    move v1, v11

    goto :goto_6

    :cond_14
    move v1, v2

    goto :goto_7
.end method

.method public static doubleToString(DII)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    invoke-static {p0, p1, p3}, Lorg/javia/arity/Util;->doubleToString(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/javia/arity/Util;->sizeTruncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static shortApprox(DD)D
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 34
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/javia/arity/MoreMath;->intLog10(D)I

    move-result v2

    invoke-static {v2}, Lorg/javia/arity/MoreMath;->intExp10(I)D

    move-result-wide v2

    .line 35
    div-double/2addr v0, v2

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    .line 36
    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_0

    neg-double v0, v0

    :cond_0
    return-wide v0
.end method

.method static sizeTruncate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x2e

    const/16 v8, 0x2d

    const/4 v2, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 51
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-object p0

    .line 54
    :cond_1
    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 55
    if-eq v5, v7, :cond_4

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    .line 58
    sub-int v3, p1, v3

    .line 59
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 60
    if-lt v6, v2, :cond_0

    const/4 v3, 0x2

    if-ge v6, v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v8, :cond_0

    .line 63
    :cond_2
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 64
    if-ne v3, v7, :cond_3

    move v3, v4

    .line 67
    :cond_3
    if-le v3, v6, :cond_7

    .line 68
    if-eq v5, v7, :cond_5

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 69
    :goto_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_6

    .line 70
    :goto_3
    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v0, v3

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x45

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0, p1}, Lorg/javia/arity/Util;->sizeTruncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 55
    :cond_4
    const-string v0, ""

    goto :goto_1

    :cond_5
    move v0, v1

    .line 68
    goto :goto_2

    :cond_6
    move v2, v1

    .line 69
    goto :goto_3

    .line 75
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method
