.class public Lgnu/expr/GenericProc;
.super Lgnu/mapping/MethodProc;
.source "GenericProc.java"


# instance fields
.field count:I

.field maxArgs:I

.field protected methods:[Lgnu/mapping/MethodProc;

.field minArgs:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 18
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lgnu/expr/GenericProc;->setName(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static make([Ljava/lang/Object;)Lgnu/expr/GenericProc;
    .locals 1
    .parameter "args"

    .prologue
    .line 300
    new-instance v0, Lgnu/expr/GenericProc;

    invoke-direct {v0}, Lgnu/expr/GenericProc;-><init>()V

    .line 301
    .local v0, result:Lgnu/expr/GenericProc;
    invoke-virtual {v0, p0}, Lgnu/expr/GenericProc;->setProperties([Ljava/lang/Object;)V

    .line 302
    return-object v0
.end method

.method public static varargs makeWithoutSorting([Ljava/lang/Object;)Lgnu/expr/GenericProc;
    .locals 5
    .parameter "args"

    .prologue
    .line 307
    new-instance v3, Lgnu/expr/GenericProc;

    invoke-direct {v3}, Lgnu/expr/GenericProc;-><init>()V

    .line 309
    .local v3, result:Lgnu/expr/GenericProc;
    array-length v0, p0

    .line 310
    .local v0, alen:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 312
    aget-object v1, p0, v2

    .line 313
    .local v1, arg:Ljava/lang/Object;
    instance-of v4, v1, Lgnu/expr/Keyword;

    if-eqz v4, :cond_0

    .line 314
    check-cast v1, Lgnu/expr/Keyword;

    .end local v1           #arg:Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    aget-object v4, p0, v2

    invoke-virtual {v3, v1, v4}, Lgnu/expr/GenericProc;->setProperty(Lgnu/expr/Keyword;Ljava/lang/Object;)V

    .line 310
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 316
    .restart local v1       #arg:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lgnu/mapping/MethodProc;

    .end local v1           #arg:Ljava/lang/Object;
    invoke-virtual {v3, v1}, Lgnu/expr/GenericProc;->addAtEnd(Lgnu/mapping/MethodProc;)V

    goto :goto_1

    .line 319
    :cond_1
    return-object v3
.end method


# virtual methods
.method public declared-synchronized add(Lgnu/mapping/MethodProc;)V
    .locals 7
    .parameter "method"

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lgnu/expr/GenericProc;->count:I

    .line 76
    .local v2, oldCount:I
    invoke-virtual {p0, p1}, Lgnu/expr/GenericProc;->addAtEnd(Lgnu/mapping/MethodProc;)V

    .line 78
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 80
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v3, v3, v1

    invoke-static {p1, v3}, Lgnu/mapping/MethodProc;->mostSpecific(Lgnu/mapping/MethodProc;Lgnu/mapping/MethodProc;)Lgnu/mapping/MethodProc;

    move-result-object v0

    .line 81
    .local v0, best:Lgnu/mapping/MethodProc;
    if-ne v0, p1, :cond_1

    .line 83
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    iget-object v4, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    add-int/lit8 v5, v1, 0x1

    sub-int v6, v2, v1

    invoke-static {v3, v1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aput-object p1, v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .end local v0           #best:Lgnu/mapping/MethodProc;
    :cond_0
    monitor-exit p0

    return-void

    .line 78
    .restart local v0       #best:Lgnu/mapping/MethodProc;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v0           #best:Lgnu/mapping/MethodProc;
    .end local v1           #i:I
    .end local v2           #oldCount:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected declared-synchronized add([Lgnu/mapping/MethodProc;)V
    .locals 3
    .parameter "procs"

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    array-length v1, p1

    .line 44
    .local v1, n:I
    iget-object v2, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    if-nez v2, :cond_0

    .line 45
    new-array v2, v1, [Lgnu/mapping/MethodProc;

    iput-object v2, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    .line 46
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 47
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lgnu/expr/GenericProc;->add(Lgnu/mapping/MethodProc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_1
    monitor-exit p0

    return-void

    .line 43
    .end local v0           #i:I
    .end local v1           #n:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized addAtEnd(Lgnu/mapping/MethodProc;)V
    .locals 6
    .parameter "method"

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lgnu/expr/GenericProc;->count:I

    .line 53
    .local v2, oldCount:I
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    if-nez v3, :cond_5

    .line 54
    const/16 v3, 0x8

    new-array v3, v3, [Lgnu/mapping/MethodProc;

    iput-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    .line 62
    :cond_0
    :goto_0
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aput-object p1, v3, v2

    .line 64
    invoke-virtual {p1}, Lgnu/mapping/MethodProc;->minArgs()I

    move-result v1

    .line 65
    .local v1, n:I
    iget v3, p0, Lgnu/expr/GenericProc;->minArgs:I

    if-lt v1, v3, :cond_1

    iget v3, p0, Lgnu/expr/GenericProc;->count:I

    if-nez v3, :cond_2

    .line 66
    :cond_1
    iput v1, p0, Lgnu/expr/GenericProc;->minArgs:I

    .line 67
    :cond_2
    invoke-virtual {p1}, Lgnu/mapping/MethodProc;->maxArgs()I

    move-result v1

    .line 68
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    iget v3, p0, Lgnu/expr/GenericProc;->maxArgs:I

    if-le v1, v3, :cond_4

    .line 69
    :cond_3
    iput v1, p0, Lgnu/expr/GenericProc;->maxArgs:I

    .line 70
    :cond_4
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgnu/expr/GenericProc;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 55
    .end local v1           #n:I
    :cond_5
    :try_start_1
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 57
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [Lgnu/mapping/MethodProc;

    .line 58
    .local v0, copy:[Lgnu/mapping/MethodProc;
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iput-object v0, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    .end local v0           #copy:[Lgnu/mapping/MethodProc;
    .end local v2           #oldCount:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 111
    iget v4, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 112
    iget-object v4, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4, p1}, Lgnu/mapping/MethodProc;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 120
    :goto_0
    return-object v4

    .line 113
    :cond_0
    array-length v4, p1

    invoke-static {p0, v4}, Lgnu/expr/GenericProc;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 114
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 115
    .local v0, ctx:Lgnu/mapping/CallContext;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v4, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v1, v4, :cond_2

    .line 117
    iget-object v4, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v3, v4, v1

    .line 118
    .local v3, method:Lgnu/mapping/MethodProc;
    invoke-virtual {v3, p1, v0}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v2

    .line 119
    .local v2, m:I
    if-nez v2, :cond_1

    .line 120
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 115
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 122
    .end local v2           #m:I
    .end local v3           #method:Lgnu/mapping/MethodProc;
    :cond_2
    new-instance v4, Lgnu/mapping/WrongType;

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v6}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    throw v4
.end method

.method public getMethod(I)Lgnu/mapping/MethodProc;
    .locals 1
    .parameter "i"

    .prologue
    .line 33
    iget v0, p0, Lgnu/expr/GenericProc;->count:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getMethodCount()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lgnu/expr/GenericProc;->count:I

    return v0
.end method

.method public isApplicable([Lgnu/bytecode/Type;)I
    .locals 6
    .parameter "args"

    .prologue
    const/4 v5, 0x1

    .line 127
    const/4 v0, -0x1

    .line 128
    .local v0, best:I
    iget v1, p0, Lgnu/expr/GenericProc;->count:I

    .local v1, i:I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 130
    iget-object v4, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v2, v4, v1

    .line 131
    .local v2, method:Lgnu/mapping/MethodProc;
    invoke-virtual {v2, p1}, Lgnu/mapping/MethodProc;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v3

    .line 132
    .local v3, result:I
    if-ne v3, v5, :cond_1

    move v4, v5

    .line 137
    .end local v2           #method:Lgnu/mapping/MethodProc;
    .end local v3           #result:I
    :goto_1
    return v4

    .line 134
    .restart local v2       #method:Lgnu/mapping/MethodProc;
    .restart local v3       #result:I
    :cond_1
    if-nez v3, :cond_0

    .line 135
    const/4 v0, 0x0

    goto :goto_0

    .end local v2           #method:Lgnu/mapping/MethodProc;
    .end local v3           #result:I
    :cond_2
    move v4, v0

    .line 137
    goto :goto_1
.end method

.method public match0(Lgnu/mapping/CallContext;)I
    .locals 6
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    .line 142
    iget v3, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 143
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v3, v3, v5

    invoke-virtual {v3, p1}, Lgnu/mapping/MethodProc;->match0(Lgnu/mapping/CallContext;)I

    move-result v3

    .line 152
    :goto_0
    return v3

    .line 144
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v1, v3, :cond_2

    .line 146
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v2, v3, v1

    .line 147
    .local v2, method:Lgnu/mapping/MethodProc;
    invoke-virtual {v2, p1}, Lgnu/mapping/MethodProc;->match0(Lgnu/mapping/CallContext;)I

    move-result v0

    .line 148
    .local v0, code:I
    if-nez v0, :cond_1

    move v3, v5

    .line 149
    goto :goto_0

    .line 144
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 151
    .end local v0           #code:I
    .end local v2           #method:Lgnu/mapping/MethodProc;
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p1, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 152
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6
    .parameter "arg1"
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    .line 157
    iget v3, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 158
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v3, v3, v5

    invoke-virtual {v3, p1, p2}, Lgnu/mapping/MethodProc;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    .line 167
    :goto_0
    return v3

    .line 159
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v1, v3, :cond_2

    .line 161
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v2, v3, v1

    .line 162
    .local v2, method:Lgnu/mapping/MethodProc;
    invoke-virtual {v2, p1, p2}, Lgnu/mapping/MethodProc;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 163
    .local v0, code:I
    if-nez v0, :cond_1

    move v3, v5

    .line 164
    goto :goto_0

    .line 159
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 166
    .end local v0           #code:I
    .end local v2           #method:Lgnu/mapping/MethodProc;
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 167
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6
    .parameter "arg1"
    .parameter "arg2"
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    .line 172
    iget v3, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 173
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v3, v3, v5

    invoke-virtual {v3, p1, p2, p3}, Lgnu/mapping/MethodProc;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    .line 182
    :goto_0
    return v3

    .line 174
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v1, v3, :cond_2

    .line 176
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v2, v3, v1

    .line 177
    .local v2, method:Lgnu/mapping/MethodProc;
    invoke-virtual {v2, p1, p2, p3}, Lgnu/mapping/MethodProc;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 178
    .local v0, code:I
    if-nez v0, :cond_1

    move v3, v5

    .line 179
    goto :goto_0

    .line 174
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 181
    .end local v0           #code:I
    .end local v2           #method:Lgnu/mapping/MethodProc;
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 182
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    .line 187
    iget v3, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 188
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v3, v3, v5

    invoke-virtual {v3, p1, p2, p3, p4}, Lgnu/mapping/MethodProc;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    .line 197
    :goto_0
    return v3

    .line 189
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v1, v3, :cond_2

    .line 191
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v2, v3, v1

    .line 192
    .local v2, method:Lgnu/mapping/MethodProc;
    invoke-virtual {v2, p1, p2, p3, p4}, Lgnu/mapping/MethodProc;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 193
    .local v0, code:I
    if-nez v0, :cond_1

    move v3, v5

    .line 194
    goto :goto_0

    .line 189
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 196
    .end local v0           #code:I
    .end local v2           #method:Lgnu/mapping/MethodProc;
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 197
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 9
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "ctx"

    .prologue
    const/4 v8, 0x0

    .line 203
    iget v1, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 204
    iget-object v1, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v0, v1, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lgnu/mapping/MethodProc;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    .line 213
    :goto_0
    return v1

    .line 205
    :cond_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    iget v1, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v7, v1, :cond_2

    .line 207
    iget-object v1, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v0, v1, v7

    .local v0, method:Lgnu/mapping/MethodProc;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 208
    invoke-virtual/range {v0 .. v5}, Lgnu/mapping/MethodProc;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    .line 209
    .local v6, code:I
    if-nez v6, :cond_1

    move v1, v8

    .line 210
    goto :goto_0

    .line 205
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 212
    .end local v0           #method:Lgnu/mapping/MethodProc;
    .end local v6           #code:I
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 213
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 19
    .parameter "args"
    .parameter "ctx"

    .prologue
    .line 218
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/GenericProc;->count:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v17

    .line 270
    :goto_0
    return v17

    .line 220
    :cond_0
    move-object/from16 v0, p1

    array-length v0, v0

    move v4, v0

    .line 221
    .local v4, alen:I
    new-array v7, v4, [Lgnu/bytecode/Type;

    .line 222
    .local v7, atypes:[Lgnu/bytecode/Type;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v14

    .line 226
    .local v14, language:Lgnu/expr/Language;
    const/4 v13, 0x0

    .local v13, j:I
    :goto_1
    if-ge v13, v4, :cond_3

    .line 228
    aget-object v5, p1, v13

    .line 230
    .local v5, arg:Ljava/lang/Object;
    if-nez v5, :cond_1

    .line 231
    sget-object v6, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    .line 240
    .local v6, atype:Lgnu/bytecode/Type;
    :goto_2
    aput-object v6, v7, v13

    .line 226
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 234
    .end local v6           #atype:Lgnu/bytecode/Type;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 235
    .local v3, aclass:Ljava/lang/Class;
    if-eqz v14, :cond_2

    .line 236
    invoke-virtual {v14, v3}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v6

    .restart local v6       #atype:Lgnu/bytecode/Type;
    goto :goto_2

    .line 238
    .end local v6           #atype:Lgnu/bytecode/Type;
    :cond_2
    invoke-static {v3}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v6

    .restart local v6       #atype:Lgnu/bytecode/Type;
    goto :goto_2

    .line 242
    .end local v3           #aclass:Ljava/lang/Class;
    .end local v5           #arg:Ljava/lang/Object;
    .end local v6           #atype:Lgnu/bytecode/Type;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/GenericProc;->count:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object v10, v0

    .line 243
    .local v10, codes:[I
    const/4 v11, 0x0

    .line 244
    .local v11, defCount:I
    const/4 v15, 0x0

    .line 245
    .local v15, maybeCount:I
    const/4 v8, -0x1

    .line 246
    .local v8, bestIndex:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/GenericProc;->count:I

    move/from16 v17, v0

    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Lgnu/mapping/MethodProc;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v9

    .line 249
    .local v9, code:I
    if-nez v11, :cond_4

    if-ltz v9, :cond_4

    .line 250
    move v8, v12

    .line 251
    :cond_4
    if-lez v9, :cond_6

    .line 252
    add-int/lit8 v11, v11, 0x1

    .line 255
    :cond_5
    :goto_4
    aput v9, v10, v12

    .line 246
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 253
    :cond_6
    if-nez v9, :cond_5

    .line 254
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 257
    .end local v9           #code:I
    :cond_7
    const/16 v17, 0x1

    move v0, v11

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    if-nez v11, :cond_9

    const/16 v17, 0x1

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 258
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v17

    goto/16 :goto_0

    .line 259
    :cond_9
    const/4 v12, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/GenericProc;->count:I

    move/from16 v17, v0

    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_c

    .line 261
    aget v9, v10, v12

    .line 262
    .restart local v9       #code:I
    if-ltz v9, :cond_a

    if-nez v9, :cond_b

    if-lez v11, :cond_b

    .line 259
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 264
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    move-object/from16 v17, v0

    aget-object v16, v17, v12

    .line 265
    .local v16, method:Lgnu/mapping/MethodProc;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v9

    .line 266
    if-nez v9, :cond_a

    .line 267
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 269
    .end local v9           #code:I
    .end local v16           #method:Lgnu/mapping/MethodProc;
    :cond_c
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    iput-object v0, v1, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 270
    const/16 v17, -0x1

    goto/16 :goto_0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lgnu/expr/GenericProc;->minArgs:I

    iget v1, p0, Lgnu/expr/GenericProc;->maxArgs:I

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    return v0
.end method

.method public final setProperties([Ljava/lang/Object;)V
    .locals 4
    .parameter "args"

    .prologue
    .line 286
    array-length v0, p1

    .line 287
    .local v0, alen:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 289
    aget-object v1, p1, v2

    .line 290
    .local v1, arg:Ljava/lang/Object;
    instance-of v3, v1, Lgnu/expr/Keyword;

    if-eqz v3, :cond_0

    .line 291
    check-cast v1, Lgnu/expr/Keyword;

    .end local v1           #arg:Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    aget-object v3, p1, v2

    invoke-virtual {p0, v1, v3}, Lgnu/expr/GenericProc;->setProperty(Lgnu/expr/Keyword;Ljava/lang/Object;)V

    .line 287
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 293
    .restart local v1       #arg:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lgnu/mapping/MethodProc;

    .end local v1           #arg:Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lgnu/expr/GenericProc;->add(Lgnu/mapping/MethodProc;)V

    goto :goto_1

    .line 295
    :cond_1
    return-void
.end method

.method public setProperty(Lgnu/expr/Keyword;Ljava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 275
    invoke-virtual {p1}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, name:Ljava/lang/String;
    const-string v1, "name"

    if-ne v0, v1, :cond_0

    .line 277
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/expr/GenericProc;->setName(Ljava/lang/String;)V

    .line 282
    .end local p2
    :goto_0
    return-void

    .line 278
    .restart local p2
    :cond_0
    const-string v1, "method"

    if-ne v0, v1, :cond_1

    .line 279
    check-cast p2, Lgnu/mapping/MethodProc;

    .end local p2
    invoke-virtual {p0, p2}, Lgnu/expr/GenericProc;->add(Lgnu/mapping/MethodProc;)V

    goto :goto_0

    .line 281
    .restart local p2
    :cond_1
    invoke-virtual {p1}, Lgnu/expr/Keyword;->asSymbol()Lgnu/mapping/Symbol;

    move-result-object v1

    invoke-super {p0, v1, p2}, Lgnu/mapping/MethodProc;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
