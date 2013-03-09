.class public abstract Lgnu/math/Quantity;
.super Lgnu/math/Numeric;
.source "Quantity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lgnu/math/Numeric;-><init>()V

    return-void
.end method

.method public static add(Lgnu/math/Quantity;Lgnu/math/Quantity;I)Lgnu/math/Quantity;
    .locals 12
    .parameter "x"
    .parameter "y"
    .parameter "k"

    .prologue
    .line 129
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v6

    invoke-virtual {p1}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v7

    if-ne v6, v7, :cond_0

    .line 130
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v6

    invoke-virtual {p1}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v7

    invoke-static {v6, v7, p2}, Lgnu/math/Complex;->add(Lgnu/math/Complex;Lgnu/math/Complex;I)Lgnu/math/Complex;

    move-result-object v6

    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v7

    invoke-static {v6, v7}, Lgnu/math/Quantity;->make(Lgnu/math/Complex;Lgnu/math/Unit;)Lgnu/math/Quantity;

    move-result-object v6

    .line 138
    :goto_0
    return-object v6

    .line 131
    :cond_0
    invoke-virtual {p0}, Lgnu/math/Quantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v6

    invoke-virtual {p1}, Lgnu/math/Quantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v7

    if-eq v6, v7, :cond_1

    .line 132
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string v7, "units mis-match"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 135
    :cond_1
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/math/Unit;->doubleValue()D

    move-result-wide v4

    .line 136
    .local v4, x_factor:D
    invoke-virtual {p0}, Lgnu/math/Quantity;->reValue()D

    move-result-wide v6

    int-to-double v8, p2

    invoke-virtual {p1}, Lgnu/math/Quantity;->reValue()D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    div-double v2, v6, v4

    .line 137
    .local v2, re:D
    invoke-virtual {p0}, Lgnu/math/Quantity;->imValue()D

    move-result-wide v6

    int-to-double v8, p2

    invoke-virtual {p1}, Lgnu/math/Quantity;->imValue()D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    div-double v0, v6, v4

    .line 138
    .local v0, im:D
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v6

    invoke-static {v2, v3, v0, v1, v6}, Lgnu/math/Quantity;->make(DDLgnu/math/Unit;)Lgnu/math/Quantity;

    move-result-object v6

    goto :goto_0
.end method

.method public static compare(Lgnu/math/Quantity;Lgnu/math/Quantity;)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 106
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/Complex;->compare(Lgnu/math/Complex;Lgnu/math/Complex;)I

    move-result v0

    .line 110
    :goto_0
    return v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lgnu/math/Quantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/Quantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lgnu/math/Quantity;->imValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lgnu/math/Quantity;->imValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2

    .line 109
    :cond_1
    const/4 v0, -0x3

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p0}, Lgnu/math/Quantity;->reValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lgnu/math/Quantity;->reValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lgnu/math/DFloNum;->compare(DD)I

    move-result v0

    goto :goto_0
.end method

.method public static divide(Lgnu/math/Quantity;Lgnu/math/Quantity;)Lgnu/math/Quantity;
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 180
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v3

    invoke-static {v2, v3}, Lgnu/math/Unit;->divide(Lgnu/math/Unit;Lgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v1

    .line 181
    .local v1, unit:Lgnu/math/Unit;
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/math/Complex;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    .line 182
    .local v0, num:Lgnu/math/Numeric;
    check-cast v0, Lgnu/math/Complex;

    .end local v0           #num:Lgnu/math/Numeric;
    invoke-static {v0, v1}, Lgnu/math/Quantity;->make(Lgnu/math/Complex;Lgnu/math/Unit;)Lgnu/math/Quantity;

    move-result-object v2

    return-object v2
.end method

.method public static make(DDLgnu/math/Unit;)Lgnu/math/Quantity;
    .locals 3
    .parameter "re"
    .parameter "im"
    .parameter "unit"

    .prologue
    .line 73
    sget-object v0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne p4, v0, :cond_0

    .line 74
    invoke-static {p0, p1, p2, p3}, Lgnu/math/Complex;->make(DD)Lgnu/math/Complex;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 75
    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Lgnu/math/DQuantity;

    invoke-direct {v0, p0, p1, p4}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    goto :goto_0

    .line 77
    :cond_1
    new-instance v0, Lgnu/math/CQuantity;

    new-instance v1, Lgnu/math/DFloNum;

    invoke-direct {v1, p0, p1}, Lgnu/math/DFloNum;-><init>(D)V

    new-instance v2, Lgnu/math/DFloNum;

    invoke-direct {v2, p2, p3}, Lgnu/math/DFloNum;-><init>(D)V

    invoke-direct {v0, v1, v2, p4}, Lgnu/math/CQuantity;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;Lgnu/math/Unit;)V

    goto :goto_0
.end method

.method public static make(Lgnu/math/Complex;Lgnu/math/Unit;)Lgnu/math/Quantity;
    .locals 3
    .parameter "x"
    .parameter "u"

    .prologue
    .line 55
    sget-object v0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 59
    :goto_0
    return-object v0

    .line 57
    :cond_0
    instance-of v0, p0, Lgnu/math/DFloNum;

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Lgnu/math/DQuantity;

    invoke-virtual {p0}, Lgnu/math/Complex;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Lgnu/math/CQuantity;

    invoke-direct {v0, p0, p1}, Lgnu/math/CQuantity;-><init>(Lgnu/math/Complex;Lgnu/math/Unit;)V

    goto :goto_0
.end method

.method public static make(Lgnu/math/RealNum;Lgnu/math/RealNum;Lgnu/math/Unit;)Lgnu/math/Quantity;
    .locals 3
    .parameter "re"
    .parameter "im"
    .parameter "unit"

    .prologue
    .line 64
    sget-object v0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne p2, v0, :cond_0

    .line 65
    invoke-static {p0, p1}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    .line 66
    :cond_0
    invoke-virtual {p1}, Lgnu/math/RealNum;->isZero()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    :cond_1
    new-instance v0, Lgnu/math/DQuantity;

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2, p2}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    goto :goto_0

    .line 68
    :cond_2
    new-instance v0, Lgnu/math/CQuantity;

    invoke-direct {v0, p0, p1, p2}, Lgnu/math/CQuantity;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;Lgnu/math/Unit;)V

    goto :goto_0
.end method

.method public static times(Lgnu/math/Quantity;Lgnu/math/Quantity;)Lgnu/math/Quantity;
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 158
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v3

    invoke-static {v2, v3}, Lgnu/math/Unit;->times(Lgnu/math/Unit;Lgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v1

    .line 160
    .local v1, unit:Lgnu/math/Unit;
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/math/Complex;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    .line 161
    .local v0, num:Lgnu/math/Numeric;
    check-cast v0, Lgnu/math/Complex;

    .end local v0           #num:Lgnu/math/Numeric;
    invoke-static {v0, v1}, Lgnu/math/Quantity;->make(Lgnu/math/Complex;Lgnu/math/Unit;)Lgnu/math/Quantity;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public abs()Lgnu/math/Numeric;
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Complex;->abs()Lgnu/math/Numeric;

    move-result-object v0

    check-cast v0, Lgnu/math/Complex;

    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/Quantity;->make(Lgnu/math/Complex;Lgnu/math/Unit;)Lgnu/math/Quantity;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 1
    .parameter "y"
    .parameter "k"

    .prologue
    .line 144
    instance-of v0, p1, Lgnu/math/Quantity;

    if-eqz v0, :cond_0

    .line 145
    check-cast p1, Lgnu/math/Quantity;

    .end local p1
    invoke-static {p0, p1, p2}, Lgnu/math/Quantity;->add(Lgnu/math/Quantity;Lgnu/math/Quantity;I)Lgnu/math/Quantity;

    move-result-object v0

    .line 146
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
    .line 151
    instance-of v0, p1, Lgnu/math/Quantity;

    if-eqz v0, :cond_0

    .line 152
    check-cast p1, Lgnu/math/Quantity;

    .end local p1
    invoke-static {p1, p0, p2}, Lgnu/math/Quantity;->add(Lgnu/math/Quantity;Lgnu/math/Quantity;I)Lgnu/math/Quantity;

    move-result-object v0

    return-object v0

    .line 153
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 1
    .parameter "obj"

    .prologue
    .line 115
    instance-of v0, p1, Lgnu/math/Quantity;

    if-nez v0, :cond_0

    .line 116
    check-cast p1, Lgnu/math/Numeric;

    .end local p1
    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->compareReversed(Lgnu/math/Numeric;)I

    move-result v0

    .line 117
    :goto_0
    return v0

    .restart local p1
    :cond_0
    check-cast p1, Lgnu/math/Quantity;

    .end local p1
    invoke-static {p0, p1}, Lgnu/math/Quantity;->compare(Lgnu/math/Quantity;Lgnu/math/Quantity;)I

    move-result v0

    goto :goto_0
.end method

.method public compareReversed(Lgnu/math/Numeric;)I
    .locals 1
    .parameter "x"

    .prologue
    .line 122
    instance-of v0, p1, Lgnu/math/Quantity;

    if-eqz v0, :cond_0

    .line 123
    check-cast p1, Lgnu/math/Quantity;

    .end local p1
    invoke-static {p1, p0}, Lgnu/math/Quantity;->compare(Lgnu/math/Quantity;Lgnu/math/Quantity;)I

    move-result v0

    return v0

    .line 124
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public dimensions()Lgnu/math/Dimensions;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Unit;->dimensions()Lgnu/math/Dimensions;

    move-result-object v0

    return-object v0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1
    .parameter "y"

    .prologue
    .line 187
    instance-of v0, p1, Lgnu/math/Quantity;

    if-eqz v0, :cond_0

    .line 188
    check-cast p1, Lgnu/math/Quantity;

    .end local p1
    invoke-static {p0, p1}, Lgnu/math/Quantity;->divide(Lgnu/math/Quantity;Lgnu/math/Quantity;)Lgnu/math/Quantity;

    move-result-object v0

    .line 189
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
    .line 194
    instance-of v0, p1, Lgnu/math/Quantity;

    if-eqz v0, :cond_0

    .line 195
    check-cast p1, Lgnu/math/Quantity;

    .end local p1
    invoke-static {p1, p0}, Lgnu/math/Quantity;->divide(Lgnu/math/Quantity;Lgnu/math/Quantity;)Lgnu/math/Quantity;

    move-result-object v0

    return-object v0

    .line 196
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public doubleImagValue()D
    .locals 4

    .prologue
    .line 51
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Unit;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lgnu/math/Quantity;->im()Lgnu/math/RealNum;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public doubleValue()D
    .locals 4

    .prologue
    .line 46
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Unit;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lgnu/math/Quantity;->re()Lgnu/math/RealNum;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public im()Lgnu/math/RealNum;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v0

    return-object v0
.end method

.method public final imValue()D
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lgnu/math/Quantity;->doubleImagValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1
    .parameter "y"

    .prologue
    .line 166
    instance-of v0, p1, Lgnu/math/Quantity;

    if-eqz v0, :cond_0

    .line 167
    check-cast p1, Lgnu/math/Quantity;

    .end local p1
    invoke-static {p0, p1}, Lgnu/math/Quantity;->times(Lgnu/math/Quantity;Lgnu/math/Quantity;)Lgnu/math/Quantity;

    move-result-object v0

    .line 168
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
    .line 173
    instance-of v0, p1, Lgnu/math/Quantity;

    if-eqz v0, :cond_0

    .line 174
    check-cast p1, Lgnu/math/Quantity;

    .end local p1
    invoke-static {p1, p0}, Lgnu/math/Quantity;->times(Lgnu/math/Quantity;Lgnu/math/Quantity;)Lgnu/math/Quantity;

    move-result-object v0

    return-object v0

    .line 175
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public neg()Lgnu/math/Numeric;
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Complex;->neg()Lgnu/math/Numeric;

    move-result-object v0

    check-cast v0, Lgnu/math/Complex;

    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/Quantity;->make(Lgnu/math/Complex;Lgnu/math/Unit;)Lgnu/math/Quantity;

    move-result-object v0

    return-object v0
.end method

.method public abstract number()Lgnu/math/Complex;
.end method

.method public re()Lgnu/math/RealNum;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    return-object v0
.end method

.method public final reValue()D
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lgnu/math/Quantity;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3
    .parameter "radix"

    .prologue
    .line 201
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgnu/math/Complex;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v1

    sget-object v2, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    .line 204
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/math/Unit;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public unit()Lgnu/math/Unit;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    return-object v0
.end method
