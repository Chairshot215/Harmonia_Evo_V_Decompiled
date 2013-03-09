.class public Lgnu/math/CQuantity;
.super Lgnu/math/Quantity;
.source "CQuantity.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field num:Lgnu/math/Complex;

.field unt:Lgnu/math/Unit;


# direct methods
.method public constructor <init>(Lgnu/math/Complex;Lgnu/math/Unit;)V
    .locals 0
    .parameter "num"
    .parameter "unit"

    .prologue
    .line 15
    invoke-direct {p0}, Lgnu/math/Quantity;-><init>()V

    .line 16
    iput-object p1, p0, Lgnu/math/CQuantity;->num:Lgnu/math/Complex;

    .line 17
    iput-object p2, p0, Lgnu/math/CQuantity;->unt:Lgnu/math/Unit;

    .line 18
    return-void
.end method

.method public constructor <init>(Lgnu/math/RealNum;Lgnu/math/RealNum;Lgnu/math/Unit;)V
    .locals 1
    .parameter "real"
    .parameter "imag"
    .parameter "unit"

    .prologue
    .line 21
    invoke-direct {p0}, Lgnu/math/Quantity;-><init>()V

    .line 22
    new-instance v0, Lgnu/math/CComplex;

    invoke-direct {v0, p1, p2}, Lgnu/math/CComplex;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;)V

    iput-object v0, p0, Lgnu/math/CQuantity;->num:Lgnu/math/Complex;

    .line 23
    iput-object p3, p0, Lgnu/math/CQuantity;->unt:Lgnu/math/Unit;

    .line 24
    return-void
.end method


# virtual methods
.method public isExact()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lgnu/math/CQuantity;->num:Lgnu/math/Complex;

    invoke-virtual {v0}, Lgnu/math/Complex;->isExact()Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lgnu/math/CQuantity;->num:Lgnu/math/Complex;

    invoke-virtual {v0}, Lgnu/math/Complex;->isZero()Z

    move-result v0

    return v0
.end method

.method public number()Lgnu/math/Complex;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lgnu/math/CQuantity;->num:Lgnu/math/Complex;

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
    .line 47
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/math/Complex;

    iput-object v0, p0, Lgnu/math/CQuantity;->num:Lgnu/math/Complex;

    .line 48
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/math/Unit;

    iput-object v0, p0, Lgnu/math/CQuantity;->unt:Lgnu/math/Unit;

    .line 49
    return-void
.end method

.method public unit()Lgnu/math/Unit;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lgnu/math/CQuantity;->unt:Lgnu/math/Unit;

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
    .line 40
    iget-object v0, p0, Lgnu/math/CQuantity;->num:Lgnu/math/Complex;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lgnu/math/CQuantity;->unt:Lgnu/math/Unit;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 42
    return-void
.end method
