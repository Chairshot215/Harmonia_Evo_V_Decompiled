.class public Lgnu/math/CComplex;
.super Lgnu/math/Complex;
.source "CComplex.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field imag:Lgnu/math/RealNum;

.field real:Lgnu/math/RealNum;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lgnu/math/Complex;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Lgnu/math/RealNum;Lgnu/math/RealNum;)V
    .locals 0
    .parameter "real"
    .parameter "imag"

    .prologue
    .line 22
    invoke-direct {p0}, Lgnu/math/Complex;-><init>()V

    .line 23
    iput-object p1, p0, Lgnu/math/CComplex;->real:Lgnu/math/RealNum;

    .line 24
    iput-object p2, p0, Lgnu/math/CComplex;->imag:Lgnu/math/RealNum;

    .line 25
    return-void
.end method


# virtual methods
.method public im()Lgnu/math/RealNum;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lgnu/math/CComplex;->imag:Lgnu/math/RealNum;

    return-object v0
.end method

.method public re()Lgnu/math/RealNum;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lgnu/math/CComplex;->real:Lgnu/math/RealNum;

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
    .line 42
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/math/RealNum;

    iput-object v0, p0, Lgnu/math/CComplex;->real:Lgnu/math/RealNum;

    .line 43
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/math/RealNum;

    iput-object v0, p0, Lgnu/math/CComplex;->imag:Lgnu/math/RealNum;

    .line 44
    return-void
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
    .line 35
    iget-object v0, p0, Lgnu/math/CComplex;->real:Lgnu/math/RealNum;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lgnu/math/CComplex;->imag:Lgnu/math/RealNum;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 37
    return-void
.end method
