.class public Lgnu/kawa/functions/ApplyToArgs;
.super Lgnu/mapping/ProcedureN;
.source "ApplyToArgs.java"


# instance fields
.field language:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lgnu/expr/Language;)V
    .locals 2
    .parameter "name"
    .parameter "language"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 125
    iput-object p2, p0, Lgnu/kawa/functions/ApplyToArgs;->language:Lgnu/expr/Language;

    .line 126
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompilationHelpers:validateApplyToArgs"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/ApplyToArgs;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 134
    aget-object v2, p1, v6

    .line 135
    .local v2, proc:Ljava/lang/Object;
    instance-of v4, v2, Lgnu/mapping/Procedure;

    if-eqz v4, :cond_0

    .line 137
    array-length v4, p1

    sub-int/2addr v4, v5

    new-array v3, v4, [Ljava/lang/Object;

    .line 138
    .local v3, rargs:[Ljava/lang/Object;
    array-length v4, v3

    invoke-static {p1, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    check-cast v2, Lgnu/mapping/Procedure;

    .end local v2           #proc:Ljava/lang/Object;
    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 168
    .end local v3           #rargs:[Ljava/lang/Object;
    .end local p0
    :goto_0
    return-object v4

    .line 141
    .restart local v2       #proc:Ljava/lang/Object;
    .restart local p0
    :cond_0
    instance-of v4, v2, Lgnu/bytecode/Type;

    if-nez v4, :cond_1

    instance-of v4, v2, Ljava/lang/Class;

    if-eqz v4, :cond_2

    .line 144
    :cond_1
    sget-object v4, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    invoke-virtual {v4, p1}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 146
    :cond_2
    instance-of v4, v2, Ljava/util/List;

    if-eqz v4, :cond_4

    .line 154
    array-length v4, p1

    if-eq v4, v7, :cond_3

    .line 155
    new-instance v4, Lgnu/mapping/WrongArguments;

    array-length v5, p1

    invoke-direct {v4, p0, v5}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v4

    .line 156
    :cond_3
    aget-object p0, p1, v5

    .end local p0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 158
    .local v0, index:I
    check-cast v2, Ljava/util/List;

    .end local v2           #proc:Ljava/lang/Object;
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 163
    .end local v0           #index:I
    .restart local v2       #proc:Ljava/lang/Object;
    .restart local p0
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 164
    .local v1, pclass:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 166
    array-length v4, p1

    if-eq v4, v7, :cond_5

    .line 167
    new-instance v4, Lgnu/mapping/WrongArguments;

    array-length v5, p1

    invoke-direct {v4, p0, v5}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v4

    .line 168
    :cond_5
    aget-object p0, p1, v5

    .end local p0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 170
    .restart local p0
    :cond_6
    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "procedure"

    invoke-direct {v4, p0, v6, v2, v5}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v4
.end method

.method public check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "arg1"
    .parameter "ctx"

    .prologue
    .line 74
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1
    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->check0(Lgnu/mapping/CallContext;)V

    .line 78
    :goto_0
    return-void

    .line 77
    .restart local p1
    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/mapping/ProcedureN;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_0
.end method

.method public check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "arg1"
    .parameter "arg2"
    .parameter "ctx"

    .prologue
    .line 82
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 83
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1
    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 86
    :goto_0
    return-void

    .line 85
    .restart local p1
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/mapping/ProcedureN;->check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_0
.end method

.method public check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "ctx"

    .prologue
    .line 90
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 91
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1
    invoke-virtual {p1, p2, p3, p4}, Lgnu/mapping/Procedure;->check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 94
    :goto_0
    return-void

    .line 93
    .restart local p1
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/mapping/ProcedureN;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_0
.end method

.method public check4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "ctx"

    .prologue
    .line 99
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 100
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1
    invoke-virtual {p1, p2, p3, p4, p5}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 103
    :goto_0
    return-void

    .line 102
    .restart local p1
    :cond_0
    invoke-super/range {p0 .. p5}, Lgnu/mapping/ProcedureN;->check4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_0
.end method

.method public checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 6
    .parameter "args"
    .parameter "ctx"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 107
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/functions/ApplyToArgs;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 108
    .local v0, code:I
    if-eqz v0, :cond_1

    .line 110
    move-object v1, p0

    .line 111
    .local v1, proc:Lgnu/mapping/Procedure;
    array-length v3, p1

    if-lez v3, :cond_0

    aget-object v3, p1, v4

    instance-of v3, v3, Lgnu/mapping/Procedure;

    if-eqz v3, :cond_0

    .line 113
    aget-object v1, p1, v4

    .end local v1           #proc:Lgnu/mapping/Procedure;
    check-cast v1, Lgnu/mapping/Procedure;

    .line 114
    .restart local v1       #proc:Lgnu/mapping/Procedure;
    array-length v3, p1

    sub-int/2addr v3, v5

    new-array v2, v3, [Ljava/lang/Object;

    .line 115
    .local v2, xargs:[Ljava/lang/Object;
    array-length v3, v2

    invoke-static {p1, v5, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    move-object p1, v2

    .line 118
    .end local v2           #xargs:[Ljava/lang/Object;
    :cond_0
    invoke-static {v0, v1, p1}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 120
    .end local v1           #proc:Lgnu/mapping/Procedure;
    :cond_1
    return-void
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 1
    .parameter "arg1"
    .parameter "ctx"

    .prologue
    .line 14
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 15
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1
    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->match0(Lgnu/mapping/CallContext;)I

    move-result v0

    .line 17
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/mapping/ProcedureN;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 1
    .parameter "arg1"
    .parameter "arg2"
    .parameter "ctx"

    .prologue
    .line 22
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 23
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1
    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 25
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/mapping/ProcedureN;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 1
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "ctx"

    .prologue
    .line 30
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 31
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1
    invoke-virtual {p1, p2, p3, p4}, Lgnu/mapping/Procedure;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 33
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/mapping/ProcedureN;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 1
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "ctx"

    .prologue
    .line 39
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 40
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1
    invoke-virtual {p1, p2, p3, p4, p5}, Lgnu/mapping/Procedure;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 42
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-super/range {p0 .. p5}, Lgnu/mapping/ProcedureN;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 8
    .parameter "args"
    .parameter "ctx"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 47
    array-length v6, p1

    .line 48
    .local v6, n:I
    if-lez v6, :cond_0

    aget-object v1, p1, v3

    instance-of v1, v1, Lgnu/mapping/Procedure;

    if-eqz v1, :cond_0

    .line 50
    aget-object v0, p1, v3

    check-cast v0, Lgnu/mapping/Procedure;

    .line 51
    .local v0, proc:Lgnu/mapping/Procedure;
    packed-switch v6, :pswitch_data_0

    .line 64
    sub-int v1, v6, v2

    new-array v7, v1, [Ljava/lang/Object;

    .line 65
    .local v7, xargs:[Ljava/lang/Object;
    sub-int v1, v6, v2

    invoke-static {p1, v2, v7, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    invoke-virtual {v0, v7, p2}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    .line 69
    .end local v0           #proc:Lgnu/mapping/Procedure;
    .end local v7           #xargs:[Ljava/lang/Object;
    :goto_0
    return v1

    .line 54
    .restart local v0       #proc:Lgnu/mapping/Procedure;
    :pswitch_0
    invoke-virtual {v0, p2}, Lgnu/mapping/Procedure;->match0(Lgnu/mapping/CallContext;)I

    move-result v1

    goto :goto_0

    .line 56
    :pswitch_1
    aget-object v1, p1, v2

    invoke-virtual {v0, v1, p2}, Lgnu/mapping/Procedure;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    goto :goto_0

    .line 58
    :pswitch_2
    aget-object v1, p1, v2

    aget-object v2, p1, v4

    invoke-virtual {v0, v1, v2, p2}, Lgnu/mapping/Procedure;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    goto :goto_0

    .line 60
    :pswitch_3
    aget-object v1, p1, v2

    aget-object v2, p1, v4

    aget-object v3, p1, v5

    invoke-virtual {v0, v1, v2, v3, p2}, Lgnu/mapping/Procedure;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    goto :goto_0

    .line 62
    :pswitch_4
    aget-object v1, p1, v2

    aget-object v2, p1, v4

    aget-object v3, p1, v5

    const/4 v4, 0x4

    aget-object v4, p1, v4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lgnu/mapping/Procedure;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    goto :goto_0

    .line 69
    .end local v0           #proc:Lgnu/mapping/Procedure;
    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/mapping/ProcedureN;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
