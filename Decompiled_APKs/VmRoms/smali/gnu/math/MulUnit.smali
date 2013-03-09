.class Lgnu/math/MulUnit;
.super Lgnu/math/Unit;
.source "MulUnit.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field next:Lgnu/math/MulUnit;

.field power1:I

.field power2:I

.field unit1:Lgnu/math/Unit;

.field unit2:Lgnu/math/Unit;


# direct methods
.method constructor <init>(Lgnu/math/Unit;ILgnu/math/Unit;I)V
    .locals 5
    .parameter "unit1"
    .parameter "power1"
    .parameter "unit2"
    .parameter "power2"

    .prologue
    .line 20
    invoke-direct {p0}, Lgnu/math/Unit;-><init>()V

    .line 21
    iput-object p1, p0, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    .line 22
    iput-object p3, p0, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    .line 23
    iput p2, p0, Lgnu/math/MulUnit;->power1:I

    .line 24
    iput p4, p0, Lgnu/math/MulUnit;->power2:I

    .line 25
    iget-object v1, p1, Lgnu/math/Unit;->dims:Lgnu/math/Dimensions;

    iget-object v2, p3, Lgnu/math/Unit;->dims:Lgnu/math/Dimensions;

    invoke-static {v1, p2, v2, p4}, Lgnu/math/Dimensions;->product(Lgnu/math/Dimensions;ILgnu/math/Dimensions;I)Lgnu/math/Dimensions;

    move-result-object v1

    iput-object v1, p0, Lgnu/math/MulUnit;->dims:Lgnu/math/Dimensions;

    .line 27
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 28
    iget-wide v1, p1, Lgnu/math/Unit;->factor:D

    iput-wide v1, p0, Lgnu/math/MulUnit;->factor:D

    .line 31
    :goto_0
    if-gez p4, :cond_1

    .line 33
    neg-int v0, p4

    .local v0, i:I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 34
    iget-wide v1, p0, Lgnu/math/MulUnit;->factor:D

    iget-wide v3, p3, Lgnu/math/Unit;->factor:D

    div-double/2addr v1, v3

    iput-wide v1, p0, Lgnu/math/MulUnit;->factor:D

    goto :goto_1

    .line 30
    .end local v0           #i:I
    :cond_0
    iget-wide v1, p1, Lgnu/math/Unit;->factor:D

    int-to-double v3, p2

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lgnu/math/MulUnit;->factor:D

    goto :goto_0

    .line 38
    :cond_1
    move v0, p4

    .restart local v0       #i:I
    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 39
    iget-wide v1, p0, Lgnu/math/MulUnit;->factor:D

    iget-wide v3, p3, Lgnu/math/Unit;->factor:D

    mul-double/2addr v1, v3

    iput-wide v1, p0, Lgnu/math/MulUnit;->factor:D

    goto :goto_2

    .line 42
    :cond_2
    iget-object v1, p1, Lgnu/math/Unit;->products:Lgnu/math/MulUnit;

    iput-object v1, p0, Lgnu/math/MulUnit;->next:Lgnu/math/MulUnit;

    .line 43
    iput-object p0, p1, Lgnu/math/Unit;->products:Lgnu/math/MulUnit;

    .line 44
    return-void
.end method

.method constructor <init>(Lgnu/math/Unit;Lgnu/math/Unit;I)V
    .locals 1
    .parameter "unit1"
    .parameter "unit2"
    .parameter "power2"

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lgnu/math/MulUnit;-><init>(Lgnu/math/Unit;ILgnu/math/Unit;I)V

    .line 49
    return-void
.end method

.method static lookup(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/MulUnit;
    .locals 2
    .parameter "unit1"
    .parameter "power1"
    .parameter "unit2"
    .parameter "power2"

    .prologue
    .line 83
    iget-object v0, p0, Lgnu/math/Unit;->products:Lgnu/math/MulUnit;

    .local v0, u:Lgnu/math/MulUnit;
    :goto_0
    if-eqz v0, :cond_1

    .line 85
    iget-object v1, v0, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    if-ne v1, p0, :cond_0

    iget-object v1, v0, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    if-ne v1, p2, :cond_0

    iget v1, v0, Lgnu/math/MulUnit;->power1:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Lgnu/math/MulUnit;->power2:I

    if-ne v1, p3, :cond_0

    move-object v1, v0

    .line 89
    :goto_1
    return-object v1

    .line 83
    :cond_0
    iget-object v0, v0, Lgnu/math/MulUnit;->next:Lgnu/math/MulUnit;

    goto :goto_0

    .line 89
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static make(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/MulUnit;
    .locals 2
    .parameter "unit1"
    .parameter "power1"
    .parameter "unit2"
    .parameter "power2"

    .prologue
    .line 94
    invoke-static {p0, p1, p2, p3}, Lgnu/math/MulUnit;->lookup(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/MulUnit;

    move-result-object v0

    .line 95
    .local v0, u:Lgnu/math/MulUnit;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 97
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lgnu/math/MulUnit;

    invoke-direct {v1, p0, p1, p2, p3}, Lgnu/math/MulUnit;-><init>(Lgnu/math/Unit;ILgnu/math/Unit;I)V

    goto :goto_0
.end method


# virtual methods
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
    .line 115
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/math/Unit;

    iput-object v0, p0, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    .line 116
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lgnu/math/MulUnit;->power1:I

    .line 117
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/math/Unit;

    iput-object v0, p0, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    .line 118
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lgnu/math/MulUnit;->power2:I

    .line 119
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v1, p0, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    iget v2, p0, Lgnu/math/MulUnit;->power1:I

    iget-object v3, p0, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    iget v4, p0, Lgnu/math/MulUnit;->power2:I

    invoke-static {v1, v2, v3, v4}, Lgnu/math/MulUnit;->lookup(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/MulUnit;

    move-result-object v0

    .line 124
    .local v0, u:Lgnu/math/MulUnit;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 126
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method

.method public sqrt()Lgnu/math/Unit;
    .locals 4

    .prologue
    .line 75
    iget v0, p0, Lgnu/math/MulUnit;->power1:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/math/MulUnit;->power2:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    iget v1, p0, Lgnu/math/MulUnit;->power1:I

    shr-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    iget v3, p0, Lgnu/math/MulUnit;->power2:I

    shr-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lgnu/math/MulUnit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lgnu/math/Unit;->sqrt()Lgnu/math/Unit;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x5e

    const/4 v2, 0x1

    .line 53
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 54
    .local v0, str:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 55
    iget v1, p0, Lgnu/math/MulUnit;->power1:I

    if-eq v1, v2, :cond_0

    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 58
    iget v1, p0, Lgnu/math/MulUnit;->power1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 60
    :cond_0
    iget v1, p0, Lgnu/math/MulUnit;->power2:I

    if-eqz v1, :cond_1

    .line 62
    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 63
    iget-object v1, p0, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 64
    iget v1, p0, Lgnu/math/MulUnit;->power2:I

    if-eq v1, v2, :cond_1

    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 67
    iget v1, p0, Lgnu/math/MulUnit;->power2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 70
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
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
    .line 106
    iget-object v0, p0, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 107
    iget v0, p0, Lgnu/math/MulUnit;->power1:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 108
    iget-object v0, p0, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 109
    iget v0, p0, Lgnu/math/MulUnit;->power2:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 110
    return-void
.end method
