.class public Lkawa/lang/PairPat;
.super Lkawa/lang/Pattern;
.source "PairPat.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# instance fields
.field car:Lkawa/lang/Pattern;

.field private car_count:I

.field cdr:Lkawa/lang/Pattern;

.field private cdr_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Lkawa/lang/Pattern;Lkawa/lang/Pattern;)V
    .locals 1
    .parameter "car"
    .parameter "cdr"

    .prologue
    .line 17
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    .line 18
    iput-object p1, p0, Lkawa/lang/PairPat;->car:Lkawa/lang/Pattern;

    .line 19
    iput-object p2, p0, Lkawa/lang/PairPat;->cdr:Lkawa/lang/Pattern;

    .line 20
    invoke-virtual {p1}, Lkawa/lang/Pattern;->varCount()I

    move-result v0

    iput v0, p0, Lkawa/lang/PairPat;->car_count:I

    .line 21
    invoke-virtual {p2}, Lkawa/lang/Pattern;->varCount()I

    move-result v0

    iput v0, p0, Lkawa/lang/PairPat;->cdr_count:I

    .line 22
    return-void
.end method

.method public static make(Lkawa/lang/Pattern;Lkawa/lang/Pattern;)Lkawa/lang/PairPat;
    .locals 1
    .parameter "car"
    .parameter "cdr"

    .prologue
    .line 26
    new-instance v0, Lkawa/lang/PairPat;

    invoke-direct {v0, p0, p1}, Lkawa/lang/PairPat;-><init>(Lkawa/lang/Pattern;Lkawa/lang/Pattern;)V

    return-object v0
.end method


# virtual methods
.method public match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 6
    .parameter "obj"
    .parameter "vars"
    .parameter "start_vars"

    .prologue
    const/4 v5, 0x0

    .line 31
    instance-of v2, p1, Lgnu/lists/Pair;

    if-nez v2, :cond_0

    move v2, v5

    .line 34
    :goto_0
    return v2

    .line 33
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v1, v0

    .line 34
    .local v1, pair:Lgnu/lists/Pair;
    iget-object v2, p0, Lkawa/lang/PairPat;->car:Lkawa/lang/Pattern;

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, p2, p3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lkawa/lang/PairPat;->cdr:Lkawa/lang/Pattern;

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    iget v4, p0, Lkawa/lang/PairPat;->car_count:I

    add-int/2addr v4, p3

    invoke-virtual {v2, v3, p2, v4}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 40
    const-string v0, "#<pair-pattern car: "

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lkawa/lang/PairPat;->car:Lkawa/lang/Pattern;

    invoke-virtual {v0, p1}, Lkawa/lang/Pattern;->print(Lgnu/lists/Consumer;)V

    .line 42
    const-string v0, " cdr: "

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lkawa/lang/PairPat;->cdr:Lkawa/lang/Pattern;

    invoke-virtual {v0, p1}, Lkawa/lang/Pattern;->print(Lgnu/lists/Consumer;)V

    .line 44
    const/16 v0, 0x3e

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    .line 45
    return-void
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
    .line 61
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkawa/lang/Pattern;

    iput-object v0, p0, Lkawa/lang/PairPat;->car:Lkawa/lang/Pattern;

    .line 62
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkawa/lang/Pattern;

    iput-object v0, p0, Lkawa/lang/PairPat;->cdr:Lkawa/lang/Pattern;

    .line 63
    return-void
.end method

.method public varCount()I
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Lkawa/lang/PairPat;->car_count:I

    iget v1, p0, Lkawa/lang/PairPat;->cdr_count:I

    add-int/2addr v0, v1

    return v0
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
    .line 54
    iget-object v0, p0, Lkawa/lang/PairPat;->car:Lkawa/lang/Pattern;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lkawa/lang/PairPat;->cdr:Lkawa/lang/Pattern;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 56
    return-void
.end method
