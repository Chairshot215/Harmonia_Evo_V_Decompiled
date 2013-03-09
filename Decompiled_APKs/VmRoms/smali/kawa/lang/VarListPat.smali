.class public Lkawa/lang/VarListPat;
.super Lkawa/lang/Pattern;
.source "VarListPat.java"


# instance fields
.field min_length:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "min"

    .prologue
    .line 10
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    iput p1, p0, Lkawa/lang/VarListPat;->min_length:I

    return-void
.end method


# virtual methods
.method public match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 5
    .parameter "obj"
    .parameter "vars"
    .parameter "start_vars"

    .prologue
    .line 21
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lkawa/lang/VarListPat;->min_length:I

    if-ge v1, v3, :cond_1

    .line 23
    instance-of v3, p1, Lgnu/lists/Pair;

    if-eqz v3, :cond_0

    .line 25
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v2, v0

    .line 26
    .local v2, p:Lgnu/lists/Pair;
    add-int v3, p3, v1

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p2, v3

    .line 27
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 21
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .end local v2           #p:Lgnu/lists/Pair;
    :cond_0
    const/4 v3, 0x0

    .line 33
    :goto_1
    return v3

    .line 32
    :cond_1
    add-int v3, p3, v1

    aput-object p1, p2, v3

    .line 33
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 40
    const-string v0, "#<varlist-pattern min:"

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 41
    iget v0, p0, Lkawa/lang/VarListPat;->min_length:I

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 42
    const/16 v0, 0x3e

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    .line 43
    return-void
.end method

.method public varCount()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lkawa/lang/VarListPat;->min_length:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
