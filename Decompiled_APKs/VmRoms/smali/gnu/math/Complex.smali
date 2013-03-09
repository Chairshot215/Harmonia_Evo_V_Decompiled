.class public abstract Lgnu/math/Complex;
.super Lgnu/math/Quantity;
.source "Complex.java"


# static fields
.field private static imMinusOne:Lgnu/math/CComplex;

.field private static imOne:Lgnu/math/CComplex;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lgnu/math/Quantity;-><init>()V

    return-void
.end method

.method public static add(Lgnu/math/Complex;Lgnu/math/Complex;I)Lgnu/math/Complex;
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "k"

    .prologue
    .line 177
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object v0

    return-object v0
.end method

.method public static compare(Lgnu/math/Complex;Lgnu/math/Complex;)I
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 126
    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/math/RealNum;->compare(Ljava/lang/Object;)I

    move-result v0

    .line 127
    .local v0, code:I
    if-eqz v0, :cond_0

    move v1, v0

    .line 129
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/math/RealNum;->compare(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0
.end method

.method public static divide(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 223
    invoke-virtual {p0}, Lgnu/math/Complex;->isExact()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgnu/math/Complex;->isExact()Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    :cond_0
    invoke-virtual {p0}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v2

    invoke-virtual {p1}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v4

    invoke-virtual {p1}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lgnu/math/DComplex;->div(DDDD)Lgnu/math/DComplex;

    move-result-object p0

    .line 238
    .end local p0
    .end local p1
    :goto_0
    return-object p0

    .line 227
    .restart local p0
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    .line 228
    .local v1, x_re:Lgnu/math/RealNum;
    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object p0

    .line 229
    .local p0, x_im:Lgnu/math/RealNum;
    invoke-virtual {p1}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v3

    .line 230
    .local v3, y_re:Lgnu/math/RealNum;
    invoke-virtual {p1}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v2

    .line 232
    .local v2, y_im:Lgnu/math/RealNum;
    invoke-static {v3, v3}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object p1

    .end local p1
    invoke-static {v2, v2}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {p1, v0, v4}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    move-result-object v0

    .line 234
    .local v0, q:Lgnu/math/RealNum;
    invoke-static {v1, v3}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object p1

    invoke-static {p0, v2}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p1, v4, v5}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    move-result-object p1

    .line 236
    .local p1, n:Lgnu/math/RealNum;
    invoke-static {p0, v3}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object p0

    .end local p0           #x_im:Lgnu/math/RealNum;
    invoke-static {v1, v2}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v1

    .end local v1           #x_re:Lgnu/math/RealNum;
    const/4 v2, -0x1

    invoke-static {p0, v1, v2}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    .end local v2           #y_im:Lgnu/math/RealNum;
    move-result-object p0

    .line 238
    .local p0, d:Lgnu/math/RealNum;
    invoke-static {p1, v0}, Lgnu/math/RealNum;->divide(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object p1

    .end local p1           #n:Lgnu/math/RealNum;
    invoke-static {p0, v0}, Lgnu/math/RealNum;->divide(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object p0

    .end local p0           #d:Lgnu/math/RealNum;
    invoke-static {p1, p0}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object p0

    goto :goto_0
.end method

.method public static equals(Lgnu/math/Complex;Lgnu/math/Complex;)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 113
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/math/RealNum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/math/RealNum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static imMinusOne()Lgnu/math/CComplex;
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lgnu/math/Complex;->imMinusOne:Lgnu/math/CComplex;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lgnu/math/CComplex;

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {}, Lgnu/math/IntNum;->minusOne()Lgnu/math/IntNum;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgnu/math/CComplex;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;)V

    sput-object v0, Lgnu/math/Complex;->imMinusOne:Lgnu/math/CComplex;

    .line 49
    :cond_0
    sget-object v0, Lgnu/math/Complex;->imMinusOne:Lgnu/math/CComplex;

    return-object v0
.end method

.method public static imOne()Lgnu/math/CComplex;
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lgnu/math/Complex;->imOne:Lgnu/math/CComplex;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lgnu/math/CComplex;

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgnu/math/CComplex;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;)V

    sput-object v0, Lgnu/math/Complex;->imOne:Lgnu/math/CComplex;

    .line 42
    :cond_0
    sget-object v0, Lgnu/math/Complex;->imOne:Lgnu/math/CComplex;

    return-object v0
.end method

.method public static make(DD)Lgnu/math/Complex;
    .locals 2
    .parameter "re"
    .parameter "im"

    .prologue
    .line 68
    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lgnu/math/DFloNum;

    invoke-direct {v0, p0, p1}, Lgnu/math/DFloNum;-><init>(D)V

    .line 70
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lgnu/math/DComplex;

    invoke-direct {v0, p0, p1, p2, p3}, Lgnu/math/DComplex;-><init>(DD)V

    goto :goto_0
.end method

.method public static make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;
    .locals 5
    .parameter "re"
    .parameter "im"

    .prologue
    .line 59
    invoke-virtual {p1}, Lgnu/math/RealNum;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 63
    :goto_0
    return-object v0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-nez v0, :cond_2

    .line 62
    :cond_1
    new-instance v0, Lgnu/math/DComplex;

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/math/DComplex;-><init>(DD)V

    goto :goto_0

    .line 63
    :cond_2
    new-instance v0, Lgnu/math/CComplex;

    invoke-direct {v0, p0, p1}, Lgnu/math/CComplex;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;)V

    goto :goto_0
.end method

.method public static neg(Lgnu/math/Complex;)Lgnu/math/Complex;
    .locals 2
    .parameter "x"

    .prologue
    .line 170
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->rneg()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/RealNum;->rneg()Lgnu/math/RealNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object v0

    return-object v0
.end method

.method public static polar(DD)Lgnu/math/DComplex;
    .locals 5
    .parameter "r"
    .parameter "t"

    .prologue
    .line 75
    new-instance v0, Lgnu/math/DComplex;

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double/2addr v1, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/math/DComplex;-><init>(DD)V

    return-object v0
.end method

.method public static polar(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/DComplex;
    .locals 4
    .parameter "r"
    .parameter "t"

    .prologue
    .line 80
    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lgnu/math/Complex;->polar(DD)Lgnu/math/DComplex;

    move-result-object v0

    return-object v0
.end method

.method public static power(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/16 v9, 0x0

    .line 85
    instance-of v8, p1, Lgnu/math/IntNum;

    if-eqz v8, :cond_0

    .line 86
    check-cast p1, Lgnu/math/IntNum;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/math/Complex;->power(Lgnu/math/IntNum;)Lgnu/math/Numeric;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/math/Complex;

    move-object v8, p0

    .line 94
    :goto_0
    return-object v8

    .line 87
    .restart local p0
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v0

    .line 88
    .local v0, x_re:D
    invoke-virtual {p0}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v2

    .line 89
    .local v2, x_im:D
    invoke-virtual {p1}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v4

    .line 90
    .local v4, y_re:D
    invoke-virtual {p1}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v6

    .line 91
    .local v6, y_im:D
    cmpl-double v8, v2, v9

    if-nez v8, :cond_2

    cmpl-double v8, v6, v9

    if-nez v8, :cond_2

    cmpl-double v8, v0, v9

    if-gez v8, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 93
    :cond_1
    new-instance v8, Lgnu/math/DFloNum;

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lgnu/math/DFloNum;-><init>(D)V

    goto :goto_0

    .line 94
    :cond_2
    invoke-static/range {v0 .. v7}, Lgnu/math/DComplex;->power(DDDD)Lgnu/math/DComplex;

    move-result-object v8

    goto :goto_0
.end method

.method public static times(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 197
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    .line 198
    .local v1, x_re:Lgnu/math/RealNum;
    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v0

    .line 199
    .local v0, x_im:Lgnu/math/RealNum;
    invoke-virtual {p1}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v3

    .line 200
    .local v3, y_re:Lgnu/math/RealNum;
    invoke-virtual {p1}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v2

    .line 201
    .local v2, y_im:Lgnu/math/RealNum;
    invoke-static {v1, v3}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v4

    invoke-static {v0, v2}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    move-result-object v4

    invoke-static {v1, v2}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v5

    invoke-static {v0, v3}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    move-result-object v5

    invoke-static {v4, v5}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public abs()Lgnu/math/Numeric;
    .locals 5

    .prologue
    .line 100
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v1

    invoke-virtual {p0}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 1
    .parameter "y"
    .parameter "k"

    .prologue
    .line 183
    instance-of v0, p1, Lgnu/math/Complex;

    if-eqz v0, :cond_0

    .line 184
    check-cast p1, Lgnu/math/Complex;

    .end local p1
    invoke-static {p0, p1, p2}, Lgnu/math/Complex;->add(Lgnu/math/Complex;Lgnu/math/Complex;I)Lgnu/math/Complex;

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    check-cast p1, Lgnu/math/Numeric;

    .end local p1
    invoke-virtual {p1, p0, p2}, Lgnu/math/Numeric;->addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;

    move-result-object v0

    goto :goto_0
.end method

.method public addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;
    .locals 1
    .parameter "x"
    .parameter "k"

    .prologue
    .line 190
    instance-of v0, p1, Lgnu/math/Complex;

    if-eqz v0, :cond_0

    .line 191
    check-cast p1, Lgnu/math/Complex;

    .end local p1
    invoke-static {p1, p0, p2}, Lgnu/math/Complex;->add(Lgnu/math/Complex;Lgnu/math/Complex;I)Lgnu/math/Complex;

    move-result-object v0

    return-object v0

    .line 192
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public angle()Lgnu/math/RealNum;
    .locals 5

    .prologue
    .line 108
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v1

    invoke-virtual {p0}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 1
    .parameter "obj"

    .prologue
    .line 134
    instance-of v0, p1, Lgnu/math/Complex;

    if-nez v0, :cond_0

    .line 135
    check-cast p1, Lgnu/math/Numeric;

    .end local p1
    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->compareReversed(Lgnu/math/Numeric;)I

    move-result v0

    .line 136
    :goto_0
    return v0

    .restart local p1
    :cond_0
    check-cast p1, Lgnu/math/Complex;

    .end local p1
    invoke-static {p0, p1}, Lgnu/math/Complex;->compare(Lgnu/math/Complex;Lgnu/math/Complex;)I

    move-result v0

    goto :goto_0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1
    .parameter "y"

    .prologue
    .line 243
    instance-of v0, p1, Lgnu/math/Complex;

    if-eqz v0, :cond_0

    .line 244
    check-cast p1, Lgnu/math/Complex;

    .end local p1
    invoke-static {p0, p1}, Lgnu/math/Complex;->divide(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    check-cast p1, Lgnu/math/Numeric;

    .end local p1
    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v0

    goto :goto_0
.end method

.method public divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 1
    .parameter "x"

    .prologue
    .line 250
    instance-of v0, p1, Lgnu/math/Complex;

    if-eqz v0, :cond_0

    .line 251
    check-cast p1, Lgnu/math/Complex;

    .end local p1
    invoke-static {p1, p0}, Lgnu/math/Complex;->divide(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v0

    return-object v0

    .line 252
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public doubleImagValue()D
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final doubleRealValue()D
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lgnu/math/Complex;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 119
    if-eqz p1, :cond_0

    instance-of v0, p1, Lgnu/math/Complex;

    if-nez v0, :cond_1

    .line 120
    :cond_0
    const/4 v0, 0x0

    .line 121
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    check-cast p1, Lgnu/math/Complex;

    .end local p1
    invoke-static {p0, p1}, Lgnu/math/Complex;->equals(Lgnu/math/Complex;Lgnu/math/Complex;)Z

    move-result v0

    goto :goto_0
.end method

.method public exp()Lgnu/math/Complex;
    .locals 4

    .prologue
    .line 257
    invoke-virtual {p0}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lgnu/math/Complex;->polar(DD)Lgnu/math/DComplex;

    move-result-object v0

    return-object v0
.end method

.method public isExact()Z
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZero()Z
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public log()Lgnu/math/Complex;
    .locals 4

    .prologue
    .line 263
    invoke-virtual {p0}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lgnu/math/DComplex;->log(DD)Lgnu/math/Complex;

    move-result-object v0

    return-object v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1
    .parameter "y"

    .prologue
    .line 209
    instance-of v0, p1, Lgnu/math/Complex;

    if-eqz v0, :cond_0

    .line 210
    check-cast p1, Lgnu/math/Complex;

    .end local p1
    invoke-static {p0, p1}, Lgnu/math/Complex;->times(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    check-cast p1, Lgnu/math/Numeric;

    .end local p1
    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v0

    goto :goto_0
.end method

.method public mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 1
    .parameter "x"

    .prologue
    .line 216
    instance-of v0, p1, Lgnu/math/Complex;

    if-eqz v0, :cond_0

    .line 217
    check-cast p1, Lgnu/math/Complex;

    .end local p1
    invoke-static {p1, p0}, Lgnu/math/Complex;->times(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v0

    return-object v0

    .line 218
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public neg()Lgnu/math/Numeric;
    .locals 1

    .prologue
    .line 173
    invoke-static {p0}, Lgnu/math/Complex;->neg(Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v0

    return-object v0
.end method

.method public number()Lgnu/math/Complex;
    .locals 0

    .prologue
    .line 8
    return-object p0
.end method

.method public sqrt()Lgnu/math/Complex;
    .locals 4

    .prologue
    .line 268
    invoke-virtual {p0}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lgnu/math/DComplex;->sqrt(DD)Lgnu/math/Complex;

    move-result-object v0

    return-object v0
.end method

.method public toExact()Lgnu/math/Complex;
    .locals 5

    .prologue
    .line 18
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    .line 19
    .local v1, re:Lgnu/math/RealNum;
    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v0

    .line 20
    .local v0, im:Lgnu/math/RealNum;
    invoke-virtual {v1}, Lgnu/math/RealNum;->toExact()Lgnu/math/RatNum;

    move-result-object v3

    .line 21
    .local v3, xre:Lgnu/math/RatNum;
    invoke-virtual {v0}, Lgnu/math/RealNum;->toExact()Lgnu/math/RatNum;

    move-result-object v2

    .line 22
    .local v2, xim:Lgnu/math/RatNum;
    if-ne v3, v1, :cond_0

    if-ne v2, v0, :cond_0

    move-object v4, p0

    .line 25
    :goto_0
    return-object v4

    :cond_0
    new-instance v4, Lgnu/math/CComplex;

    invoke-direct {v4, v3, v2}, Lgnu/math/CComplex;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;)V

    goto :goto_0
.end method

.method public bridge synthetic toExact()Lgnu/math/Numeric;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lgnu/math/Complex;->toExact()Lgnu/math/Complex;

    move-result-object v0

    return-object v0
.end method

.method public toInexact()Lgnu/math/Complex;
    .locals 5

    .prologue
    .line 30
    invoke-virtual {p0}, Lgnu/math/Complex;->isExact()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lgnu/math/DComplex;

    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/math/DComplex;-><init>(DD)V

    goto :goto_0
.end method

.method public bridge synthetic toInexact()Lgnu/math/Numeric;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lgnu/math/Complex;->toInexact()Lgnu/math/Complex;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3
    .parameter "radix"

    .prologue
    .line 158
    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/RealNum;->isZero()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgnu/math/RealNum;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    :goto_0
    return-object v1

    .line 160
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v2

    invoke-virtual {v2, p1}, Lgnu/math/RealNum;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "i"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, imString:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_1

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_1
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/RealNum;->isZero()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 164
    goto :goto_0

    .line 165
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v2

    invoke-virtual {v2, p1}, Lgnu/math/RealNum;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
