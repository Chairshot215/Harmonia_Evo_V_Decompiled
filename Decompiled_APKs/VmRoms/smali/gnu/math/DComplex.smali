.class public Lgnu/math/DComplex;
.super Lgnu/math/Complex;
.source "DComplex.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field imag:D

.field real:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lgnu/math/Complex;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .parameter "real"
    .parameter "imag"

    .prologue
    .line 24
    invoke-direct {p0}, Lgnu/math/Complex;-><init>()V

    .line 25
    iput-wide p1, p0, Lgnu/math/DComplex;->real:D

    .line 26
    iput-wide p3, p0, Lgnu/math/DComplex;->imag:D

    .line 27
    return-void
.end method

.method public static div(DDDD)Lgnu/math/DComplex;
    .locals 4
    .parameter "x_re"
    .parameter "x_im"
    .parameter "y_re"
    .parameter "y_im"

    .prologue
    .line 211
    invoke-static {p4, p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 212
    .local v2, ar:D
    invoke-static {p6, p7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 215
    .local v0, ai:D
    cmpg-double v0, v2, v0

    if-gtz v0, :cond_0

    .line 217
    .end local v0           #ai:D
    div-double v0, p4, p6

    .line 218
    .local v0, t:D
    const-wide/high16 p4, 0x3ff0

    mul-double v2, v0, v0

    add-double/2addr p4, v2

    mul-double/2addr p4, p6

    .line 219
    .local p4, d:D
    mul-double p6, p0, v0

    add-double/2addr p6, p2

    .line 220
    .local p6, nr:D
    mul-double/2addr p2, v0

    sub-double p0, p2, p0

    .local p0, ni:D
    move-wide p2, p0

    .end local p0           #ni:D
    .local p2, ni:D
    move-wide p0, p4

    .end local p4           #d:D
    .local p0, d:D
    move-wide p4, p6

    .end local p6           #nr:D
    .local p4, nr:D
    move-wide p6, v0

    .line 229
    .end local v0           #t:D
    .end local v2           #ar:D
    .local p6, t:D
    :goto_0
    new-instance p6, Lgnu/math/DComplex;

    .end local p6           #t:D
    div-double/2addr p4, p0

    div-double p0, p2, p0

    invoke-direct {p6, p4, p5, p0, p1}, Lgnu/math/DComplex;-><init>(DD)V

    .end local p0           #d:D
    .end local p4           #nr:D
    return-object p6

    .line 224
    .restart local v2       #ar:D
    .local p0, x_re:D
    .local p2, x_im:D
    .local p4, y_re:D
    .local p6, y_im:D
    :cond_0
    div-double v0, p6, p4

    .line 225
    .restart local v0       #t:D
    const-wide/high16 p6, 0x3ff0

    mul-double v2, v0, v0

    add-double/2addr p6, v2

    mul-double/2addr p4, p6

    .line 226
    .local p4, d:D
    mul-double p6, p2, v0

    add-double/2addr p6, p0

    .line 227
    .local p6, nr:D
    mul-double/2addr p0, v0

    sub-double p0, p2, p0

    .local p0, ni:D
    move-wide p2, p0

    .end local p0           #ni:D
    .local p2, ni:D
    move-wide p0, p4

    .end local p4           #d:D
    .local p0, d:D
    move-wide p4, p6

    .end local p6           #nr:D
    .local p4, nr:D
    move-wide p6, v0

    .end local v0           #t:D
    .local p6, t:D
    goto :goto_0
.end method

.method public static log(DD)Lgnu/math/Complex;
    .locals 6
    .parameter "x_re"
    .parameter "x_im"

    .prologue
    .line 175
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 179
    .local v0, h:D
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lgnu/math/DComplex;->make(DD)Lgnu/math/Complex;

    move-result-object v2

    return-object v2
.end method

.method public static power(DDDD)Lgnu/math/DComplex;
    .locals 4
    .parameter "x_re"
    .parameter "x_im"
    .parameter "y_re"
    .parameter "y_im"

    .prologue
    .line 160
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 164
    .local v0, h:D
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 165
    .local v0, logr:D
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p2

    .line 166
    .local p2, t:D
    mul-double p0, v0, p4

    mul-double v2, p6, p2

    sub-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    .end local p0
    move-result-wide p0

    .line 167
    .local p0, r:D
    mul-double/2addr p6, v0

    mul-double/2addr p2, p4

    add-double/2addr p2, p6

    .line 168
    invoke-static {p0, p1, p2, p3}, Lgnu/math/Complex;->polar(DD)Lgnu/math/DComplex;

    .end local p6
    move-result-object p0

    .end local p0           #r:D
    return-object p0
.end method

.method public static sqrt(DD)Lgnu/math/Complex;
    .locals 4
    .parameter "x_re"
    .parameter "x_im"

    .prologue
    .line 235
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 240
    .local v0, r:D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    .line 241
    move-wide p0, v0

    .local p0, ni:D
    move-wide p2, v0

    .line 254
    .end local v0           #r:D
    .local p2, nr:D
    :goto_0
    new-instance v0, Lgnu/math/DComplex;

    invoke-direct {v0, p2, p3, p0, p1}, Lgnu/math/DComplex;-><init>(DD)V

    return-object v0

    .line 242
    .restart local v0       #r:D
    .local p0, x_re:D
    .local p2, x_im:D
    :cond_0
    const-wide/16 v2, 0x0

    cmpl-double v2, p0, v2

    if-lez v2, :cond_1

    .line 244
    const-wide/high16 v2, 0x3fe0

    add-double/2addr p0, v0

    mul-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    .end local p0           #x_re:D
    move-result-wide v0

    .line 245
    .local v0, nr:D
    div-double p0, p2, v0

    const-wide/high16 p2, 0x4000

    div-double/2addr p0, p2

    .local p0, ni:D
    move-wide p2, v0

    .end local v0           #nr:D
    .local p2, nr:D
    goto :goto_0

    .line 249
    .local v0, r:D
    .local p0, x_re:D
    .local p2, x_im:D
    :cond_1
    const-wide/high16 v2, 0x3fe0

    sub-double p0, v0, p0

    mul-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    .end local p0           #x_re:D
    move-result-wide p0

    .line 250
    .local p0, ni:D
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_2

    .line 251
    .end local v0           #r:D
    neg-double p0, p0

    .line 252
    :cond_2
    div-double/2addr p2, p0

    const-wide/high16 v0, 0x4000

    div-double/2addr p2, v0

    .local p2, nr:D
    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 11
    .parameter "y"
    .parameter "k"

    .prologue
    .line 116
    instance-of v2, p1, Lgnu/math/Complex;

    if-eqz v2, :cond_1

    .line 118
    move-object v0, p1

    check-cast v0, Lgnu/math/Complex;

    move-object v1, v0

    .line 119
    .local v1, yc:Lgnu/math/Complex;
    invoke-virtual {v1}, Lgnu/math/Complex;->dimensions()Lgnu/math/Dimensions;

    move-result-object v2

    sget-object v3, Lgnu/math/Dimensions;->Empty:Lgnu/math/Dimensions;

    if-eq v2, v3, :cond_0

    .line 120
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "units mis-match"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_0
    new-instance v2, Lgnu/math/DComplex;

    iget-wide v3, p0, Lgnu/math/DComplex;->real:D

    int-to-double v5, p2

    invoke-virtual {v1}, Lgnu/math/Complex;->reValue()D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    iget-wide v5, p0, Lgnu/math/DComplex;->imag:D

    int-to-double v7, p2

    invoke-virtual {v1}, Lgnu/math/Complex;->imValue()D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/math/DComplex;-><init>(DD)V

    .line 124
    .end local v1           #yc:Lgnu/math/Complex;
    .end local p1
    :goto_0
    return-object v2

    .restart local p1
    :cond_1
    check-cast p1, Lgnu/math/Numeric;

    .end local p1
    invoke-virtual {p1, p0, p2}, Lgnu/math/Numeric;->addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;

    move-result-object v2

    goto :goto_0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 10
    .parameter "y"

    .prologue
    .line 146
    instance-of v1, p1, Lgnu/math/Complex;

    if-eqz v1, :cond_0

    .line 148
    move-object v0, p1

    check-cast v0, Lgnu/math/Complex;

    move-object v9, v0

    .line 149
    .local v9, yc:Lgnu/math/Complex;
    iget-wide v1, p0, Lgnu/math/DComplex;->real:D

    iget-wide v3, p0, Lgnu/math/DComplex;->imag:D

    invoke-virtual {v9}, Lgnu/math/Complex;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v9}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v7

    invoke-static/range {v1 .. v8}, Lgnu/math/DComplex;->div(DDDD)Lgnu/math/DComplex;

    move-result-object v1

    .line 152
    .end local v9           #yc:Lgnu/math/Complex;
    .end local p1
    :goto_0
    return-object v1

    .restart local p1
    :cond_0
    check-cast p1, Lgnu/math/Numeric;

    .end local p1
    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v1

    goto :goto_0
.end method

.method public doubleImagValue()D
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lgnu/math/DComplex;->imag:D

    return-wide v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lgnu/math/DComplex;->real:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v6, 0x0

    .line 46
    if-eqz p1, :cond_0

    instance-of v2, p1, Lgnu/math/Complex;

    if-nez v2, :cond_1

    :cond_0
    move v2, v6

    .line 49
    :goto_0
    return v2

    .line 48
    :cond_1
    move-object v0, p1

    check-cast v0, Lgnu/math/Complex;

    move-object v1, v0

    .line 49
    .local v1, y:Lgnu/math/Complex;
    invoke-virtual {v1}, Lgnu/math/Complex;->unit()Lgnu/math/Unit;

    move-result-object v2

    sget-object v3, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lgnu/math/DComplex;->real:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {v1}, Lgnu/math/Complex;->reValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lgnu/math/DComplex;->imag:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {v1}, Lgnu/math/Complex;->imValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_0
.end method

.method public im()Lgnu/math/RealNum;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v1, p0, Lgnu/math/DComplex;->imag:D

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public isExact()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 13
    .parameter "y"

    .prologue
    .line 129
    instance-of v6, p1, Lgnu/math/Complex;

    if-eqz v6, :cond_1

    .line 131
    move-object v0, p1

    check-cast v0, Lgnu/math/Complex;

    move-object v5, v0

    .line 132
    .local v5, yc:Lgnu/math/Complex;
    invoke-virtual {v5}, Lgnu/math/Complex;->unit()Lgnu/math/Unit;

    move-result-object v6

    sget-object v7, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v6, v7, :cond_0

    .line 134
    invoke-virtual {v5}, Lgnu/math/Complex;->reValue()D

    move-result-wide v3

    .line 135
    .local v3, y_re:D
    invoke-virtual {v5}, Lgnu/math/Complex;->imValue()D

    move-result-wide v1

    .line 136
    .local v1, y_im:D
    new-instance v6, Lgnu/math/DComplex;

    iget-wide v7, p0, Lgnu/math/DComplex;->real:D

    mul-double/2addr v7, v3

    iget-wide v9, p0, Lgnu/math/DComplex;->imag:D

    mul-double/2addr v9, v1

    sub-double/2addr v7, v9

    iget-wide v9, p0, Lgnu/math/DComplex;->real:D

    mul-double/2addr v9, v1

    iget-wide v11, p0, Lgnu/math/DComplex;->imag:D

    mul-double/2addr v11, v3

    add-double/2addr v9, v11

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/math/DComplex;-><init>(DD)V

    .line 141
    .end local v1           #y_im:D
    .end local v3           #y_re:D
    .end local v5           #yc:Lgnu/math/Complex;
    .end local p1
    :goto_0
    return-object v6

    .line 139
    .restart local v5       #yc:Lgnu/math/Complex;
    .restart local p1
    :cond_0
    invoke-static {p0, v5}, Lgnu/math/Complex;->times(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v6

    goto :goto_0

    .line 141
    .end local v5           #yc:Lgnu/math/Complex;
    :cond_1
    check-cast p1, Lgnu/math/Numeric;

    .end local p1
    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v6

    goto :goto_0
.end method

.method public final neg()Lgnu/math/Numeric;
    .locals 5

    .prologue
    .line 112
    new-instance v0, Lgnu/math/DComplex;

    iget-wide v1, p0, Lgnu/math/DComplex;->real:D

    neg-double v1, v1

    iget-wide v3, p0, Lgnu/math/DComplex;->imag:D

    neg-double v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/math/DComplex;-><init>(DD)V

    return-object v0
.end method

.method public re()Lgnu/math/RealNum;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v1, p0, Lgnu/math/DComplex;->real:D

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lgnu/math/DComplex;->real:D

    .line 405
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lgnu/math/DComplex;->imag:D

    .line 406
    return-void
.end method

.method public toExact()Lgnu/math/Complex;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Lgnu/math/CComplex;

    iget-wide v1, p0, Lgnu/math/DComplex;->real:D

    invoke-static {v1, v2}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object v1

    iget-wide v2, p0, Lgnu/math/DComplex;->imag:D

    invoke-static {v2, v3}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgnu/math/CComplex;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;)V

    return-object v0
.end method

.method public bridge synthetic toExact()Lgnu/math/Numeric;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lgnu/math/DComplex;->toExact()Lgnu/math/Complex;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const-wide/high16 v7, 0x7ff0

    const-wide/high16 v5, -0x10

    .line 58
    const-string v1, ""

    .line 61
    .local v1, prefix:Ljava/lang/String;
    iget-wide v3, p0, Lgnu/math/DComplex;->real:D

    cmpl-double v3, v3, v7

    if-nez v3, :cond_0

    .line 63
    const-string v1, "#i"

    const-string v2, "1/0"

    .line 76
    .local v2, reString:Ljava/lang/String;
    :goto_0
    iget-wide v3, p0, Lgnu/math/DComplex;->imag:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v3, v3, v9

    if-nez v3, :cond_3

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    :goto_1
    return-object v3

    .line 65
    .end local v2           #reString:Ljava/lang/String;
    :cond_0
    iget-wide v3, p0, Lgnu/math/DComplex;->real:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_1

    .line 67
    const-string v1, "#i"

    const-string v2, "-1/0"

    .restart local v2       #reString:Ljava/lang/String;
    goto :goto_0

    .line 69
    .end local v2           #reString:Ljava/lang/String;
    :cond_1
    iget-wide v3, p0, Lgnu/math/DComplex;->real:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    const-string v1, "#i"

    const-string v2, "0/0"

    .restart local v2       #reString:Ljava/lang/String;
    goto :goto_0

    .line 74
    .end local v2           #reString:Ljava/lang/String;
    :cond_2
    iget-wide v3, p0, Lgnu/math/DComplex;->real:D

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #reString:Ljava/lang/String;
    goto :goto_0

    .line 80
    :cond_3
    iget-wide v3, p0, Lgnu/math/DComplex;->imag:D

    cmpl-double v3, v3, v7

    if-nez v3, :cond_5

    .line 82
    const-string v1, "#i"

    const-string v0, "+1/0i"

    .line 99
    .local v0, imString:Ljava/lang/String;
    :cond_4
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lgnu/math/DComplex;->real:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v4, v4, v9

    if-nez v4, :cond_8

    move-object v4, v1

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 84
    .end local v0           #imString:Ljava/lang/String;
    :cond_5
    iget-wide v3, p0, Lgnu/math/DComplex;->imag:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_6

    .line 86
    const-string v1, "#i"

    const-string v0, "-1/0i"

    .restart local v0       #imString:Ljava/lang/String;
    goto :goto_2

    .line 88
    .end local v0           #imString:Ljava/lang/String;
    :cond_6
    iget-wide v3, p0, Lgnu/math/DComplex;->imag:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 90
    const-string v1, "#i"

    const-string v0, "+0/0i"

    .restart local v0       #imString:Ljava/lang/String;
    goto :goto_2

    .line 94
    .end local v0           #imString:Ljava/lang/String;
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lgnu/math/DComplex;->imag:D

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "i"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .restart local v0       #imString:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_4

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 99
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2
    .parameter "radix"

    .prologue
    .line 105
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lgnu/math/DComplex;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/DComplex;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    iget-wide v0, p0, Lgnu/math/DComplex;->real:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 398
    iget-wide v0, p0, Lgnu/math/DComplex;->imag:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 399
    return-void
.end method
