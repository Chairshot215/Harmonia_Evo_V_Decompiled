.class public Lkawa/lang/ListPat;
.super Lkawa/lang/Pattern;
.source "ListPat.java"


# instance fields
.field default_value:Ljava/lang/Object;

.field max_length:I

.field min_length:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "len"

    .prologue
    .line 15
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    iput p1, p0, Lkawa/lang/ListPat;->min_length:I

    iput p1, p0, Lkawa/lang/ListPat;->max_length:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "min"
    .parameter "max"

    .prologue
    .line 16
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    iput p1, p0, Lkawa/lang/ListPat;->min_length:I

    iput p2, p0, Lkawa/lang/ListPat;->max_length:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;)V
    .locals 0
    .parameter "min"
    .parameter "max"
    .parameter "default_val"

    .prologue
    .line 18
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    iput p1, p0, Lkawa/lang/ListPat;->min_length:I

    iput p2, p0, Lkawa/lang/ListPat;->max_length:I

    iput-object p3, p0, Lkawa/lang/ListPat;->default_value:Ljava/lang/Object;

    return-void
.end method

.method public static match(IILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 6
    .parameter "min"
    .parameter "max"
    .parameter "default_val"
    .parameter "obj"
    .parameter "vars"
    .parameter "start_vars"

    .prologue
    const/4 v5, 0x0

    .line 24
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 26
    instance-of v3, p3, Lgnu/lists/Pair;

    if-eqz v3, :cond_0

    .line 28
    move-object v0, p3

    check-cast v0, Lgnu/lists/Pair;

    move-object v2, v0

    .line 29
    .local v2, p:Lgnu/lists/Pair;
    add-int v3, p5, v1

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p4, v3

    .line 30
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p3

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    .end local v2           #p:Lgnu/lists/Pair;
    :cond_0
    if-ge v1, p0, :cond_1

    move v3, v5

    .line 41
    :goto_1
    return v3

    .line 37
    :cond_1
    if-ne v1, p1, :cond_2

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p3, v3, :cond_2

    move v3, v5

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    :goto_2
    if-ge v1, p1, :cond_3

    .line 40
    add-int v3, p5, v1

    aput-object p2, p4, v3

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 41
    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static match(IILjava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .parameter "min"
    .parameter "max"
    .parameter "default_val"
    .parameter "obj"

    .prologue
    .line 55
    new-array v4, p1, [Ljava/lang/Object;

    .line 56
    .local v4, vars:[Ljava/lang/Object;
    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lkawa/lang/ListPat;->match(IILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 6
    .parameter "obj"
    .parameter "vars"
    .parameter "start_vars"

    .prologue
    .line 69
    iget v0, p0, Lkawa/lang/ListPat;->min_length:I

    iget v1, p0, Lkawa/lang/ListPat;->max_length:I

    iget-object v2, p0, Lkawa/lang/ListPat;->default_value:Ljava/lang/Object;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lkawa/lang/ListPat;->match(IILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 77
    const-string v0, "#<list-pattern min:"

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 78
    iget v0, p0, Lkawa/lang/ListPat;->min_length:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 79
    const-string v0, " max:"

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 80
    iget v0, p0, Lkawa/lang/ListPat;->max_length:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 81
    const-string v0, " default:"

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lkawa/lang/ListPat;->default_value:Ljava/lang/Object;

    invoke-static {v0, p1}, Lgnu/text/ReportFormat;->print(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 83
    const/16 v0, 0x3e

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    .line 84
    return-void
.end method

.method public varCount()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lkawa/lang/ListPat;->max_length:I

    return v0
.end method
