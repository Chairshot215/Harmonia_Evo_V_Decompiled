.class public Lgnu/math/DQuantity;
.super Lgnu/math/Quantity;
.source "DQuantity.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field factor:D

.field unt:Lgnu/math/Unit;


# direct methods
.method public constructor <init>(DLgnu/math/Unit;)V
    .locals 0
    .parameter "factor"
    .parameter "unit"

    .prologue
    .line 22
    invoke-direct {p0}, Lgnu/math/Quantity;-><init>()V

    .line 23
    iput-wide p1, p0, Lgnu/math/DQuantity;->factor:D

    .line 24
    iput-object p3, p0, Lgnu/math/DQuantity;->unt:Lgnu/math/Unit;

    .line 25
    return-void
.end method

.method public static add(Lgnu/math/DQuantity;Lgnu/math/DQuantity;D)Lgnu/math/DQuantity;
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "k"

    .prologue
    .line 33
    invoke-virtual {p0}, Lgnu/math/DQuantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/math/DQuantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 34
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "units mis-match"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 35
    :cond_0
    invoke-virtual {p1}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v2

    iget-wide v2, v2, Lgnu/math/Unit;->factor:D

    invoke-virtual {p0}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v4

    iget-wide v4, v4, Lgnu/math/Unit;->factor:D

    div-double v0, v2, v4

    .line 36
    .local v0, unit_ratio:D
    new-instance v2, Lgnu/math/DQuantity;

    iget-wide v3, p0, Lgnu/math/DQuantity;->factor:D

    mul-double v5, p2, v0

    iget-wide v7, p1, Lgnu/math/DQuantity;->factor:D

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-virtual {p0}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    return-object v2
.end method

.method public static divide(Lgnu/math/DQuantity;Lgnu/math/DQuantity;)Lgnu/math/DQuantity;
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 48
    iget-wide v3, p0, Lgnu/math/DQuantity;->factor:D

    iget-wide v5, p1, Lgnu/math/DQuantity;->factor:D

    div-double v0, v3, v5

    .line 49
    .local v0, factor:D
    invoke-virtual {p0}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v3

    invoke-virtual {p1}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v4

    invoke-static {v3, v4}, Lgnu/math/Unit;->divide(Lgnu/math/Unit;Lgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v2

    .line 50
    .local v2, unit:Lgnu/math/Unit;
    new-instance v3, Lgnu/math/DQuantity;

    invoke-direct {v3, v0, v1, v2}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    return-object v3
.end method

.method public static times(Lgnu/math/DQuantity;Lgnu/math/DQuantity;)Lgnu/math/DQuantity;
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 41
    iget-wide v3, p0, Lgnu/math/DQuantity;->factor:D

    iget-wide v5, p1, Lgnu/math/DQuantity;->factor:D

    mul-double v0, v3, v5

    .line 42
    .local v0, factor:D
    invoke-virtual {p0}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v3

    invoke-virtual {p1}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v4

    invoke-static {v3, v4}, Lgnu/math/Unit;->times(Lgnu/math/Unit;Lgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v2

    .line 43
    .local v2, unit:Lgnu/math/Unit;
    new-instance v3, Lgnu/math/DQuantity;

    invoke-direct {v3, v0, v1, v2}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    return-object v3
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 7
    .parameter "y"
    .parameter "k"

    .prologue
    .line 55
    instance-of v0, p1, Lgnu/math/DQuantity;

    if-eqz v0, :cond_0

    .line 56
    check-cast p1, Lgnu/math/DQuantity;

    .end local p1
    int-to-double v0, p2

    invoke-static {p0, p1, v0, v1}, Lgnu/math/DQuantity;->add(Lgnu/math/DQuantity;Lgnu/math/DQuantity;D)Lgnu/math/DQuantity;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 57
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lgnu/math/DQuantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v0

    sget-object v1, Lgnu/math/Dimensions;->Empty:Lgnu/math/Dimensions;

    if-ne v0, v1, :cond_1

    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Lgnu/math/DQuantity;

    iget-wide v1, p0, Lgnu/math/DQuantity;->factor:D

    int-to-double v3, p2

    check-cast p1, Lgnu/math/RealNum;

    .end local p1
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    invoke-virtual {p0}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    goto :goto_0

    .line 59
    .restart local p1
    :cond_1
    instance-of v0, p1, Lgnu/math/Numeric;

    if-nez v0, :cond_2

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 61
    :cond_2
    check-cast p1, Lgnu/math/Numeric;

    .end local p1
    invoke-virtual {p1, p0, p2}, Lgnu/math/Numeric;->addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;

    move-result-object v0

    goto :goto_0
.end method

.method public addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;
    .locals 7
    .parameter "x"
    .parameter "k"

    .prologue
    .line 66
    invoke-virtual {p0}, Lgnu/math/DQuantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v0

    sget-object v1, Lgnu/math/Dimensions;->Empty:Lgnu/math/Dimensions;

    if-ne v0, v1, :cond_0

    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lgnu/math/DFloNum;

    check-cast p1, Lgnu/math/RealNum;

    .end local p1
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    int-to-double v3, p2

    iget-wide v5, p0, Lgnu/math/DQuantity;->factor:D

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 68
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 9
    .parameter "y"

    .prologue
    .line 91
    instance-of v2, p1, Lgnu/math/DQuantity;

    if-eqz v2, :cond_1

    .line 93
    move-object v0, p1

    check-cast v0, Lgnu/math/DQuantity;

    move-object v1, v0

    .line 94
    .local v1, qy:Lgnu/math/DQuantity;
    invoke-virtual {p0}, Lgnu/math/DQuantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v2

    invoke-virtual {v1}, Lgnu/math/DQuantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 95
    new-instance v2, Lgnu/math/DFloNum;

    iget-wide v3, p0, Lgnu/math/DQuantity;->factor:D

    invoke-virtual {p0}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/math/Unit;->doubleValue()D

    move-result-wide v5

    mul-double/2addr v3, v5

    iget-wide v5, v1, Lgnu/math/DQuantity;->factor:D

    invoke-virtual {v1}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v7

    iget-wide v7, v7, Lgnu/math/Unit;->factor:D

    mul-double/2addr v5, v7

    div-double/2addr v3, v5

    invoke-direct {v2, v3, v4}, Lgnu/math/DFloNum;-><init>(D)V

    .line 103
    .end local v1           #qy:Lgnu/math/DQuantity;
    .end local p1
    :goto_0
    return-object v2

    .line 97
    .restart local v1       #qy:Lgnu/math/DQuantity;
    .restart local p1
    :cond_0
    invoke-static {p0, v1}, Lgnu/math/DQuantity;->divide(Lgnu/math/DQuantity;Lgnu/math/DQuantity;)Lgnu/math/DQuantity;

    move-result-object v2

    goto :goto_0

    .line 99
    .end local v1           #qy:Lgnu/math/DQuantity;
    :cond_1
    instance-of v2, p1, Lgnu/math/RealNum;

    if-eqz v2, :cond_2

    .line 100
    new-instance v2, Lgnu/math/DQuantity;

    iget-wide v3, p0, Lgnu/math/DQuantity;->factor:D

    check-cast p1, Lgnu/math/RealNum;

    .end local p1
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-virtual {p0}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    goto :goto_0

    .line 101
    .restart local p1
    :cond_2
    instance-of v2, p1, Lgnu/math/Numeric;

    if-nez v2, :cond_3

    .line 102
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 103
    :cond_3
    check-cast p1, Lgnu/math/Numeric;

    .end local p1
    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v2

    goto :goto_0
.end method

.method public divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 5
    .parameter "x"

    .prologue
    .line 108
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Lgnu/math/DQuantity;

    check-cast p1, Lgnu/math/RealNum;

    .end local p1
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    iget-wide v3, p0, Lgnu/math/DQuantity;->factor:D

    div-double/2addr v1, v3

    sget-object v3, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    invoke-virtual {p0}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v4

    invoke-static {v3, v4}, Lgnu/math/Unit;->divide(Lgnu/math/Unit;Lgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    return-object v0

    .line 111
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final doubleValue()D
    .locals 4

    .prologue
    .line 19
    iget-wide v0, p0, Lgnu/math/DQuantity;->factor:D

    iget-object v2, p0, Lgnu/math/DQuantity;->unt:Lgnu/math/Unit;

    iget-wide v2, v2, Lgnu/math/Unit;->factor:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public isExact()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public isZero()Z
    .locals 4

    .prologue
    .line 29
    iget-wide v0, p0, Lgnu/math/DQuantity;->factor:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 5
    .parameter "y"

    .prologue
    .line 73
    instance-of v0, p1, Lgnu/math/DQuantity;

    if-eqz v0, :cond_0

    .line 74
    check-cast p1, Lgnu/math/DQuantity;

    .end local p1
    invoke-static {p0, p1}, Lgnu/math/DQuantity;->times(Lgnu/math/DQuantity;Lgnu/math/DQuantity;)Lgnu/math/DQuantity;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 75
    .restart local p1
    :cond_0
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_1

    .line 76
    new-instance v0, Lgnu/math/DQuantity;

    iget-wide v1, p0, Lgnu/math/DQuantity;->factor:D

    check-cast p1, Lgnu/math/RealNum;

    .end local p1
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v3

    mul-double/2addr v1, v3

    invoke-virtual {p0}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    goto :goto_0

    .line 77
    .restart local p1
    :cond_1
    instance-of v0, p1, Lgnu/math/Numeric;

    if-nez v0, :cond_2

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 79
    :cond_2
    check-cast p1, Lgnu/math/Numeric;

    .end local p1
    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v0

    goto :goto_0
.end method

.method public mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 5
    .parameter "x"

    .prologue
    .line 84
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lgnu/math/DQuantity;

    check-cast p1, Lgnu/math/RealNum;

    .end local p1
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    iget-wide v3, p0, Lgnu/math/DQuantity;->factor:D

    mul-double/2addr v1, v3

    invoke-virtual {p0}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    return-object v0

    .line 86
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final number()Lgnu/math/Complex;
    .locals 3

    .prologue
    .line 16
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v1, p0, Lgnu/math/DQuantity;->factor:D

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public final re()Lgnu/math/RealNum;
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v1, p0, Lgnu/math/DQuantity;->factor:D

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
    .line 128
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lgnu/math/DQuantity;->factor:D

    .line 129
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/math/Unit;

    iput-object v0, p0, Lgnu/math/DQuantity;->unt:Lgnu/math/Unit;

    .line 130
    return-void
.end method

.method public final unit()Lgnu/math/Unit;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lgnu/math/DQuantity;->unt:Lgnu/math/Unit;

    return-object v0
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
    .line 121
    iget-wide v0, p0, Lgnu/math/DQuantity;->factor:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 122
    iget-object v0, p0, Lgnu/math/DQuantity;->unt:Lgnu/math/Unit;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 123
    return-void
.end method
