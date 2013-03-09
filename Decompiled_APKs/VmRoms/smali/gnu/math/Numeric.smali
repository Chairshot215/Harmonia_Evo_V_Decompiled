.class public abstract Lgnu/math/Numeric;
.super Ljava/lang/Number;
.source "Numeric.java"


# static fields
.field public static final CEILING:I = 0x2

.field public static final FLOOR:I = 0x1

.field public static final NONNEG_MOD:I = 0x5

.field public static final ROUND:I = 0x4

.field public static final TRUNCATE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method public static asNumericOrNull(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 3
    .parameter "value"

    .prologue
    .line 34
    instance-of v0, p0, Lgnu/math/Numeric;

    if-eqz v0, :cond_0

    .line 35
    check-cast p0, Lgnu/math/Numeric;

    .end local p0
    move-object v0, p0

    .line 44
    :goto_0
    return-object v0

    .line 36
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/math/BigInteger;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 39
    :cond_1
    invoke-static {p0}, Lgnu/math/IntNum;->asIntNumOrNull(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_2
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_3

    .line 41
    invoke-static {p0}, Lgnu/math/RatNum;->asRatNumOrNull(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_3
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 43
    :cond_4
    new-instance v0, Lgnu/math/DFloNum;

    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    goto :goto_0

    .line 44
    .restart local p0
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract abs()Lgnu/math/Numeric;
.end method

.method public final add(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1
    .parameter "obj"

    .prologue
    .line 17
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lgnu/math/Numeric;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0
.end method

.method public abstract add(Ljava/lang/Object;I)Lgnu/math/Numeric;
.end method

.method public addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;
    .locals 1
    .parameter "x"
    .parameter "k"

    .prologue
    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 1
    .parameter "obj"

    .prologue
    .line 79
    const/4 v0, -0x3

    return v0
.end method

.method public compareReversed(Lgnu/math/Numeric;)I
    .locals 1
    .parameter "x"

    .prologue
    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public abstract div(Ljava/lang/Object;)Lgnu/math/Numeric;
.end method

.method public divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 1
    .parameter "x"

    .prologue
    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public div_inv()Lgnu/math/Numeric;
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/math/IntNum;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 89
    if-eqz p1, :cond_0

    instance-of v0, p1, Lgnu/math/Numeric;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 91
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lgnu/math/Numeric;->compare(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 10
    invoke-virtual {p0}, Lgnu/math/Numeric;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public geq(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x"

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lgnu/math/Numeric;->compare(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public grt(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lgnu/math/Numeric;->compare(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lgnu/math/Numeric;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public abstract isExact()Z
.end method

.method public abstract isZero()Z
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 12
    invoke-virtual {p0}, Lgnu/math/Numeric;->doubleValue()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public abstract mul(Ljava/lang/Object;)Lgnu/math/Numeric;
.end method

.method public mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 1
    .parameter "x"

    .prologue
    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public mul_ident()Lgnu/math/Numeric;
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public abstract neg()Lgnu/math/Numeric;
.end method

.method public power(Lgnu/math/IntNum;)Lgnu/math/Numeric;
    .locals 3
    .parameter "y"

    .prologue
    .line 137
    invoke-virtual {p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-static {p1}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/math/Numeric;->power(Lgnu/math/IntNum;)Lgnu/math/Numeric;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/math/Numeric;->div_inv()Lgnu/math/Numeric;

    move-result-object v2

    .line 153
    :goto_0
    return-object v2

    .line 139
    :cond_0
    move-object v0, p0

    .line 140
    .local v0, pow2:Lgnu/math/Numeric;
    const/4 v1, 0x0

    .line 145
    .local v1, r:Lgnu/math/Numeric;
    :goto_1
    invoke-virtual {p1}, Lgnu/math/IntNum;->isOdd()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    if-nez v1, :cond_2

    move-object v1, v0

    .line 147
    :cond_1
    :goto_2
    const/4 v2, -0x1

    invoke-static {p1, v2}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lgnu/math/IntNum;->isZero()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 153
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lgnu/math/Numeric;->mul_ident()Lgnu/math/Numeric;

    move-result-object v2

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {v1, v0}, Lgnu/math/Numeric;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v2

    move-object v1, v2

    goto :goto_2

    .line 151
    :cond_3
    invoke-virtual {v0, v0}, Lgnu/math/Numeric;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v2, v1

    .line 153
    goto :goto_0
.end method

.method public final sub(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1
    .parameter "obj"

    .prologue
    .line 18
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lgnu/math/Numeric;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0
.end method

.method public toExact()Lgnu/math/Numeric;
    .locals 0

    .prologue
    .line 51
    return-object p0
.end method

.method public toInexact()Lgnu/math/Numeric;
    .locals 0

    .prologue
    .line 56
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lgnu/math/Numeric;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toString(I)Ljava/lang/String;
.end method
