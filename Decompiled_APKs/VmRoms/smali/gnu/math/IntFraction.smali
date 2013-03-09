.class public Lgnu/math/IntFraction;
.super Lgnu/math/RatNum;
.source "IntFraction.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field den:Lgnu/math/IntNum;

.field num:Lgnu/math/IntNum;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lgnu/math/RatNum;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Lgnu/math/IntNum;Lgnu/math/IntNum;)V
    .locals 0
    .parameter "num"
    .parameter "den"

    .prologue
    .line 21
    invoke-direct {p0}, Lgnu/math/RatNum;-><init>()V

    .line 22
    iput-object p1, p0, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    .line 23
    iput-object p2, p0, Lgnu/math/IntFraction;->den:Lgnu/math/IntNum;

    .line 24
    return-void
.end method

.method public static neg(Lgnu/math/IntFraction;)Lgnu/math/IntFraction;
    .locals 3
    .parameter "x"

    .prologue
    .line 96
    new-instance v0, Lgnu/math/IntFraction;

    invoke-virtual {p0}, Lgnu/math/IntFraction;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/math/IntFraction;->denominator()Lgnu/math/IntNum;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgnu/math/IntFraction;-><init>(Lgnu/math/IntNum;Lgnu/math/IntNum;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 1
    .parameter "y"
    .parameter "k"

    .prologue
    .line 47
    instance-of v0, p1, Lgnu/math/RatNum;

    if-eqz v0, :cond_0

    .line 48
    check-cast p1, Lgnu/math/RatNum;

    .end local p1
    invoke-static {p0, p1, p2}, Lgnu/math/RatNum;->add(Lgnu/math/RatNum;Lgnu/math/RatNum;I)Lgnu/math/RatNum;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    .line 49
    .restart local p1
    :cond_0
    instance-of v0, p1, Lgnu/math/Numeric;

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 51
    :cond_1
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
    .line 56
    instance-of v0, p1, Lgnu/math/RatNum;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 58
    :cond_0
    check-cast p1, Lgnu/math/RatNum;

    .end local p1
    invoke-static {p1, p0, p2}, Lgnu/math/RatNum;->add(Lgnu/math/RatNum;Lgnu/math/RatNum;I)Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public final compare(Ljava/lang/Object;)I
    .locals 1
    .parameter "obj"

    .prologue
    .line 35
    instance-of v0, p1, Lgnu/math/RatNum;

    if-eqz v0, :cond_0

    .line 36
    check-cast p1, Lgnu/math/RatNum;

    .end local p1
    invoke-static {p0, p1}, Lgnu/math/RatNum;->compare(Lgnu/math/RatNum;Lgnu/math/RatNum;)I

    move-result v0

    .line 37
    :goto_0
    return v0

    .restart local p1
    :cond_0
    check-cast p1, Lgnu/math/RealNum;

    .end local p1
    invoke-virtual {p1, p0}, Lgnu/math/RealNum;->compareReversed(Lgnu/math/Numeric;)I

    move-result v0

    goto :goto_0
.end method

.method public compareReversed(Lgnu/math/Numeric;)I
    .locals 1
    .parameter "x"

    .prologue
    .line 42
    check-cast p1, Lgnu/math/RatNum;

    .end local p1
    invoke-static {p1, p0}, Lgnu/math/RatNum;->compare(Lgnu/math/RatNum;Lgnu/math/RatNum;)I

    move-result v0

    return v0
.end method

.method public final denominator()Lgnu/math/IntNum;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lgnu/math/IntFraction;->den:Lgnu/math/IntNum;

    return-object v0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1
    .parameter "y"

    .prologue
    .line 79
    instance-of v0, p1, Lgnu/math/RatNum;

    if-eqz v0, :cond_0

    .line 80
    check-cast p1, Lgnu/math/RatNum;

    .end local p1
    invoke-static {p0, p1}, Lgnu/math/RatNum;->divide(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    .line 81
    .restart local p1
    :cond_0
    instance-of v0, p1, Lgnu/math/Numeric;

    if-nez v0, :cond_1

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 83
    :cond_1
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
    .line 88
    instance-of v0, p1, Lgnu/math/RatNum;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 90
    :cond_0
    check-cast p1, Lgnu/math/RatNum;

    .end local p1
    invoke-static {p1, p0}, Lgnu/math/RatNum;->divide(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public doubleValue()D
    .locals 9

    .prologue
    .line 111
    iget-object v7, p0, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    invoke-virtual {v7}, Lgnu/math/IntNum;->isNegative()Z

    move-result v3

    .line 112
    .local v3, neg:Z
    iget-object v7, p0, Lgnu/math/IntFraction;->den:Lgnu/math/IntNum;

    invoke-virtual {v7}, Lgnu/math/IntNum;->isZero()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 113
    if-eqz v3, :cond_0

    const-wide/high16 v7, -0x10

    .line 137
    :goto_0
    return-wide v7

    .line 113
    :cond_0
    iget-object v7, p0, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    invoke-virtual {v7}, Lgnu/math/IntNum;->isZero()Z

    move-result v7

    if-eqz v7, :cond_1

    const-wide/high16 v7, 0x7ff8

    goto :goto_0

    :cond_1
    const-wide/high16 v7, 0x7ff0

    goto :goto_0

    .line 116
    :cond_2
    iget-object v2, p0, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    .line 117
    .local v2, n:Lgnu/math/IntNum;
    if-eqz v3, :cond_3

    .line 118
    invoke-static {v2}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v2

    .line 119
    :cond_3
    invoke-virtual {v2}, Lgnu/math/IntNum;->intLength()I

    move-result v4

    .line 120
    .local v4, num_len:I
    iget-object v7, p0, Lgnu/math/IntFraction;->den:Lgnu/math/IntNum;

    invoke-virtual {v7}, Lgnu/math/IntNum;->intLength()I

    move-result v0

    .line 121
    .local v0, den_len:I
    const/4 v1, 0x0

    .line 122
    .local v1, exp:I
    add-int/lit8 v7, v0, 0x36

    if-ge v4, v7, :cond_4

    .line 124
    add-int/lit8 v7, v0, 0x36

    sub-int v1, v7, v4

    .line 125
    invoke-static {v2, v1}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v2

    .line 126
    neg-int v1, v1

    .line 131
    :cond_4
    new-instance v5, Lgnu/math/IntNum;

    invoke-direct {v5}, Lgnu/math/IntNum;-><init>()V

    .line 132
    .local v5, quot:Lgnu/math/IntNum;
    new-instance v6, Lgnu/math/IntNum;

    invoke-direct {v6}, Lgnu/math/IntNum;-><init>()V

    .line 133
    .local v6, remainder:Lgnu/math/IntNum;
    iget-object v7, p0, Lgnu/math/IntFraction;->den:Lgnu/math/IntNum;

    const/4 v8, 0x3

    invoke-static {v2, v7, v5, v6, v8}, Lgnu/math/IntNum;->divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V

    .line 134
    invoke-virtual {v5}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v5

    .line 135
    invoke-virtual {v6}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v6

    .line 137
    invoke-virtual {v6}, Lgnu/math/IntNum;->isZero()Z

    move-result v7

    if-nez v7, :cond_5

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v5, v1, v3, v7}, Lgnu/math/IntNum;->roundToDouble(IZZ)D

    move-result-wide v7

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public final isNegative()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    invoke-virtual {v0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 106
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lgnu/math/IntFraction;->toExactInt(I)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1
    .parameter "y"

    .prologue
    .line 63
    instance-of v0, p1, Lgnu/math/RatNum;

    if-eqz v0, :cond_0

    .line 64
    check-cast p1, Lgnu/math/RatNum;

    .end local p1
    invoke-static {p0, p1}, Lgnu/math/RatNum;->times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    .line 65
    .restart local p1
    :cond_0
    instance-of v0, p1, Lgnu/math/Numeric;

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 67
    :cond_1
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
    .line 72
    instance-of v0, p1, Lgnu/math/RatNum;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 74
    :cond_0
    check-cast p1, Lgnu/math/RatNum;

    .end local p1
    invoke-static {p1, p0}, Lgnu/math/RatNum;->times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public neg()Lgnu/math/Numeric;
    .locals 1

    .prologue
    .line 101
    invoke-static {p0}, Lgnu/math/IntFraction;->neg(Lgnu/math/IntFraction;)Lgnu/math/IntFraction;

    move-result-object v0

    return-object v0
.end method

.method public final numerator()Lgnu/math/IntNum;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/math/IntNum;

    iput-object v0, p0, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    .line 162
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/math/IntNum;

    iput-object v0, p0, Lgnu/math/IntFraction;->den:Lgnu/math/IntNum;

    .line 163
    return-void
.end method

.method public final sign()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    invoke-virtual {v0}, Lgnu/math/IntNum;->sign()I

    move-result v0

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2
    .parameter "radix"

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    invoke-virtual {v1, p1}, Lgnu/math/IntNum;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/math/IntFraction;->den:Lgnu/math/IntNum;

    invoke-virtual {v1, p1}, Lgnu/math/IntNum;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lgnu/math/IntFraction;->den:Lgnu/math/IntNum;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 152
    return-void
.end method
