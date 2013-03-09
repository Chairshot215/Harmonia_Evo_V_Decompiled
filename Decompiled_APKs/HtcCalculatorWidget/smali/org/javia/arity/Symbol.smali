.class public Lorg/javia/arity/Symbol;
.super Ljava/lang/Object;
.source "Symbol.java"


# static fields
.field static final CONST_ARITY:I = -0x3


# instance fields
.field private arity:I

.field fun:Lorg/javia/arity/Function;

.field isConst:Z

.field private name:Ljava/lang/String;

.field op:B

.field valueIm:D

.field valueRe:D


# direct methods
.method constructor <init>(Ljava/lang/String;DDZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/javia/arity/Symbol;->isConst:Z

    .line 47
    const/4 v0, -0x3

    invoke-virtual {p0, p1, v0}, Lorg/javia/arity/Symbol;->setKey(Ljava/lang/String;I)Lorg/javia/arity/Symbol;

    .line 48
    iput-wide p2, p0, Lorg/javia/arity/Symbol;->valueRe:D

    .line 49
    iput-wide p4, p0, Lorg/javia/arity/Symbol;->valueIm:D

    .line 50
    iput-boolean p6, p0, Lorg/javia/arity/Symbol;->isConst:Z

    .line 51
    return-void
.end method

.method constructor <init>(Ljava/lang/String;DZ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DDZ)V

    .line 44
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IBZI)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/javia/arity/Symbol;->isConst:Z

    .line 31
    invoke-virtual {p0, p1, p2}, Lorg/javia/arity/Symbol;->setKey(Ljava/lang/String;I)Lorg/javia/arity/Symbol;

    .line 32
    iput-byte p3, p0, Lorg/javia/arity/Symbol;->op:B

    .line 33
    iput-boolean p4, p0, Lorg/javia/arity/Symbol;->isConst:Z

    .line 34
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/javia/arity/Function;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/javia/arity/Symbol;->isConst:Z

    .line 37
    invoke-virtual {p2}, Lorg/javia/arity/Function;->arity()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/javia/arity/Symbol;->setKey(Ljava/lang/String;I)Lorg/javia/arity/Symbol;

    .line 38
    iput-object p2, p0, Lorg/javia/arity/Symbol;->fun:Lorg/javia/arity/Function;

    .line 40
    return-void
.end method

.method static makeArg(Ljava/lang/String;I)Lorg/javia/arity/Symbol;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 54
    new-instance v0, Lorg/javia/arity/Symbol;

    const/4 v2, -0x3

    add-int/lit8 v1, p1, 0x26

    int-to-byte v3, v1

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;IBZI)V

    return-object v0
.end method

.method static makeVmOp(Ljava/lang/String;I)Lorg/javia/arity/Symbol;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 58
    new-instance v0, Lorg/javia/arity/Symbol;

    sget-object v1, Lorg/javia/arity/VM;->arity:[B

    aget-byte v2, v1, p1

    int-to-byte v3, p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;IBZI)V

    return-object v0
.end method

.method static newEmpty(Lorg/javia/arity/Symbol;)Lorg/javia/arity/Symbol;
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 80
    new-instance v0, Lorg/javia/arity/Symbol;

    iget-object v1, p0, Lorg/javia/arity/Symbol;->name:Ljava/lang/String;

    iget v2, p0, Lorg/javia/arity/Symbol;->arity:I

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;IBZI)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 94
    check-cast p1, Lorg/javia/arity/Symbol;

    .line 95
    iget-object v0, p0, Lorg/javia/arity/Symbol;->name:Ljava/lang/String;

    iget-object v1, p1, Lorg/javia/arity/Symbol;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/javia/arity/Symbol;->arity:I

    iget v1, p1, Lorg/javia/arity/Symbol;->arity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getArity()I
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Lorg/javia/arity/Symbol;->arity:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/javia/arity/Symbol;->arity:I

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/javia/arity/Symbol;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/javia/arity/Symbol;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/javia/arity/Symbol;->arity:I

    add-int/2addr v0, v1

    return v0
.end method

.method isEmpty()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 84
    iget-byte v0, p0, Lorg/javia/arity/Symbol;->op:B

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/javia/arity/Symbol;->fun:Lorg/javia/arity/Function;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Symbol;->valueRe:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Symbol;->valueIm:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setKey(Ljava/lang/String;I)Lorg/javia/arity/Symbol;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lorg/javia/arity/Symbol;->name:Ljava/lang/String;

    .line 89
    iput p2, p0, Lorg/javia/arity/Symbol;->arity:I

    .line 90
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Symbol \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/javia/arity/Symbol;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' arity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/javia/arity/Symbol;->arity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " val "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/javia/arity/Symbol;->valueRe:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " op "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/javia/arity/Symbol;->op:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
