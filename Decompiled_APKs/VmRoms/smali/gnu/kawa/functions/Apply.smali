.class public Lgnu/kawa/functions/Apply;
.super Lgnu/mapping/ProcedureN;
.source "Apply.java"


# instance fields
.field applyToArgs:Lgnu/kawa/functions/ApplyToArgs;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lgnu/kawa/functions/ApplyToArgs;)V
    .locals 0
    .parameter "name"
    .parameter "applyToArgs"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object p2, p0, Lgnu/kawa/functions/Apply;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 17
    return-void
.end method

.method public static getArguments([Ljava/lang/Object;ILgnu/mapping/Procedure;)[Ljava/lang/Object;
    .locals 7
    .parameter "args"
    .parameter "skip"
    .parameter "proc"

    .prologue
    .line 21
    array-length v1, p0

    .line 22
    .local v1, count:I
    add-int/lit8 v2, p1, 0x1

    if-ge v1, v2, :cond_0

    .line 23
    new-instance p0, Lgnu/mapping/WrongArguments;

    .end local p0
    const-string p2, "apply"

    .end local p2
    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(apply proc [args] args) [count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #count:I
    const-string v3, " skip:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, v2, p1}, Lgnu/mapping/WrongArguments;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw p0

    .line 24
    .restart local v1       #count:I
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_0
    const/4 v2, 0x1

    sub-int v2, v1, v2

    aget-object v2, p0, v2

    .line 26
    .local v2, last:Ljava/lang/Object;
    instance-of v3, v2, [Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 28
    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [Ljava/lang/Object;

    .line 29
    .local v3, last_arr:[Ljava/lang/Object;
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    move-object p0, v2

    .end local v2           #last:Ljava/lang/Object;
    .local p0, last:Ljava/lang/Object;
    move-object p1, v3

    .line 65
    .end local v1           #count:I
    .end local v3           #last_arr:[Ljava/lang/Object;
    .end local p1
    .end local p2
    :goto_0
    return-object p1

    .line 31
    .restart local v1       #count:I
    .restart local v2       #last:Ljava/lang/Object;
    .restart local v3       #last_arr:[Ljava/lang/Object;
    .local p0, args:[Ljava/lang/Object;
    .restart local p1
    .restart local p2
    :cond_1
    array-length v3, v3

    .line 37
    .local v3, last_count:I
    :goto_1
    if-gez v3, :cond_4

    .line 38
    new-instance p0, Lgnu/mapping/WrongType;

    .end local p0           #args:[Ljava/lang/Object;
    const-string p1, "sequence or array"

    .end local p1
    invoke-direct {p0, p2, v1, v2, p1}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw p0

    .line 33
    .end local v3           #last_count:I
    .restart local p0       #args:[Ljava/lang/Object;
    .restart local p1
    :cond_2
    instance-of v3, v2, Lgnu/lists/Sequence;

    if-eqz v3, :cond_3

    .line 34
    move-object v0, v2

    check-cast v0, Lgnu/lists/Sequence;

    move-object v3, v0

    invoke-interface {v3}, Lgnu/lists/Sequence;->size()I

    move-result v3

    .restart local v3       #last_count:I
    goto :goto_1

    .line 36
    .end local v3           #last_count:I
    :cond_3
    const/4 v3, -0x1

    .restart local v3       #last_count:I
    goto :goto_1

    .line 39
    :cond_4
    sub-int p2, v1, p1

    const/4 v4, 0x1

    sub-int/2addr p2, v4

    add-int/2addr p2, v3

    .line 40
    .local p2, numArgs:I
    new-array v4, p2, [Ljava/lang/Object;

    .line 42
    .local v4, proc_args:[Ljava/lang/Object;
    const/4 p2, 0x0

    .local p2, i:I
    :goto_2
    sub-int v5, v1, p1

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge p2, v5, :cond_5

    .line 43
    add-int v5, p2, p1

    aget-object v5, p0, v5

    aput-object v5, v4, p2

    .line 42
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 44
    :cond_5
    instance-of p0, v2, [Ljava/lang/Object;

    .end local p0           #args:[Ljava/lang/Object;
    if-eqz p0, :cond_9

    .line 46
    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-static {v5, p0, v4, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p0, p2

    .end local p2           #i:I
    .local p0, i:I
    move-object p1, v2

    .end local v2           #last:Ljava/lang/Object;
    .local p1, last:Ljava/lang/Object;
    move p2, v3

    .end local v1           #count:I
    .end local v3           #last_count:I
    .local p2, last_count:I
    :goto_3
    move-object p0, p1

    .end local p1           #last:Ljava/lang/Object;
    .local p0, last:Ljava/lang/Object;
    move-object p1, v4

    .line 65
    goto :goto_0

    .line 51
    .end local p2           #last_count:I
    .local v1, last:Ljava/lang/Object;
    .local v2, last_count:I
    .local p0, i:I
    :goto_4
    instance-of p1, v1, Lgnu/lists/Pair;

    if-eqz p1, :cond_6

    .line 53
    move-object v0, v1

    check-cast v0, Lgnu/lists/Pair;

    move-object p2, v0

    .line 54
    .local p2, pair:Lgnu/lists/Pair;
    add-int/lit8 p1, p0, 0x1

    .end local p0           #i:I
    .local p1, i:I
    invoke-virtual {p2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #last:Ljava/lang/Object;
    aput-object v1, v4, p0

    .line 55
    invoke-virtual {p2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    .line 56
    .local p0, last:Ljava/lang/Object;
    add-int/lit8 p2, v2, -0x1

    .end local v2           #last_count:I
    .local p2, last_count:I
    move v2, p2

    .end local p2           #last_count:I
    .restart local v2       #last_count:I
    move-object v1, p0

    .end local p0           #last:Ljava/lang/Object;
    .restart local v1       #last:Ljava/lang/Object;
    move p0, p1

    .line 57
    .end local p1           #i:I
    .local p0, i:I
    goto :goto_4

    .line 58
    :cond_6
    if-lez v2, :cond_8

    .line 60
    move-object v0, v1

    check-cast v0, Lgnu/lists/Sequence;

    move-object v3, v0

    .line 61
    .local v3, last_seq:Lgnu/lists/Sequence;
    const/4 p1, 0x0

    .local p1, j:I
    move p2, p1

    .end local p1           #j:I
    .local p2, j:I
    move p1, p0

    .end local p0           #i:I
    .local p1, i:I
    :goto_5
    if-ge p2, v2, :cond_7

    .line 62
    add-int/lit8 p0, p1, 0x1

    .end local p1           #i:I
    .restart local p0       #i:I
    invoke-interface {v3, p2}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, p1

    .line 61
    add-int/lit8 p1, p2, 0x1

    .end local p2           #j:I
    .local p1, j:I
    move p2, p1

    .end local p1           #j:I
    .restart local p2       #j:I
    move p1, p0

    .end local p0           #i:I
    .local p1, i:I
    goto :goto_5

    :cond_7
    move p0, p1

    .end local p1           #i:I
    .restart local p0       #i:I
    move p2, v2

    .end local v2           #last_count:I
    .local p2, last_count:I
    move-object p1, v1

    .end local v1           #last:Ljava/lang/Object;
    .local p1, last:Ljava/lang/Object;
    goto :goto_3

    .end local v3           #last_seq:Lgnu/lists/Sequence;
    .end local p1           #last:Ljava/lang/Object;
    .end local p2           #last_count:I
    .restart local v1       #last:Ljava/lang/Object;
    .restart local v2       #last_count:I
    :cond_8
    move p2, v2

    .end local v2           #last_count:I
    .restart local p2       #last_count:I
    move-object p1, v1

    .end local v1           #last:Ljava/lang/Object;
    .restart local p1       #last:Ljava/lang/Object;
    goto :goto_3

    .end local p0           #i:I
    .local v1, count:I
    .local v2, last:Ljava/lang/Object;
    .local v3, last_count:I
    .local p1, skip:I
    .local p2, i:I
    :cond_9
    move p0, p2

    .end local p2           #i:I
    .restart local p0       #i:I
    move-object v1, v2

    .end local v2           #last:Ljava/lang/Object;
    .local v1, last:Ljava/lang/Object;
    move v2, v3

    .end local v3           #last_count:I
    .local v2, last_count:I
    goto :goto_4
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 3
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    .line 76
    .local v0, args:[Ljava/lang/Object;
    iget-object v1, p0, Lgnu/kawa/functions/Apply;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    const/4 v2, 0x0

    invoke-static {v0, v2, p0}, Lgnu/kawa/functions/Apply;->getArguments([Ljava/lang/Object;ILgnu/mapping/Procedure;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lgnu/kawa/functions/ApplyToArgs;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 77
    return-void
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lgnu/kawa/functions/Apply;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    const/4 v1, 0x0

    invoke-static {p1, v1, p0}, Lgnu/kawa/functions/Apply;->getArguments([Ljava/lang/Object;ILgnu/mapping/Procedure;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/kawa/functions/ApplyToArgs;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
