.class public Lkawa/lang/ListRepeatPat;
.super Lkawa/lang/Pattern;
.source "ListRepeatPat.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# instance fields
.field element_pattern:Lkawa/lang/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Lkawa/lang/Pattern;)V
    .locals 0
    .parameter "element_pattern"

    .prologue
    .line 15
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    .line 16
    iput-object p1, p0, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    .line 17
    return-void
.end method

.method public static make(Lkawa/lang/Pattern;)Lkawa/lang/ListRepeatPat;
    .locals 1
    .parameter "element_pattern"

    .prologue
    .line 21
    new-instance v0, Lkawa/lang/ListRepeatPat;

    invoke-direct {v0, p0}, Lkawa/lang/ListRepeatPat;-><init>(Lkawa/lang/Pattern;)V

    return-object v0
.end method


# virtual methods
.method public match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 10
    .parameter "obj"
    .parameter "vars"
    .parameter "start_vars"

    .prologue
    const/4 v9, 0x0

    .line 40
    invoke-static {p1, v9}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v4

    .line 41
    .local v4, length:I
    if-gez v4, :cond_0

    move v7, v9

    .line 64
    :goto_0
    return v7

    .line 44
    :cond_0
    iget-object v7, p0, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    invoke-virtual {v7}, Lkawa/lang/Pattern;->varCount()I

    move-result v6

    .line 45
    .local v6, var_count:I
    move v2, v6

    .local v2, i:I
    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 46
    add-int v7, p3, v2

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v8, p2, v7

    goto :goto_1

    .line 47
    :cond_1
    new-array v1, v6, [Ljava/lang/Object;

    .line 48
    .local v1, element_vars:[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    if-ge v3, v4, :cond_4

    .line 50
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v5, v0

    .line 58
    .local v5, pair:Lgnu/lists/Pair;
    iget-object v7, p0, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8, v1, v9}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v7

    if-nez v7, :cond_2

    move v7, v9

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v6, :cond_3

    .line 61
    add-int v7, p3, v2

    aget-object v7, p2, v7

    check-cast v7, [Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    aget-object v8, v1, v2

    aput-object v8, v7, v3

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 62
    :cond_3
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 48
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 64
    .end local v5           #pair:Lgnu/lists/Pair;
    :cond_4
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 26
    const-string v0, "#<list-repeat-pattern "

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    invoke-virtual {v0, p1}, Lkawa/lang/Pattern;->print(Lgnu/lists/Consumer;)V

    .line 28
    const/16 v0, 0x3e

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    .line 29
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
    .line 80
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkawa/lang/Pattern;

    iput-object v0, p0, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    .line 81
    return-void
.end method

.method public varCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    invoke-virtual {v0}, Lkawa/lang/Pattern;->varCount()I

    move-result v0

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
    .line 74
    iget-object v0, p0, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 75
    return-void
.end method
