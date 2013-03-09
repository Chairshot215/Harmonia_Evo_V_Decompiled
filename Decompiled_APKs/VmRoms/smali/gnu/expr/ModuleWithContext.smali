.class public abstract Lgnu/expr/ModuleWithContext;
.super Lgnu/expr/ModuleBody;
.source "ModuleWithContext.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 165
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 166
    .local v0, ctx:Lgnu/mapping/CallContext;
    invoke-virtual {p1, v0}, Lgnu/expr/ModuleMethod;->check0(Lgnu/mapping/CallContext;)V

    .line 167
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "method"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 173
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 174
    .local v0, ctx:Lgnu/mapping/CallContext;
    invoke-virtual {p1, p2, v0}, Lgnu/expr/ModuleMethod;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 175
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "method"
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 181
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 182
    .local v0, ctx:Lgnu/mapping/CallContext;
    invoke-virtual {p1, p2, p3, v0}, Lgnu/expr/ModuleMethod;->check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 183
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "method"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 190
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 191
    .local v0, ctx:Lgnu/mapping/CallContext;
    invoke-virtual {p1, p2, p3, p4, v0}, Lgnu/expr/ModuleMethod;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 192
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "method"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 199
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v5

    .local v5, ctx:Lgnu/mapping/CallContext;
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 200
    invoke-virtual/range {v0 .. v5}, Lgnu/expr/ModuleMethod;->check4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 201
    invoke-virtual {v5}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "method"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 208
    .local v0, ctx:Lgnu/mapping/CallContext;
    invoke-virtual {p1, p2, v0}, Lgnu/expr/ModuleMethod;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 209
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 4
    .parameter "proc"
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    .line 8
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v1

    .line 9
    .local v1, num:I
    and-int/lit16 v0, v1, 0xfff

    .line 10
    .local v0, min:I
    if-lez v0, :cond_0

    .line 11
    const/high16 v2, -0xf

    or-int/2addr v2, v0

    .line 18
    :goto_0
    return v2

    .line 12
    :cond_0
    iput v3, p2, Lgnu/mapping/CallContext;->count:I

    .line 13
    iput v3, p2, Lgnu/mapping/CallContext;->where:I

    .line 14
    if-gez v1, :cond_1

    .line 15
    sget-object v2, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p0, p1, v2, p2}, Lgnu/expr/ModuleWithContext;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v2

    goto :goto_0

    .line 16
    :cond_1
    iput v3, p2, Lgnu/mapping/CallContext;->next:I

    .line 17
    iput-object p0, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    iput v2, p2, Lgnu/mapping/CallContext;->pc:I

    move v2, v3

    .line 18
    goto :goto_0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6
    .parameter "proc"
    .parameter "arg1"
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 23
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v3

    .line 24
    .local v3, num:I
    and-int/lit16 v2, v3, 0xfff

    .line 25
    .local v2, min:I
    if-le v2, v4, :cond_0

    .line 26
    const/high16 v4, -0xf

    or-int/2addr v4, v2

    .line 41
    :goto_0
    return v4

    .line 27
    :cond_0
    if-ltz v3, :cond_2

    .line 29
    shr-int/lit8 v1, v3, 0xc

    .line 30
    .local v1, max:I
    if-ge v1, v4, :cond_1

    .line 31
    const/high16 v4, -0xe

    or-int/2addr v4, v1

    goto :goto_0

    .line 32
    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 33
    iput v4, p3, Lgnu/mapping/CallContext;->count:I

    .line 34
    iput v4, p3, Lgnu/mapping/CallContext;->where:I

    .line 35
    iput v5, p3, Lgnu/mapping/CallContext;->next:I

    .line 36
    iput-object p0, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iget v4, p1, Lgnu/expr/ModuleMethod;->selector:I

    iput v4, p3, Lgnu/mapping/CallContext;->pc:I

    move v4, v5

    .line 37
    goto :goto_0

    .line 39
    .end local v1           #max:I
    :cond_2
    iput v5, p3, Lgnu/mapping/CallContext;->where:I

    .line 40
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v5

    .line 41
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, p1, v0, p3}, Lgnu/expr/ModuleWithContext;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    goto :goto_0
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6
    .parameter "proc"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "ctx"

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 47
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v3

    .line 48
    .local v3, num:I
    and-int/lit16 v2, v3, 0xfff

    .line 49
    .local v2, min:I
    if-le v2, v4, :cond_0

    .line 50
    const/high16 v4, -0xf

    or-int/2addr v4, v2

    .line 67
    :goto_0
    return v4

    .line 51
    :cond_0
    if-ltz v3, :cond_2

    .line 53
    shr-int/lit8 v1, v3, 0xc

    .line 54
    .local v1, max:I
    if-ge v1, v4, :cond_1

    .line 55
    const/high16 v4, -0xe

    or-int/2addr v4, v1

    goto :goto_0

    .line 56
    :cond_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 57
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 58
    iput v4, p4, Lgnu/mapping/CallContext;->count:I

    .line 59
    const/16 v4, 0x21

    iput v4, p4, Lgnu/mapping/CallContext;->where:I

    .line 61
    iput v5, p4, Lgnu/mapping/CallContext;->next:I

    .line 62
    iput-object p0, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iget v4, p1, Lgnu/expr/ModuleMethod;->selector:I

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    move v4, v5

    .line 63
    goto :goto_0

    .line 65
    .end local v1           #max:I
    :cond_2
    iput v5, p4, Lgnu/mapping/CallContext;->where:I

    .line 66
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v5

    const/4 v4, 0x1

    aput-object p3, v0, v4

    .line 67
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, p1, v0, p4}, Lgnu/expr/ModuleWithContext;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    goto :goto_0
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6
    .parameter "proc"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "ctx"

    .prologue
    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 73
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v3

    .line 74
    .local v3, num:I
    and-int/lit16 v2, v3, 0xfff

    .line 75
    .local v2, min:I
    if-le v2, v4, :cond_0

    .line 76
    const/high16 v4, -0xf

    or-int/2addr v4, v2

    .line 95
    :goto_0
    return v4

    .line 77
    :cond_0
    if-ltz v3, :cond_2

    .line 79
    shr-int/lit8 v1, v3, 0xc

    .line 80
    .local v1, max:I
    if-ge v1, v4, :cond_1

    .line 81
    const/high16 v4, -0xe

    or-int/2addr v4, v1

    goto :goto_0

    .line 82
    :cond_1
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 83
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 84
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 85
    iput v4, p5, Lgnu/mapping/CallContext;->count:I

    .line 86
    const/16 v4, 0x321

    iput v4, p5, Lgnu/mapping/CallContext;->where:I

    .line 89
    iput v5, p5, Lgnu/mapping/CallContext;->next:I

    .line 90
    iput-object p0, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iget v4, p1, Lgnu/expr/ModuleMethod;->selector:I

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    move v4, v5

    .line 91
    goto :goto_0

    .line 93
    .end local v1           #max:I
    :cond_2
    iput v5, p5, Lgnu/mapping/CallContext;->where:I

    .line 94
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v5

    const/4 v4, 0x1

    aput-object p3, v0, v4

    const/4 v4, 0x2

    aput-object p4, v0, v4

    .line 95
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, p1, v0, p5}, Lgnu/expr/ModuleWithContext;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    goto :goto_0
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6
    .parameter "proc"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "ctx"

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 101
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v3

    .line 102
    .local v3, num:I
    and-int/lit16 v2, v3, 0xfff

    .line 103
    .local v2, min:I
    if-le v2, v4, :cond_0

    .line 104
    const/high16 v4, -0xf

    or-int/2addr v4, v2

    .line 125
    :goto_0
    return v4

    .line 105
    :cond_0
    if-ltz v3, :cond_2

    .line 107
    shr-int/lit8 v1, v3, 0xc

    .line 108
    .local v1, max:I
    if-ge v1, v4, :cond_1

    .line 109
    const/high16 v4, -0xe

    or-int/2addr v4, v1

    goto :goto_0

    .line 110
    :cond_1
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 111
    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 112
    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 113
    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    .line 114
    iput v4, p6, Lgnu/mapping/CallContext;->count:I

    .line 115
    const/16 v4, 0x4321

    iput v4, p6, Lgnu/mapping/CallContext;->where:I

    .line 119
    iput v5, p6, Lgnu/mapping/CallContext;->next:I

    .line 120
    iput-object p0, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iget v4, p1, Lgnu/expr/ModuleMethod;->selector:I

    iput v4, p6, Lgnu/mapping/CallContext;->pc:I

    move v4, v5

    .line 121
    goto :goto_0

    .line 123
    .end local v1           #max:I
    :cond_2
    iput v5, p6, Lgnu/mapping/CallContext;->where:I

    .line 124
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v5

    const/4 v4, 0x1

    aput-object p3, v0, v4

    const/4 v4, 0x2

    aput-object p4, v0, v4

    const/4 v4, 0x3

    aput-object p5, v0, v4

    .line 125
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, p1, v0, p6}, Lgnu/expr/ModuleWithContext;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    goto :goto_0
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 10
    .parameter "proc"
    .parameter "args"
    .parameter "ctx"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 130
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v9

    .line 131
    .local v9, num:I
    and-int/lit16 v8, v9, 0xfff

    .line 132
    .local v8, min:I
    array-length v0, p2

    if-ge v0, v8, :cond_0

    .line 133
    const/high16 v0, -0xf

    or-int/2addr v0, v8

    .line 159
    :goto_0
    return v0

    .line 134
    :cond_0
    if-ltz v9, :cond_1

    .line 136
    array-length v0, p2

    packed-switch v0, :pswitch_data_0

    .line 149
    shr-int/lit8 v7, v9, 0xc

    .line 150
    .local v7, max:I
    array-length v0, p2

    if-le v0, v7, :cond_1

    .line 151
    const/high16 v0, -0xe

    or-int/2addr v0, v7

    goto :goto_0

    .line 139
    .end local v7           #max:I
    :pswitch_0
    invoke-virtual {p0, p1, p3}, Lgnu/expr/ModuleWithContext;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0

    .line 141
    :pswitch_1
    aget-object v0, p2, v1

    invoke-virtual {p0, p1, v0, p3}, Lgnu/expr/ModuleWithContext;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0

    .line 143
    :pswitch_2
    aget-object v0, p2, v1

    aget-object v1, p2, v3

    invoke-virtual {p0, p1, v0, v1, p3}, Lgnu/expr/ModuleWithContext;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0

    .line 145
    :pswitch_3
    aget-object v2, p2, v1

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lgnu/expr/ModuleWithContext;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0

    .line 147
    :pswitch_4
    aget-object v2, p2, v1

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    const/4 v0, 0x3

    aget-object v5, p2, v0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lgnu/expr/ModuleWithContext;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0

    .line 154
    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 155
    array-length v0, p2

    iput v0, p3, Lgnu/mapping/CallContext;->count:I

    .line 156
    iput v1, p3, Lgnu/mapping/CallContext;->where:I

    .line 157
    iput v1, p3, Lgnu/mapping/CallContext;->next:I

    .line 158
    iput-object p0, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    iput v0, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    .line 159
    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
